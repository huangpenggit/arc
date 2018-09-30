package com.arc.post.test;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;

public class Test {

    //    name的值经过运行才能获得, 那么就不会被处理为常量
    // 防止JVM编译时就把"default4"作为常量处理
//    private static  final String name = (null == null ? "defaultAAA" : "");
    private static final String name = new StringBuilder("defaultAAA").toString();


    public String getName() {
        // 防止JVM编译时就把"default4"作为常量处理
        return this.name;
    }

    public void printName() {
        System.out.println(name);
    }

    public static void main(String[] args) {
        Test test = new Test();
        try {
            //获得A类中所有定义的属性
//            Field field = test.getClass().getDeclaredField("name");
//            对所有属性设置访问权限  当类中的成员变量为private时 必须设置此项
//            field.setAccessible(true);//存取/访问（数据或程序）//setAccessible(true)取消了Java的权限控制检查
//            field.set(test, "bbbb");

//            field.setInt(field, field.getModifiers() & ~Modifier.FINAL);


            //先通过反射把name字段的final修饰符去掉. 然后设置值后再次设置final
            Test p = new Test();
            p.printName();
            Field nameField = p.getClass().getDeclaredField("name");
            nameField.setAccessible(true);

            //接下来再通过反射, 把nameField的final修饰符去掉:
            Field modifiers = nameField.getClass().getDeclaredField("modifiers");
            modifiers.setAccessible(true);
            modifiers.setInt(nameField, nameField.getModifiers() & ~Modifier.FINAL);

            // 然后就可以正常对name字段进行值的修改了.
            nameField.set(p, "测试");
            //最后别忘了再把final修饰符加回来:
            modifiers.setInt(nameField, nameField.getModifiers() & ~Modifier.FINAL);
            p.printName();


        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        System.out.println(test.getName());

    }
}
//http://www.cnblogs.com/noKing/p/9038234.html
