package com.arc.vue.controller.test;

import com.arc.vue.service.impl.TestServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 描述：
 *
 * @author:
 * @date: 2018/1/31 0031 17:24
 * @version: V1.0
 * Copyright © 2018-arc. All rights reserved.
 */

@Slf4j
@RestController
public class PController {
    @Autowired
    TestServiceImpl service;

    public static int[] parm = {200, 0, 1, 0, 1, 8, -3, 100, 60, 50, 80, 101, 77, 44, 55, 66, 44, 21, 91, 71, 75, 41};
    public static int[] res;


    @GetMapping("/p")
    public void test() {

    }

    //排序算法测试
    //https://www.cnblogs.com/10158wsj/p/6782124.html?utm_source=tuicool&utm_medium=referral
    //直接插入排序（Straight Insertion Sorting）的基本思想：
    // 在要排序的一组数中，假设前面(n-1) [n>=2] 个数已经是排好顺序的，现在要把第n个数插到前面的有序数中，使得这n个数也是排好顺序的。如此反复循环，直到全部排好顺序。
    //
    //代码实现：
    //
    //首先设定插入次数，即循环次数，for(int i=1;i<length;i++)，1个数的那次不用插入。
    //
    //设定插入数和得到已经排好序列的最后一个数的位数。insertNum和j=i-1。
    //
    //从最后一个数开始向前循环，如果插入数小于当前数，就将当前数向后移动一位。
    //
    //将当前数放置到空着的位置，即j+1。
    public static void p1(int[] array) {
        log.debug("The array length is {}", array.length);
        printArray(array);
        Long start = System.currentTimeMillis();
        int length = array.length;//数组长度取出
        int insertNumber;//要插入的数
        for (int i = 0; i < length; i++) {
            insertNumber = array[i];//取出来的数
            int j = i - 1;//序列元素
            //假定原数组是排好序的,   如果插入数小于当前数，就将当前数向后移动一位。
            System.out.println("index  " + i + " insertNumber  " + array[i]);
            while (j >= 0 && array[j] > insertNumber) {
                System.out.println(array[j]);
                System.out.println(array[j + 1]);
                array[j + 1] = array[j];//首次进来的时候 array[i] 的值是可以修改的，因为此时array[i]的值 拿出来了赋给了中间变量，
                j--;
            }

            System.out.println("j+1   -------    " + j);

            array[j + 1] = insertNumber;
            printArray(array);

        }
        System.out.println("总耗时=" + (System.currentTimeMillis() - start));
        printArray(res);

    }


    //冒泡
    public static void bubbleSort() {
        int length = parm.length;
        System.out.println(length);
        for (int i = 0; i < length; i++) {
            for (int j = 0; j < length - i - 1; j++) {

//                if (parm[j] > parm[j+1]) {
//                    int tem = parm[j ];
//                    parm[j] = parm[j + 1];
//                    parm[j + 1] = tem;
//                }
                if (parm[j] > parm[j + 1]) {//前一个比后一个大， 把小的往前移动
                    System.out.println(parm[j] + "    " + parm[j + 1]);
                    int tem = parm[j];
                    parm[j] = parm[j + 1];
                    parm[j + 1] = tem;
                }

            }
            printArray(parm);
        }

    }

    public static void main(String[] args) {
        Long start = System.currentTimeMillis();
        try {
//            p1(parm);

            bubbleSort();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            System.out.println("Finally!");
        }
        System.out.println("总耗时: " + (System.currentTimeMillis() - start) + " mS");
    }

    /**
     * 输出相应数组的结果
     *
     * @param array
     */
    private static void printArray(int[] array) {
        if (array != null) {
            System.out.print("[");
            for (int value : array) {
                System.out.print(value + " ");
            }
            System.out.print("]\n");
        } else {
            System.out.println("数组未初始化！");
        }
    }
}
