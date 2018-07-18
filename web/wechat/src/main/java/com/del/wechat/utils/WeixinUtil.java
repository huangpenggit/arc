package com.del.wechat.utils;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.del.model.wechat.Button;
import com.del.model.wechat.CommonButton;
import com.del.model.wechat.ComplexButton;
import com.del.model.wechat.Menu;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class WeixinUtil extends StaticURL {

    /**
     * 获取凭证  token ,有缓存功能
     *
     * @return
     */
    public static String getAccessToken() {
        //如果accessToken为null，，，或者超时---则必须去获取
        if (accessToken == null || System.currentTimeMillis() > expiresTime) {
//            String result = HttpUtil.get(GET_ACCESSTOKEN_URL.replace("APPID", APPID).replace("APPSECRET", APPSECRET));
            String result = HttpUtil.get(StaticURL.getAccessTokenURL());
            System.out.println(result);
            JSONObject jsonObject = JSON.parseObject(result);

            accessToken = jsonObject.getString("access_token");
            Long expires_in = jsonObject.getLong("expires_in");

            //确定过期时间（当前时间提前一分钟）
            expiresTime = System.currentTimeMillis() + (expires_in - 60) * 1000;

        }
        return accessToken;
    }

    /**
     * 创建菜单
     *
     * @param jsonstr
     *///创建菜单
    public static void createMenu(String jsonstr) {
        String result = HttpUtil.post(CREATE_MENU_URL.replace("ACCESS_TOKEN", getAccessToken()), jsonstr);
        System.out.println(result);
    }
 /*  public static void createMenu(Menu menu) {
       String jsonStr = (String) JSON.toJSON(menu);     //把裁断对象解析为json字符串
       String result = HttpUtil.post(CREATE_MENU_URL.replace("ACCESS_TOKEN", getAccessToken()), jsonStr);
        System.out.println(result);
    }
*/


    /**
     * 创建1个模板消息
     *
     * @param templateData
     */// 创建1个模板消息
    public static void sendTempleMsg(String templateData) {
        String result = HttpUtil.post(SEND_TEMPLE_URL.replace("ACCESS_TOKEN", getAccessToken()), templateData);
        System.out.println(result);

    }

    /**
     * 格式化毫秒数工具
     * 返回String
     *
     * @param millisecond
     */
    public String formatteMillisecond(Long millisecond) {
//    long now = System.currentTimeMillis();
        DateFormat formatter = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(millisecond);      //对canlendar 对象设置毫秒时间
        System.out.println(millisecond + " = " + formatter.format(calendar.getTime()));//打印测试
        return formatter.format(calendar.getTime());
    }

    public static String getTime() {
        String pattern = "yyyy年MM月dd日";
        long now = System.currentTimeMillis();
        DateFormat formatter = new SimpleDateFormat(pattern);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(now);      //对canlendar 对象设置毫秒时间
        System.out.println(now + " = " + formatter.format(calendar.getTime()));//打印测试
        return formatter.format(calendar.getTime());
    }


//-------------------------------------------------------------------menu

    /**
     * 创建菜单
     *
     * @param menu 菜单实例
     * @return 0表示成功，其他值表示失败
     */
    public static int createMenu(Menu menu) {
        int result = 0;
        // 拼装创建菜单的url
        String url = CREATE_MENU_URL.replace("ACCESS_TOKEN", getAccessToken());
        // 将菜单对象转换成json字符串
        String jsonMenu = JSON.toJSONString(menu);//把裁断对象解析为json字符串
// 调用接口创建菜单
        String postResult = HttpUtil.post(url, jsonMenu);
        JSONObject postJsonResult = JSON.parseObject(postResult);
        if (null != postJsonResult) {
            if (0 != (int)postJsonResult.get("errcode")) {
                result = (int) postJsonResult.get("errcode");
            }
        }
        return result;
    }


//发送交易之后的信息--------------------------------------------谁-----花了多少钱----买了什么------什么时间
    /**
     *
     * @param openId
     * @param modelCode
     * @param customerNmae
     * @param costMoney
     * @param foodName
     * @param HTTP_URL
     * 时间后台自动生成了
     */
    public static void sendMsg(String openId,String modelCode,String customerNmae, BigDecimal costMoney, String foodName, String HTTP_URL) {
        if (HTTP_URL == null) {
            HTTP_URL = "http://huaban.com";           //点击之后跳转的url}
        }
        //设置小数位数，第一个变量是小数位数，第二个变量是取舍方法(四舍五入)
        BigDecimal bigDecimal = costMoney.setScale(2, BigDecimal.ROUND_HALF_UP);
        StringBuilder sb = new StringBuilder(1000);
        sb.append("  {\n" +
                "           \"touser\":\"").append(openId).append("\",\n" +
                "           \"template_id\":\"").append(modelCode).append("\",\n" +
                "           \"url\":\"").append(HTTP_URL).append("\",\n" +
                "                \"data\":{\n" +
                "                   \"first\": {\n" +
                "                       \"value\":\"尊敬的").append(customerNmae).append("，恭喜您购买成功！\",\n" +
                "                       \"color\":\"#173177\"\n" +
                "                   },\n" +
                "                   \"keyword1\":{\n" +
                "                       \"value\":\"").append(foodName).append("\",\n" +
                "                       \"color\":\"#FF0000\"\n" +
                "                   },\n" +
                "                   \"keyword2\": {\n" +
                "                       \"value\":\"").append(bigDecimal).append("元\",\n" +
                "                       \"color\":\"#0000FF\"\n" +
                "                   },\n" +
                "                   \"keyword3\": {\n" +
                "                       \"value\":\"").append(getTime()).append("\",\n" +
                "                       \"color\":\"#173177\"\n" +
                "                   },\n" +
                "                   \"remark\":{\n" +
                "                       \"value\":\"欢迎再次光临！\",\n" +
                "                       \"color\":\"#008000\"\n" +
                "                   }\n" +
                "           }\n" +
                "       }\n" );
        String js = sb.toString();
        System.out.println("***************************************");
        System.out.println(js);
        System.out.println("***************************************");
        sendTempleMsg(js);                                                          //--------------------------------在这里调用方法发的请求
    }
    //--------------------------------
    //主方法测试于用
    public static void main(String[] args) {
        System.out.println(StaticURL.getAccessTokenURL());


/*

        WeixinUtil.sendMsg("o42BSw3Av7ArFIxSNtkJXMXOb6AE","u-TKxpil8_10kyLpCZYwQL5dHo_ZfUfNC0pRKroRsAI","X先生", new BigDecimal("9999999999999.99"), "熊猫", null);
        //o42BSw2-Q0ugpuTt0qkA6bnDpT74
        //o42BSw3Av7ArFIxSNtkJXMXOb6AE          ------自己的

        //---------------------------------------------

        if (null != getAccessToken()) {//有accessToken的话
            int result = WeixinUtil.createMenu(getMenu());   // ****************************调用接口创建菜单
            // 判断菜单创建结果
            if (0 == result) {
                System.out.println("菜单创建成功！");
            } else {
                System.out.println("菜单创建失败，错误码：" + result);
            }
        }
*/



    }

    //----------------------------------------------------组装菜单menu  数据
    private static Menu getMenu() {
        //type---view/click
        Menu menu = new Menu();
        CommonButton btn11 = new CommonButton();
        btn11.setName("购物");
        btn11.setType("view");
        btn11.setUrl("http://z.cn");

        CommonButton btn12 = new CommonButton();
        btn12.setName("bing搜索");
        btn12.setType("view");
        btn12.setUrl("http://www.bing.com");

        CommonButton btn13 = new CommonButton();
        btn13.setName("咖啡馆项目");
        btn13.setType("view");
        btn13.setUrl("http://lamymay.s1.natapp.cc/demo/index.html");

        CommonButton btn21 = new CommonButton();
        btn21.setName("测试传key21");
        btn21.setType("click");
        btn21.setKey("key21");

        CommonButton btn22 = new CommonButton();
        btn22.setName("测试传key22");
        btn22.setType("click");
        btn22.setKey("key22");

        CommonButton btn23 = new CommonButton();
        btn23.setName("图片");
        btn23.setType("view");
        btn23.setUrl("http://huaban.com/boards/33327277/");

        CommonButton btn24 = new CommonButton();
        btn24.setName("测试<备用>");
        btn24.setType("view");
        btn24.setUrl("http://lamymay.s1.natapp.cc/wx/back");    //back

        CommonButton btn25 = new CommonButton();
        btn25.setName("回复内容编辑");
        btn25.setType("view");
        btn25.setUrl("http://lamymay.s1.natapp.cc/reply");  //reply



        CommonButton btn31 = new CommonButton();
        btn31.setName("用户管理");
        btn31.setType("view");
        btn31.setUrl("http://lamymay.s1.natapp.cc/user");       //31 user

        CommonButton btn32 = new CommonButton();
        btn32.setName("支付成功页面");
        btn32.setType("view");
        btn32.setUrl("http://lamymay.s1.natapp.cc/wx/pay");     //32 支付成功

        CommonButton btn33 = new CommonButton();
        btn33.setName("主页测试");
        btn33.setType("view");
        btn33.setUrl("http://lamymay.s1.natapp.cc/wx/index");//主页

        //父级菜单的创建
        ComplexButton mainBtn1 = new ComplexButton();
        mainBtn1.setName("服务");
        mainBtn1.setSub_button(new CommonButton[]{btn11, btn12, btn13});

        ComplexButton mainBtn2 = new ComplexButton();
        mainBtn2.setName("工具");
        mainBtn2.setSub_button(new CommonButton[]{ btn21,btn22,btn23, btn24, btn25});

        ComplexButton mainBtn3 = new ComplexButton();
        mainBtn3.setName("快跳");

        mainBtn3.setSub_button(new CommonButton[]{btn32,btn33});
        /**
         * 这是公众号xiaoqrobot目前的菜单结构，每个一级菜单都有二级菜单项<br>
         * 在某个一级菜单下没有二级菜单的情况，menu该如何定义呢？<br>
         * 比如，第三个一级菜单项不是“更多体验”，而直接是“幽默笑话”，那么menu应该这样定义：<br>
         * menu.setButton(new Button[] { mainBtn1, mainBtn2, btn33 });
         */

        //父级菜单--集成到menu中去-----加入数组Button[ ]
        menu.setButton(new Button[]{mainBtn1, mainBtn2, mainBtn3});
        return menu;
    }








}












