package com.arc.server.system.controller;

//对于正在复制代码的你，Control+O导入命名包时，以下应该是你喜欢的：

import com.arc.model.domain.common.SystemFile;
import com.arc.model.vo.ResponseVo;
import com.arc.server.system.service.FileService;
import com.sun.xml.internal.messaging.saaj.packaging.mime.internet.MimeUtility;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.net.BindException;
import java.net.URLEncoder;
import java.util.Map;

/**
 * 控制器
 * 作用：
 * 接收参数，访问一个url，带一些参数
 * 处理业务【与数据库交互，或者做一些判断】
 * 返回数据【1）返回一个html页面 2）返回JSON的字符串】
 */

//@Slf4j 等效 private Logger logger = LoggerFactory.getLogger(FileController.class);
@Controller
@RequestMapping("/files")
public class FileController {

    private Logger log = LoggerFactory.getLogger(FileController.class);

    @Autowired
    private FileService fileService;


    //------------------------------------------------------------------------------------------------
    //                              Upload file method start.
    //------------------------------------------------------------------------------------------------

    // 注意：以下上传和下载方法未必完全正确，不同浏览器效果不同，建议不要使用IE

    /**
     * 简单的文件上传
     *
     * @param request
     * @param response
     * @param errors
     * @return
     * @throws Exception
     * @author:yechao
     * @createTime:2018/10/04
     */
    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView onSubmit(HttpServletRequest request, HttpServletResponse response, BindException errors) throws Exception {
        //上传文件处理器
        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
        //文件对象
        MultipartFile file = (MultipartFile) multipartRequest.getFile("file");

        // 获得文件名(全路径)
        String realFileName = file.getOriginalFilename();
        realFileName = encodeFilename(realFileName, request);
       log.debug("获得文件名{}", realFileName);

        //从表单域中获取文件对象的详细,如：文件名称等等
//        String name = multipartRequest.getParameter("name");
//        log.debug("name{}" , name);

        // 获取当前web服务器项目路径
        String ctxPath = request.getSession().getServletContext().getRealPath("/") + "upload" + File.separator;
        log.debug("ctxPath {} " , ctxPath);//C:\Users\X\AppData\Local\Temp\tomcat-docbase.3453079415604443015.9001\pload\

        ctxPath = File.separator+"upload"+File.separator;
        // 创建文件夹
        File dirPath = new File(ctxPath);
        if (!dirPath.exists()) {
            dirPath.mkdir();
        }
        //创建文件
        File uploadFile = new File(ctxPath + realFileName);

        //Copy文件
        FileCopyUtils.copy(file.getBytes(), uploadFile);

        return new ModelAndView("success");
    }

    /**
     * 批量上传文件
     *
     * @param request
     * @param response
     * @param errors
     * @return
     * @throws Exception
     * @author:qiuchen
     * @createTime:2012-6-19
     */
    @RequestMapping(value = "/upload2", method = RequestMethod.POST)
    public ModelAndView onSubmit2(HttpServletRequest request, HttpServletResponse response, BindException errors) throws Exception {
        //文件处理器
        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
        //文件列表
        Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
        //获取服务器上传文件夹地址
        String ctxPath = request.getSession().getServletContext().getRealPath("/") + "\\" + "fileupload\\";
        //创建文件夹
        File file = new File(ctxPath);
        if (!file.exists()) {
            file.mkdir();
        }

        String fileName = null;
        for (Map.Entry<String, MultipartFile> entity : fileMap.entrySet()) {
            //单个文件
            MultipartFile mf = entity.getValue();
            //文件名
            fileName = mf.getOriginalFilename();
            //创建文件
            File uploadFile = new File(ctxPath + fileName);
            //copy从内存中复制到磁盘上
            FileCopyUtils.copy(mf.getBytes(), uploadFile);
        }
        return new ModelAndView("success");
    }

    /**
     * 设置下载文件中文件的名称
     *
     * @param filename
     * @param request
     * @return
     */
    public static String encodeFilename(String filename, HttpServletRequest request) {
        /**
         * 获取客户端浏览器和操作系统信息
         * 在IE浏览器中得到的是： User-Agent=Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Maxthon; Alexa Toolbar)
         * 在Firefox中得到的是：User-Agent=Mozilla/5.0 (Windows; U; Windows NT 5.1;zh-CN; rv:1.7.10) Gecko/20050717 Firefox/1.0.6
         */
        String agent = request.getHeader("USER-AGENT");
        try {
            if ((agent != null) && (-1 != agent.indexOf("MSIE"))) { // IE浏览器
                String newFileName = URLEncoder.encode(filename, "UTF-8");
                newFileName = StringUtils.replace(newFileName, "+", "%20");//而%20是地址的空格符，因为地址不能包含空格。它是序列化后的空格符
                if (newFileName.length() > 150) {
                    newFileName = new String(filename.getBytes("GB2312"), "ISO8859-1");
                    newFileName = StringUtils.replace(newFileName, " ", "%20");
                }
                return newFileName;
            }
            if ((agent != null) && (-1 != agent.indexOf("Mozilla"))) // 火狐浏览器
                return MimeUtility.encodeText(filename, "UTF-8", "B");
            return filename;
        } catch (Exception ex) {
            return filename;
        }
    }

