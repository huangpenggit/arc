package com.qcloud.sms.sms.test;

import com.qcloud.sms.SmsMultiSender;
import com.qcloud.sms.SmsMultiSenderResult;
import com.qcloud.sms.sms.test.StreamTool;
import org.json.JSONObject;

import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;

public class SmsSDKDemo {
    static int E0 = 1;
    static int E1 = 1;
    static int E2 = 1;
    static int E3 = 1;
    public static String contactNumber = "15916556632";

    public static void main(String[] args) {
        timer1();//计时器
        while (true) {
            connectLocalServer();//发链接
            judgeLocalSending();
            try {
                Thread.sleep(1000 * 10);
            } catch (InterruptedException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            connectCloudServer();
            judgeCloudSending();
            try {
                Thread.sleep(1000 * 10);
            } catch (InterruptedException e) {
                // TODO Auto-generated catch block2q
                e.printStackTrace();
            }
        }
    }

    public static void timer1() {
        Timer timer = new Timer();
        timer.schedule(new TimerTask() {
            public void run() {
                System.out.println("Time 6 minutes has arrived.");
                E0 = 0;
                E1 = 0;
                E2 = 0;
                E3 = 0;
            }
        }, 1000 * 60 * 6);//6分钟
    }

    //连接服务器 1
    static void connectLocalServer() {
        System.out.println("Application is requesting to login to local server now...");
        try {
            String path = "http://121.9.249.59:8088/ZKDM102/LoginMessageSubmit.action?name=1233&password=123456";
            URL url = new URL(path);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setReadTimeout(10 * 1000);
            conn.setRequestMethod("GET");
            InputStream inStream = conn.getInputStream();
            byte[] data = StreamTool.readInputStream(inStream);
            String json = new String(data);
            JSONObject jb = new JSONObject(json);
            System.out.println("waiting for the reponse");
            if (jb.get("index").hashCode() == 1) {
                System.out.println("Login is correct that means local server is normal.\r\n");
            } else {
                System.out.println("E2=E2+1");
                // sendMessage("E2"," http://103.236.254.157:8888/login");
                E2 = E2 + 1;
                sleep();
            }
        } catch (Exception e) {
            System.out.println("E3=E3+1");
            //System.out.println("There is an error with the connection, please check if turn off the internet or others.");
            E3 = E3 + 1;
            // sendMessage("E3"," http://103.236.254.157:8888/login");
            sleep();
        }
    }

    //链接服务器 2
    static void connectCloudServer() {
        System.out.println("Application is requesting to login to cloud server now...");
        try {
            String path = "http://103.236.254.157:8088/ZKDM102/LoginMessageSubmit.action?name=1234&password=123456";
            URL url = new URL(path);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setReadTimeout(10 * 1000);
            conn.setRequestMethod("GET");
            InputStream inStream = conn.getInputStream();
            byte[] data = StreamTool.readInputStream(inStream);
            String json = new String(data);
            JSONObject jb = new JSONObject(json);
            System.out.println("waiting for the reponse");
            if (jb.get("index").hashCode() == 1) {
                System.out.println("Login is correct that means cloud server is normal.\r\n");
            } else {
                System.out.println("E0=E0+1");
                E0 = E0 + 1;
                //System.out.println("Login failed that please check the application to see if normal or not.");
                //sendMessage("E0"," http://103.236.254.157:8888/login");
                sleep();
            }
        } catch (Exception e) {
            System.out.println("E1=E1+1");
            E1 = E1 + 1;
            //System.out.println("There is an error with the connection, please check if turn off the internet or others.");
            //sendMessage("E1"," http://103.236.254.157:8888/login");
            sleep();
        }
    }

    static void sleep() {
        try {
            System.out.println("Programming is sleeping that is waiting for message sends again...");
            //Thread.sleep(1000*60*10);
            Thread.sleep(1000 * 60);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    static void judgeLocalSending() {
        try {
            if (E2 > 1) {
                System.out.println("Login failed that please check the application to see if normal or not.");
                sendMessage("E2", " http://103.236.254.157:8888/login");
                sleep();
                E2 = 0;
            }
            if (E3 > 1) {
                System.out.println("There is an error with the connection, please check if turn off the internet or others.");
                sendMessage("E3", " http://103.236.254.157:8888/login");
                sleep();
                E3 = 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    //判断  cloud 发送短信
    static void judgeCloudSending() {
        try {
            if (E0 > 1) {
                System.out.println("Login failed that please check the application to see if normal or not.");
                sendMessage("E0", " http://103.236.254.157:8888/login");
                sleep();
                E0 = 0;
            }
            if (E1 > 1) {
                System.out.println("There is an error with the connection, please check if turn off the internet or others.");
                sendMessage("E1", " http://103.236.254.157:8888/login");
                sleep();
                E1 = 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    static void sendMessage(String code, String link) {
        try {
            int appid = 1400036402;
            String appkey = "99407e02cf8515dcbc8a142b15d834f1";
            int tmplId = 7839;
                SmsMultiSender multiSender = new     SmsMultiSender(appid, appkey);
                SmsMultiSenderResult multiSenderResult;
            ArrayList<String> phoneNumbers = new ArrayList<>();
            //phoneNumbers.add("15916556632");
            phoneNumbers.add("17671616955");
            //phoneNumbers.add("13827146905");
            ArrayList<String> params = new ArrayList<>();
            params.add(code);
            params.add(link);
            params.add(contactNumber);
            multiSenderResult = multiSender.sendWithParam("86", phoneNumbers, 73557, params, "", "", "");
            //	System.out.println(multiSenderResult);
            System.out.println("Message sent to all the managers.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