//-----------------------------------------------------json格式的 模板消息创建
     /*   sendTempleMsg("      {\n" +
                "           \"touser\":\"o42BSw3Av7ArFIxSNtkJXMXOb6AE\",\n" +
                "           \"template_id\":\"u-TKxpil8_10kyLpCZYwQL5dHo_ZfUfNC0pRKroRsAI\",\n" +
                "           \"url\":\"http://www.bing.com\",  \n" +
                "           \"data\":{\n" +
                "                   \"first\": {\n" +
                "                       \"value\":\"恭喜你购买成功！\",\n" +
                "                       \"color\":\"#173177\"\n" +
                "                   },\n" +
                "                   \"keyword1\":{\n" +
                "                       \"value\":\"巧克力\",\n" +
                "                       \"color\":\"#173177\"\n" +
                "                   },\n" +
                "                   \"keyword2\": {\n" +
                "                       \"value\":\"39.8元\",\n" +
                "                       \"color\":\"#173177\"\n" +
                "                   },\n" +
                "                   \"keyword3\": {\n" +
                "                       \"value\":\"2014年9月22日\",\n" +
                "                       \"color\":\"#173177\"\n" +
                "                   },\n" +
                "                   \"remark\":{\n" +
                "                       \"value\":\"欢迎再次购买！\",\n" +
                "                       \"color\":\"#173177\"\n" +
                "                   }\n" +
                "           }\n" +
                "       }");
        */