    /**
     * 文件下载
     *
     * @param fileName
     * @param request
     * @param response
     * @return
     * @throws Exception
     * @author:qiuchen
     * @createTime:2012-6-19
     */
    @RequestMapping("/download/{fileName}")
    public ModelAndView download(@PathVariable("fileName") String fileName, HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("UTF-8");

        BufferedInputStream bis = null;  //从文件中读取内容
        BufferedOutputStream bos = null; //向文件中写入内容

        //获得服务器上存放下载资源的地址
        String ctxPath = request.getSession().getServletContext().getRealPath("/") + "\\" + "fileupload\\";
        //获得下载文件全路径
        String downLoadPath = ctxPath + fileName;
        System.out.println(downLoadPath);
        //如果文件不存在,退出
        File file = new File(downLoadPath);
        if (!file.exists()) {
            return null;
        }
        try {
            //获得文件大小
            long fileLength = new File(downLoadPath).length();
            System.out.println(new String(fileName.getBytes("utf-8"), "ISO-8859-1"));
            response.setContentType("text/html;charset=utf-8"); //设置相应类型和编码
            response.setHeader("Content-disposition", "attachment;filename=" + new String(fileName.getBytes("utf-8"), "ISO-8859-1"));
            response.setHeader("Content-Length", String.valueOf(fileLength));

            bis = new BufferedInputStream(new FileInputStream(downLoadPath));
            bos = new BufferedOutputStream(response.getOutputStream());
            //定义文件读取缓冲区
            byte[] buff = new byte[2048];
            int bytesRead;
            //把下载资源写入到输出流
            while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {
                bos.write(buff, 0, bytesRead);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (bis != null)
                bis.close();
            if (bos != null)
                bos.close();
        }
        return null;
    }


    //------------------------------------------------Upload file method  end !--------------------------------------------


    //------------------------------------------------------------------------------------------------
    //              关于file表的CRUD
    //------------------------------------------------------------------------------------------------

    /**
     * http://localhost:80/files
     * 注意请求是GET方式的
     * 查询所有的数据库中所有的file数据
     *
     * @return
     */
    @RequestMapping(value = "", method = RequestMethod.GET)
    @ResponseBody
    public ResponseVo list() {
        return ResponseVo.success(fileService.list());
    }

    /**
     * http://localhost:80/files
     * 注意请求是POST方式的
     * 保存
     *
     * @param file
     * @return
     */
    @RequestMapping(value = "", method = RequestMethod.POST)
    @ResponseBody  //用了这个注解返回的是json数据
    public ResponseVo save(@RequestBody SystemFile file) {
        if (file == null || file.getName() == null) {
            return ResponseVo.failure(1000, "必要属性未传");
        }
        log.debug("参数 {}", file);
        return ResponseVo.success(fileService.save(file));
    }

    /**
     * http://localhost:80/files/delete//1
     * 表示删除id为1的数据
     * 删除
     *
     * @param id
     * @return
     */
    @RequestMapping(path = "/delete/{id}", method = RequestMethod.GET)
    @ResponseBody
    public Object delete(@PathVariable("id") Long id) {
        log.debug("删除id为{}的数据", id);
        return ResponseVo.success(fileService.delete(id));
    }


    /**
     * http://localhost:80/files/update
     * 注意 1请求是POST方式的 2请求类型为Content-Type:application/json
     * 对于必要参数没有传则判断了一下会返回错误代码10000
     * 更新
     *
     * @param file
     * @return
     */
    @RequestMapping(path = "/update", method = {RequestMethod.PUT, RequestMethod.POST})
    @ResponseBody
    public Object update(@RequestBody SystemFile file) {
        if (file == null || file.getId() == null) {
            return ResponseVo.failure(1000, "必要属性未传");
        }
        return ResponseVo.success(fileService.update(file));
    }

    /**
     * http://localhost:80/files/get/latest
     * 注意请求是GET方式的无参数的
     * 获取最新的一条数据
     *
     * @return
     */
    @RequestMapping(value = "/get/latest", method = RequestMethod.GET)
    @ResponseBody
    public Object getLatest() {
        return ResponseVo.success(fileService.getLatest());
    }

    /**
     * http://localhost:80/files/get/id？id=2
     * 注意请求是GET方式的,例如文件id为：2
     * 通过id获取数据
     *
     * @param id
     * @return
     */
    @RequestMapping(path = "/get/id", method = RequestMethod.GET)
    @ResponseBody
    public Object get(@RequestParam(name = "id", required = true) Long id) {
        return ResponseVo.success(fileService.get(id));
    }

    /**
     * http://localhost:80/files/get/filename？filename=abc.txt
     * 注意请求是GET方式的,例如文件名称为：abc.txt
     * 通过filename获取数据
     *
     * @param filename
     * @return
     */
    @RequestMapping(value = "/get/filename", method = RequestMethod.GET)
    @ResponseBody
    public Object getByfilename(@RequestParam(name = "filename", required = true) String filename) {
        return ResponseVo.success(fileService.getByFilename(filename));
    }


}
