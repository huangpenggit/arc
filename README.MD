#项目介绍
#最外层项目

https://www.oschina.net/translate/spring-boot-2-0-migration-guide

新版本值得关注的亮点：

基于 Java 8，支持 Java 9

支持 Quartz 调度程序

大大简化了安全自动配置

支持嵌入式 Netty

Tomcat, Undertow 和 Jetty 均已支持 HTTP/2

全新的执行器架构，支持 Spring MVC, WebFlux 和 Jersey

使用 Spring WebFlux/WebFlux.fn 提供响应式 Web 编程支持

为各种组件的响应式编程提供了自动化配置，如：Reactive Spring Data、Reactive Spring Security 等

用于响应式 Spring Data Cassandra, MongoDB, Couchbase 和 Redis 的自动化配置和启动器 POM

引入对 Kotlin 1.2.x 的支持，并提供了一个 runApplication 函数，让你通过惯用的 Kotlin 来运行 Spring Boot 应用程序。更多信息请参阅参考文档中对 Kotlin 的支持部分

启动时的 ASCII 图像 Spring Boot banner 现已支持 GIF

spring 两种兼容关系
Spring Cloud	        Spring Boot
Finchley                	兼容Spring Boot 2.0.x，不兼容Spring Boot 1.5.x
Dalston和Edgware	兼容Spring Boot 1.5.x，不兼容Spring Boot 2.0.x
Camden	                兼容Spring Boot 1.4.x，也兼容Spring Boot 1.5.x
Brixton	                兼容Spring Boot 1.3.x，也兼容Spring Boot 1.4.x
Angel	                    兼容Spring Boot 1.2.x
只要按照上述表格做spring boot和spring cloud的关系匹配，就不会出现该报错了。