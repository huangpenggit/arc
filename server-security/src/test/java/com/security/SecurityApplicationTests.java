package com.security;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SecurityApplicationTests {

    @Test
    public void contextLoads() {
    }

    //注解注入bean时候 有两种情况
//    @Resource(name = "manImpl")//注意是manImpl不是ManImpl，因为使用@Service，容器为我们创建bean时默认类名首字母小写
//    private Human human;

//    @Autowired
//    @Qualifier("manImpl")
//    private Human human;

}

//小结：
//一直使用的是@Resource注解，后来我就养成习惯了。现在对这两个注解做一下解释：
//@Resource默认按照名称方式进行bean匹配，@Autowired默认按照类型方式进行bean匹配
//@Resource(import
//        javax.annotation.Resource;)是J2EE的注解，@Autowired(
//        import org.springframework.beans.factory.annotation.Autowired;)是Spring的注解
//        Spring属于第三方的，J2EE是Java自己的东西。使用@Resource可以减少代码和Spring之间的耦合。
