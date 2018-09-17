//package com.arc.back.service;
//
//import java.io.InputStream;
//import java.io.RandomAccessFile;
//import java.net.HttpURLConnection;
//import java.net.URL;
//
///**
// * @author Administrator 多线程下载文件
// */
//public class TestThread {
//    // 定义成员变量
//    private String path; // 远程资源路径
//    private String targetPath; // 本地存储路径
//    private DownFileThread[] threads; // 线程list
//    private int threadNum; // 线程数量
//    private long length; // 下载的文件大小
//
//    // 构造初始化
//    public TestThread(String path, String targetPath, int threadNum) {
//        super();
//        this.path = path;
//        this.targetPath = targetPath;
//        this.threads = new DownFileThread[threadNum];
//        this.threadNum = threadNum;
//    }
//
//    // 多线程下载文件资源
//    public void download() {
//        URL url;
//        try {
//            url = new URL(path);
//            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
//            conn.setReadTimeout(5 * 1000); // 设置超时时间为5秒
//            conn.setRequestMethod("GET");
//            conn.setRequestProperty("connection", "keep-alive");
//            conn.setRequestProperty("accept", "*/*");
//
//            // 获取远程文件的大小
//            length = conn.getContentLength();
//            conn.disconnect();
//
//            // 设置本地文件大小
//            RandomAccessFile targetFile = new RandomAccessFile(targetPath, "rw");
//            targetFile.setLength(length);
//
//            // 每个线程下载大小
//            long avgPart = length / threadNum + 1;
//            // 下载文件
//            for (int i = 0; i < threadNum; i++) {
//                long startPos = avgPart * i;
//                RandomAccessFile targetTmp = new RandomAccessFile(targetPath,
//                        "rw");
//                targetTmp.seek(startPos); // 分段下载
//                threads[i] = new DownFileThread(startPos, targetTmp, avgPart);
//                threads[i].start();
//            }
//
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
//
//    // 监控下载进度
//    public double getDownRate() {
//        int currentSize = 0;
//        for (int i = 0; i < threadNum; i++) {
//            currentSize += threads[i].length;
//        }
//        return currentSize * 1.0 / length;
//    }
//
//    // 定义线程类
//    class DownFileThread extends Thread {
//        private long startPos;
//        private RandomAccessFile raf;
//        private long size;
//        private long length;
//
//        public DownFileThread(long startPos, RandomAccessFile raf, long size) {
//            super();
//            this.startPos = startPos;
//            this.raf = raf;
//            this.size = size;
//        }
//
//
//        @Override
//        public void run() {
//            URL url;
//            try {
//                url = new URL(path);
//                HttpURLConnection conn = (HttpURLConnection) url.openConnection();
//                conn.setReadTimeout(5 * 1000); // 设置超时时间为5秒
//                conn.setRequestMethod("GET");
//                conn.setRequestProperty("connection", "keep-alive");
//                conn.setRequestProperty("accept", "*/*");
//
//                InputStream in = conn.getInputStream();
//
//
//                in.skip(this.startPos);
//                byte[] buf = new byte[1024];
//                int hasRead = 0;
//                while (length < size && (hasRead = in.read(buf)) != -1) {
//                    raf.write(buf, 0, hasRead);
//                    length += hasRead;
//                }
//                raf.close();
//                in.close();
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//        }
//    }
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
//    // 测试
//    public static void main(String[] args) {
//        String path = "https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.3.2.rpm";
//        String targetPath = "H:/E.rpm";
//        final DownloadUtil download = new DownloadUtil(path, targetPath, 4);
//        download.download();
//
//        // 主线程负责下载文件，在启动一个线程负责监控下载的进度
//        new Thread(new Runnable() {
//            @Override
//            public void run() {
//                while (download.getDownRate() < 1) {
//                    System.out.println(download.getDownRate());
//                    try {
//                        Thread.sleep(200); // 200毫秒扫描一次
//                    } catch (InterruptedException e) {
//                        e.printStackTrace();
//                    }
//                }
//            }
//
//        }).start();
//    }
//}