//-----------------------------------------------------json格式的 按钮创建
/*
        createMenu("{\n" +
                "    \"button\": [\n" +
                "        {\n" +
                "            \"name\": \"链接\",\n" +
                "            \"sub_button\": [\n" +
                "                {\n" +
                "                    \"type\": \"view\",\n" +
                "                    \"name\": \"搜索\",\n" +
                "                    \"url\": \"http://www.bing.com/\"\n" +
                "                },\n" +
                "                {\n" +
                "                    \"type\": \"view\",\n" +
                "                    \"name\": \"腾讯视频\",\n" +
                "                    \"url\": \"http://v.qq.com/\"\n" +
                "                }\n" +
                "            ]\n" +
                "        },\n" +
                "\n" +
                "\n" +
                "        {\n" +
                "            \"name\": \"服务\",\n" +
                "            \"sub_button\": [\n" +
                "                {\n" +
                "                    \"type\": \"view\",\n" +
                "                    \"name\": \"亚马逊购物\",\n" +
                "                    \"url\": \"http://z.cn/\"\n" +
                "                },\n" +
                "                {\n" +
                "                    \"type\": \"view\",\n" +
                "                    \"name\": \"视频\",\n" +
                "                    \"url\": \"http://v.qq.com/\"\n" +
                "                },\n" +
                "\n" +
                "                {\n" +
                "                    \"type\": \"click\",\n" +
                "                    \"name\": \"赞一下我们\",\n" +
                "                    \"key\": \"http://lamymay.s1.natapp.cc/user\"\n" +
                "                }\n" +
                "            ]\n" +
                "        },\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                " {\n" +
                "            \"name\": \"测试\",\n" +
                "            \"sub_button\": [\n" +
                "          {\n" +
                "              \"type\": \"view\",\n" +
                "              \"name\": \"花瓣网跳转\",\n" +
                "              \"url\": \"http://huaban.com\"\n" +
                "          },\n" +
                "               {\n" +
                "                    \"type\": \"click\",\n" +
                "                    \"name\": \"测试跳转Controller\",\n" +
                "                    \"key\": \"http://lamymay.s1.natapp.cc/user\"\n" +
                "                }\n" +
                "            ]\n" +
                "        }\n" +
                "\n" +
                "    ]\n" +
                "}");
    }
}*/
