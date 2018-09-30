package com.arc.post.model;

public class User {

    private String name;

    private String password;

    private int age;

    private char sex;

    public User() {
        super();
    }


    public User(String name, String password) {
        this.name = name;
        this.password = password;
    }

    public User(String name, int age, char sex) {
        super();
        this.name = name;
        this.age = age;
        this.sex = sex;
    }

    public User(String name, String password, int age) {
        this.name = name;
        this.password = password;
        this.age = age;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public char getSex() {
        return sex;
    }

    public void setSex(char sex) {
        this.sex = sex;
    }

    public void eat() {
        System.out.println("吃了");
    }

    @Override
    public String toString() {
        return "Person [name=" + name + ", age=" + age + ", sex=" + sex + "]";
    }

    public void sayChina() {
        // TODO Auto-generated method stub
        System.out.println("作者：" + 1 + "国籍：" + 2);
    }

    public String sayHello(String name, int age, char sex) {
        // TODO Auto-generated method stub
        return "姓名:" + name + "年龄：" + age + "性别:" + sex;
    }

}
