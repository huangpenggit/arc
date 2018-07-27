package com.del.wechat.utils;

public static void readTxt(String filePath){

        try{
        File file=new File(filePath);
        if(file.isFile()&&file.exists()){
        InputStreamReader isr=new InputStreamReader(new FileInputStream(file),"utf-8");
        BufferedReader br=new BufferedReader(isr);
        String lineTxt=null;
        while((lineTxt=br.readLine())!=null){
        System.out.println(lineTxt);
        }
        br.close();
        }else{
        System.out.println("文件不存在!");
        }
        }catch(Exception e){
        System.out.println("文件读取错误!");
        }

        }


public static void main(String[]args){
        String filePath="D:\\test\\我.txt";
        readTxt(filePath);
        }

        }