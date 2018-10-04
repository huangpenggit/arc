#项目介绍
运行环境JDK 8
数据是MYSQL 5.7
持久称层用的是mybatis

测试
0去数据库见一个数据库，名称为sso，要求字符编码格式utf-8
0.1注意如果数据库账号密码需要配置，请移步配置文件57，58，59行的username，password修改，配置文件位置：项目根路径\src\main\resources\application.yml
0.2特别注意：1) 注意空格！！！ username:空格+数据库用户名 username: root  2)yml文件中禁止使用tab键来空格！！！
1在项目根目录中sql文件夹（文件夹位置：项目根路径\sql\）中找到建表的sql，去数据库运行一下这个sql即完成建一张表
2启动项目，运行配置类中main方法启动本项目，，该类位置：com.arc.faststart.WebFastStartApplication
3访问下面这个链接【http://localhost/file/list】应该会在浏览器中显示一串字符串
4你应该已经正确的跑起来项目了
5如果没有，1)检查 你的eclipse或者idea是否安装了lombok插件 2)检查数据库 3)端口冲突，杀掉java进程（移步百度如何杀掉进程），或者重启电脑


6开发完成后怎么部署到服务器？maven打包了解一下，去打包，得到一个jar包，位置：项目根目录/target/XXX.jar
7启动命令 ：java -jar 【文件名称.jar】


