//package com.arc.food.controller.file;
//
//import com.arc.food.model.vo.ResponseVo;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.multipart.MultipartFile;
//import org.springframework.web.multipart.MultipartHttpServletRequest;
//
//import javax.imageio.ImageIO;
//import javax.servlet.http.HttpServletResponse;
//import java.awt.image.BufferedImage;
//import java.io.File;
//import java.io.IOException;
//import java.util.List;
//
//@Controller
//@RequestMapping(name = "/file", method = RequestMethod.GET)
//public class File1Controller {
//
//
//    @RequestMapping("testAjaxUpload")
//
//    public void testUpload(MultipartHttpServletRequest request, HttpServletResponse response) {
//        //使用restful风格，返回值
//        ResponseVo result = new ResponseVo();
//        //项目的所在地，加上定义的uploadImg文件
//        //1、获取请求中的数据，并转换为文件
//        // 2、文件格式以及有效性判断
//        // 3、文件保存 3.1 文件夹确定，文件名称处理【文件重名如何处理？ a更新 （缺省做法）b追加版本号记录一下（如果有额外参数指定则采取重命名追加版本号来保存）】
//        // 4、记录文件相关信息到数据库
//        // 5、返回结果给前端， a 操作状态是否成功 b 文件的路径
//
//        String saveBeginpath = request.getSession().getServletContext().getRealPath("/") + "img";
//        File uploadPath = new File(saveBeginpath);
//        //获取input中name值，目前是获取多张图片
//        List<MultipartFile> file = request.getFiles("fileId"); // 获取图片
//
//        // 判断上传文件的保存目录是否存在
//        if (!uploadPath.exists() && !uploadPath.isDirectory()) {
//            // 创建目录
//            uploadPath.mkdir();
//        }
//
//
//        String imgId = null;
//        //遍历图片
//        for (MultipartFile picture : file) {
//            //iamge的实体类，setPath将“\\\\”都转化“\”
//            //日期加上注解，方便在前台获取格式
//            //@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
////            ImageDTO image = new ImageDTO();
//            //获取类型，只能获取传入的简单类型,文件的后缀
//            String type = picture.getContentType();
//            //如果type中不包含image，代表不是图片格式
//            if (type.indexOf("image") != -1) {
//                //是图片
//                //判断是否是图片格式
//                try {
//                    //只有图片才能转义
//                    BufferedImage image1 = ImageIO.read(picture.getInputStream());
//                    if (image1 != null) {// 如果image=null 表示上传的不是图片格式
//                        System.out.println(image1.getWidth());// 获取图片宽度，单位px
//                        System.out.println(image1.getHeight());// 获取图片高度，单位px
//                    } else {
//                        break;
//                    }
//                } catch (IOException e) {
//                    e.printStackTrace();
//                }
//            } else {
//                //不是图片
//                break;
//            }
//
//            //默认uid =1
//            //判断session中是否有值
//            if (request.getSession().getAttribute("user_id") != null) {
////                image.setUid((Long) (request.getSession().getAttribute("user_id")));
//            } else {
////                image.setUid((long) 1);
//            }
//            //将图片重命名为新格式
//            String img_now_name = null;
//            //保存路径
//            String savepath = null;
//            //若图片不为空
//            if (!picture.isEmpty()) {
//                //获取项目唯一id
//                //将imgId存放
//                //上传时的图片名称（微信图片_20170823142510.jpg）
//                //获取" . "的位置
////                int begin = image.getImg_org_name().lastIndexOf(".") + 1;
//                //读取后缀（jpg）
//                //将imgId于图片后缀重新组成项目中的新名称
//                //图片在项目中的相对路径
//                savepath = saveBeginpath + File.separator + img_now_name;
//
//                try {
//                    //Spring的将文件上传到服务器上
//                    picture.transferTo(new File(savepath));
//
//                } catch (IllegalStateException e) {
//                    e.printStackTrace();
//                } catch (IOException e) {
//                    e.printStackTrace();
//                }
//                //保存到数据库中
//                //此处应返回imgId的List
//                //建立ImageResult返回imgid的list集合
//            }
//        }
//
//    }
//
//
//
//
//    public  static  String cutLine(String str) {
//        return  str.substring(str.indexOf('-') + 1, str.length()).trim();
//    }
//
//}
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
