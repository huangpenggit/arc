package com.del.servermongo.temp;

public class TestComand {
    //https://zhidao.baidu.com/question/489217768856543412.html
    //java 调用linux系统服务
    public static void main(String[] args) {
        String cmd1 = "calc.exe";
        try {
            Process process = Runtime.getRuntime().exec(cmd1);
            process.waitFor();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
