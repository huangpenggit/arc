#项目介绍
#最外层项目

https://www.oschina.net/translate/spring-boot-2-0-migration-guide

新版本值得关注的亮点：

基于 Java 8
支持 Quartz 调度程序
响应式 Web 编程支持
Spring Security
MongoDB
Redis


spring 两种兼容关系
Spring Cloud	        Spring Boot
Finchley                	兼容Spring Boot 2.0.x，不兼容Spring Boot 1.5.x
Dalston和Edgware	兼容Spring Boot 1.5.x，不兼容Spring Boot 2.0.x
Camden	                兼容Spring Boot 1.4.x，也兼容Spring Boot 1.5.x
Brixton	                兼容Spring Boot 1.3.x，也兼容Spring Boot 1.4.x
Angel	                    兼容Spring Boot 1.2.x
只要按照上述表格做spring boot和spring cloud的关系匹配，就不会出现该报错了。
启动时的 ASCII 图像 Spring Boot banner 现已支持 GIF

