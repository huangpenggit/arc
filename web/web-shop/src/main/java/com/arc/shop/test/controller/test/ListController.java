package com.arc.shop.test.controller.test;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping("/list")
public class ListController {

    /**
     * 接收List的条件
     * 1、使用JSON格式数据，如["a","b","c"] 放在RequestBody中传递,POST方法
     * 2、RequestHeader中需要有 Content-Type: application/json;charset=utf8
     * 3、需要在参数前加上@RequestBody
     */
    @RequestMapping("1")
    public String hi1(@RequestBody List<String> list) {
        System.out.println(list);
        return "  The list is  " + list + " and length is " + list.size();

    }

    /**
     * 接收List<String>
     * 1、Request Parameters中list=a,b,c，GET方法：localhost:8089/list/2?list=1,2,3,4
     * 2、必须写上@RequestParam("list")
     */
    @RequestMapping("/2")
    public String hi2(@RequestParam("list") List<String> list) {
        System.out.println(list.get(0));
        return "  The list is  " + list + " and length is " + list.size();
    }

    /**
     * 接收数组
     * 1、Request Parameters中list=a,b,c 即可成功接收：GET方法：localhost:8089/list/3?list=1,2,3
     */
    @RequestMapping("/3")
    public String hi3(String[] list) {
        System.out.println(list[0].toString());
        System.out.println(list[1].toString());
        StringBuilder stringBuilder = new StringBuilder();

        Arrays.asList(list).stream().forEach(x -> stringBuilder.append(x).append(","));
        System.out.println(stringBuilder);
        return "  The list is  " + stringBuilder + list.toString() + " and length is " + list.length;
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////////////
    public static void main(String[] args) throws InterruptedException {
        System.out.println(ListController.ca());
        System.out.println(test1());
        System.out.println(test());

    }

    public static int ca() {
        int i = 0;
        try {
            System.out.println("try");
            int a = 1 / 0;
            return ++i;//1 0+1   2 i=1
            //System.out.println("jump");
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Ex");
            return 2;
        } finally {
            System.out.println("Final");
            return ++i;//1 1+1 2 i=2;

        }
    }

    static int test() {
        int x = 1;
        try {
            return ++x;
        } finally {
            if (x > 1) {
                x += 10;
                System.out.println(x);
                return x;
            }
        }
    }


    static long test1() throws InterruptedException {
        long tt = 0;
        try {
            tt = System.currentTimeMillis();
            System.out.println("输出1 的结果--" + tt);
            return tt;//获得一个系统时间，返回//(1)
        } finally {
            Thread.sleep(100L);
//            for (int j = 0; j < 1000000000; j++) {
//                j *= 1;//这里的作用是增加运行时间，让两个时间有个差
//            }
//再次获得一个系统时间
            tt = System.currentTimeMillis();
            System.out.println("输出2的结果" + tt);//(2)
            return tt;
        }
    }


}


// qq_163101232018-06-18 21:41:56#4楼
// 结论有点问题，try中的 return 会被跳过，
// 1如果finally中有return则执行到finally中的return时候就直接返回 try中的return并未执行，
// 2如果finally中没有return 则程序执行try 而后跳过try中的return执行finally语句，最后去执行try中的return，。至于return=++i,的例子 ++i是两步操作，return之前 变量的值就已经变化，即int i=0； try中的 return ++i；是相当于三句话--1 计算0+1=1; ---2赋值 i=1; --3 跳过return；去执行finally/

//通过这两个运行结1果的不同，我们不难得出结论
//当java程序在执行try块、catch块时如果遇到了return或者throw时，
// 这两个语句都会导致该方法立即结束，但是系统在执行这两个语句时并不会结束该方法，
// 而是去寻找该异常处理流中是否包含了finally语句块，
// 如果没有finally块，则程序会立即执行return或者throw语句，方法终止。
// 如果有finally语句块，系统会开始立即执行finally语句块，只有当finally语句块中的代码被执行完了之后，系统才会回来再次执行try块或者catch块中的return或throw语句，
// 但是如果finally块中也有return或者throw这样能是方法结束的语句，则finally块就会立即结束该方法，系统将不会跳回去执行try块或者catch中的任何语句。
//
//
//
//所以在注释掉finally块中的return语句后，程序再次跳到了try中的return语句，最后结果返回了false。
