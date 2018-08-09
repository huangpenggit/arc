1、项目的JPA配置咋哪里？
2、校验是框架自己完成的怎么扩展
3、错误信息问题

spring.jpa.show-sql=true 配置在日志中打印出执行的 SQL 语句信息。
spring.jpa.hibernate.ddl-auto=create 配置指明在程序启动的时候要删除并且创建实体类对应的表。这个参数很危险，因为他会把对应的表删除掉然后重建。所以千万不要在生成环境中使用。只有在测试环境中，一开始初始化数据库结构的时候才能使用一次。
spring.jpa.database-platform=org.hibernate.dialect.MySQL5InnoDBDialect 。在 SrpingBoot 2.0 版本中，Hibernate 创建数据表的时候，默认的数据库存储引擎选择的是 MyISAM （之前好像是 InnoDB，这点比较诡异）。这个参数是在建表的时候，将默认的存储引擎切换为 InnoDB 用的。


----------------
application.properties
## 是否显示 SQL 语句
#spring.jpa.show-sql=true
#spring.datasource.driverClassName=org.h2.Driver
#spring.datasource.url=jdbc:mysql://localhost:3306/springboot
#spring.datasource.username=root
#spring.datasource.password=admin
#spring.jpa.hibernate.ddl-auto=update
#spring.jackson.serialization.indent_output=true
#server.port=80
#spring.jpa.show-sql=true
#h2数据库特点
#（1）性能、小巧
#（2）同时支持网络版和嵌入式版本，另外还提供了内存版
#（3）有比较好的兼容性，支持相当标准的sql标准