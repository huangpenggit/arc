package com.arc.model.domain.enviroment;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;


/**
 * 项目描述实体
 */
@Getter
@Setter
@ToString
@NoArgsConstructor
@Entity
@Table(name = "project_environment")
public class Project {

    private static final long serialVersionUID = 1L;


    @Id
    @GeneratedValue
    @Column(name = "id")
    private Long id; // 主键

    @Column(name = "project_name",length = 255)
    private String projectName; // 项目名称

    @Column(name = "project_number",length = 255)
    private String projectNumber; // 项目编号

    @Column(name = "name",length = 255)
    private String name; // 环境名称

    @Column(name = "source_url",length = 255)
    private String sourceUrl; // 资源地址

    @Column(name = "source_username",length = 255)
    private String sourceUsername; // 资源账号

    @Column(name = "source_password",length = 255)
    private String sourcePassword; // 资源密码

    @Column(name = "source_driver",length = 255)
    private String sourceDriver; // 资源驱动

    @Column(name = "source_type",length = 255)
    private String sourceType; // 数据类型（mysql、db2、MQ、Redis、）

    //Caused by: javax.persistence.PersistenceException: [PersistenceUnit: default] Unable to build Hibernate SessionFactory;
    // nested exception is org.hibernate.MappingException: property mapping has wrong number of columns: com.arc.model.enviroment.ProjectEnvironment.sourcePrimary type: object
    @Column(name = "source_primary")
//    private Object sourcePrimary; // 多数据源是区分 主从 用状态码标识
    private int sourcePrimary; // 多数据源是区分 主从与否 用状态码标识--修正之后的

    @Column(name = "source_port",length = 255)
    private String sourcePort; // 资源端口

    @Column(name = "project_description",length = 255)
    private String projectDescription; // 项目描述

    @Column(name = "project_action",length = 255)
    private String projectAction; // 项目动作

    public String getSourcePrimary() {
        if (sourcePrimary == 1) {
            return "主数据源";
        } else {
            return "";

        }
    }

    public void setSourcePrimary(int sourcePrimary) {
        this.sourcePrimary = sourcePrimary;
    }

    public void setSourcePrimary(String sourcePrimary) {
        if (sourcePrimary.contains("是")) {
            this.sourcePrimary = 1;
        }
    }
}

//其中：
//
//@Entity 是一个必选的注解，声明这个类对应了一个数据库表。
//@Table(name = "AUTH_USER") 是一个可选的注解。声明了数据库实体对应的表信息。包括表名称、索引信息等。这里声明这个实体类对应的表名是 AUTH_USER。如果没有指定，则表名和实体的名称保持一致。
//@Id 注解声明了实体唯一标识对应的属性。
//@Column(length = 32) 用来声明实体属性的表字段的定义。默认的实体每个属性都对应了表的一个字段。字段的名称默认和属性名称保持一致（并不一定相等）。字段的类型根据实体属性类型自动推断。这里主要是声明了字符字段的长度。如果不这么声明，则系统会采用 255 作为该字段的长度
//
//链接：https://www.jianshu.com/p/c14640b63653
//來源：简书
//简书著作权归作者所有，任何形式的转载都请联系作者获得授权并注明出处。
