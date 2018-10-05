package com.arc.post.test;

import com.arc.post.model.Person;

public class Test1 {


    //  Test t = new Test();
    //            Field f = t.getClass().getDeclaredField("readOnly");
    //            f.setAccessible(true);
    //            f.set(t, "test");
    //            System.out.println(t.getReadOnly());
    public static void main(String[] args) {
        Person p1 = new Person();
        Person p2 = new Person();
        Person p3 = new Person();
        //创建Class对象的方式一：(对象.getClass())，获取person类中的字节码文件
        Class class1 = p1.getClass();
        System.out.println(p1.getClass().getName());
        Class class2 = p2.getClass();
        System.out.println(class1 == class2);

        System.out.println("==============================");
        //创建Class对象的方式二：(类.class:需要输入一个明确的类，任意一个类型都有一个静态的class属性)
        Class class3 = Person.class;
        System.out.println(class1 == class2);

        System.out.println("==============================");
        //创建Class对象的方式三：(forName():传入时只需要以字符串的方式传入即可)
        //通过Class类的一个forName（String className)静态方法返回一个Class对象，className必须是全路径名称；
        //Class.forName()有异常：ClassNotFoundException

        Class class4 = null;
        try {
            class4 = Class.forName("cn.itcast.Person");
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        System.out.println(class4 == class3);
    }


}
