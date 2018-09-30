package com.arc.post.test.serversocket;

import lombok.extern.slf4j.Slf4j;

import java.io.*;
import java.net.ServerSocket;
import java.net.Socket;
import java.time.LocalDate;

/**
 * 用socket模拟服务器
 */
@Slf4j
public class TcpServer {

    public static void main(String[] args) {
        p2();


    }

    private static void p1() {
        try (ServerSocket ss = new ServerSocket(80);
             Socket socket = ss.accept();
             BufferedReader br = new BufferedReader(new InputStreamReader(socket.getInputStream()));
             BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()));
        ) {

            String s = null;
            while ((s = br.readLine()) != null && !s.equals("")) {
            }
            System.out.println("" + LocalDate.now() + " args are" + s);


            bw.write("HTTP/1.1 200 OK\n");
            bw.write("Content-Type: text/html; charset=UTF-8\n\n");
            bw.write("<html>\n" +
                    "<head>\n" +
                    "    <title>First page</title>\n" +
                    "</head>\n" +
                    "<body>\n" +
                    "    <h1>Hello World!</h1>\n" +
                    "</body>\n" +
                    "</html>\n");
            bw.flush();

//            br.close();
//            bw.close();
//            socket.close();
//            ss.close();

        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private static void p2() {
        try (ServerSocket ss = new ServerSocket(80);
             Socket socket = ss.accept();
             BufferedReader br = new BufferedReader(new InputStreamReader(socket.getInputStream()));
             BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()));
        ) {

            System.out.println("" + LocalDate.now());
            while (socket != null) {
                new ClientConnection(socket).start();
              //  socket = ss.accept();
            }
            ss.close();

        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}

//小计
//自动关闭资源的try语句相当于包含了隐式的finally块（用于关闭资源），因此这个try语句可以既没有catch块，也没有finally块。
//
//注意：
//
//被自动关闭的资源必须实现Closeable或AutoCloseable接口。（Closeable是AutoCloseable的子接口，Closeeable接口里的close()方法声明抛出了IOException,;AutoCloseable接口里的close()方法声明抛出了Exception）
//被关闭的资源必须放在try语句后的圆括号中声明、初始化。如果程序有需要自动关闭资源的try语句后可以带多个catch块和一个finally块。
