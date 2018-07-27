package com.del.wechat.controller;

import com.del.wechat.utils.ValidationUtil;
import com.del.wechat.utils.WeixinUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Arrays;
import java.util.Date;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;

//用于校验token的controller----以及--获取用户信息，图林交互等
@Controller
@Slf4j//注解在类上；为类提供一个 属性名为log 的 log4j 日志对象
//@Log4j
public class WeixinController {
//    private static final Logger logger = LoggerFactory.getLogger(WeixinController.class);

    //注入
//    @Autowired
//    private IUserService userService;
//    @Autowired
//    private IAnswerService answerService;

    /**
     * 微信服务器对我验签
     *
     * @param timestamp 时间
     * @param signature 签名
     * @param nonce     现时
     * @param echostr   回波
     * @return 返回处理过的串
     */
    @RequestMapping(value = "wx", method = RequestMethod.GET)
    @ResponseBody
    public String Signature(
            String timestamp,
            String nonce,
            String signature,
            String echostr) {
        //验证的时候是GET请求，消息的时候就post请求
        //一旦那初次验证成功后，就不会再次校验了
        // 1）将token、timestamp、nonce三个参数进行字典序排序
        // private static final String TOKEN = "mayher";

        log.info("获得时间戳信息timestamp:{}", timestamp);
        log.info("获得微信签名的加密字符串signature:{}", signature);
        log.info("获得随机数nonce:{}", nonce);
        log.info("获得随机字符串echostr:{}", echostr);


        String[] arr = {WeixinUtil.TOKEN, timestamp, nonce};
        Arrays.sort(arr);//排序
        // 2）将三个参数字符串拼接成一个字符串进行sha1加密
        StringBuilder sb = new StringBuilder();
        for (String tem : arr) {
            sb.append(tem);
        }
        //加密
        String sha1 = ValidationUtil.SHA1(sb.toString());
        // 3）开发者获得加密后的字符串可与signature对比，标识该请求来源于微信
        if (sha1.equals(signature)) {
            return echostr;
        } else {
            log.error("------------>ERROR");
            log.error("sha1 by local:{}", sha1);
            log.error("signature:{}", signature);
            return new Date().toString();
        }
    }


    //-------------------------------------------------------------------------------------------对于按钮处理的核心
    //jxb对--xml，---json的解析
//    @RequestMapping(value = "wx", method = RequestMethod.POST)
//    @ResponseBody
//    public XmlMessageEntity handleMessage(@RequestBody XmlMessageEntity xmlMessageEntity) {
//        //如果请求 在本地存在---请求正在处理--就不用处理此次请求
//        if (RequestFilter.isDuplicate(xmlMessageEntity)) {
//            System.out.println(RequestFilter.isDuplicate(xmlMessageEntity));
//            System.out.println("重复请求！！！");
//            return new XmlMessageEntity();
//        } else {
//            System.out.println("第一次啊");
//            System.out.println("###########################################################");
//            System.out.println(xmlMessageEntity);
//            System.out.println("###########################################################");
//            System.out.println(RequestFilter.isDuplicate(xmlMessageEntity));
//            return userService.getReply(xmlMessageEntity);//由service去完成
//        }
//    }

/*

    //回复页面跳转
    @RequestMapping("/reply")
    public String replay() {
        return "reply";
    }

    //list 数据用
    @RequestMapping("/reply/list")
    @ResponseBody
    public PageResult list(AnswerQueryObject qo) {
        PageResult result = answerService.queryPage(qo);
        return result;
    }

    //list
    @RequestMapping("/reply/save")
    @ResponseBody
    public AjaxResult save(Answer answer) {
        AjaxResult result = null;
        try {
            answerService.save(answer);//保存
            result = new AjaxResult(true, "保存成功");
            System.out.println(result);
        } catch (Exception e) {
            e.printStackTrace();
            result = new AjaxResult("保存失败,请联系管理员!");
        }
        return result;
    }

    @RequestMapping("/reply/delete")
    @ResponseBody
    public AjaxResult delete(Long id) {
        AjaxResult result = null;
        try {
            answerService.delete(id);//保存
            result = new AjaxResult(true, "删除成功");
            System.out.println(result);
        } catch (Exception e) {
            e.printStackTrace();
            result = new AjaxResult("操作失败,请联系管理员!");
        }
        return result;
    }

    @RequestMapping("/reply/update")
    @ResponseBody
    public AjaxResult update(Answer reply) {
        AjaxResult result = null;
        try {
            answerService.update(reply);//保存
            result = new AjaxResult(true, "删除成功");
            System.out.println(result);
        } catch (Exception e) {
            e.printStackTrace();
            result = new AjaxResult("操作失败,请联系管理员!");
        }
        return result;
    }

    //-----------------------------------------------------------------------------
//页面跳转---index
    @RequestMapping("/wx/index")
    public String index(String code) {
        System.out.println(code);
        System.out.println(code);
        System.out.println(code);
        System.out.println(code);
        //通过code获取票据



        return "redirect:/test/index.html";
    }

    @RequestMapping("/wx/User")
    public String User() {
        return "User";
    }

    //回复页面跳转
    @RequestMapping("/wx/back")
    public String tset() {
        return "redirect:/test/login.jsp";
    }

    //回复页面跳转--login
    @RequestMapping("/wx/login")
    public String login() {
        return "redirect:/test/login.html";
    }

    //页面跳转---pay
    @RequestMapping("/wx/pay")
    public String pay() {
        return "redirect:/test/pay.html";
    }

    //页面跳转---wx/userCenter
    @RequestMapping("wx/userCenter")
    public String userCenter() {
        return "redirect:/test/userCenter.html";
    }
*/


}


