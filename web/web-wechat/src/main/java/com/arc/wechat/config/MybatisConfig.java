package com.arc.wechat.config;

import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

import javax.annotation.Resource;
import javax.sql.DataSource;

@Slf4j
public class MybatisConfig {

    @Configuration
    @MapperScan(basePackages = {"com.arc.wechat.mapper.one"},
            sqlSessionFactoryRef = "sqlSessionFactoryOne",
            sqlSessionTemplateRef = "sqlSessionTemplateOne")
    public static class DBOne {
        @Resource(name = "dataSourceOne")
        DataSource dataSourceOne;


        @Bean
        public SqlSessionFactory sqlSessionFactoryOne() throws Exception {
            log.debug("主配");
            SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
            factoryBean.setDataSource(dataSourceOne);
            factoryBean.setMapperLocations(new PathMatchingResourcePatternResolver().getResources("classpath:mapper/one/*.xml"));
            return factoryBean.getObject();

        }

        @Bean
        public SqlSessionTemplate sqlSessionTemplateOne() throws Exception {
            SqlSessionTemplate template = new SqlSessionTemplate(sqlSessionFactoryOne()); // 使用上面配置的Factory
            return template;
        }
    }


    //------------------------------------------------------------------------------------------------------------------------------------------


    @Configuration
    @MapperScan(basePackages = {"com.arc.wechat.mapper.two"},
            sqlSessionFactoryRef = "sqlSessionFactoryTwo",
            sqlSessionTemplateRef = "sqlSessionTemplateTwo")
    public static class DBTwo {
        @Resource(name = "dataSourceTwo")
        DataSource dataSourceTwo;


        @Bean
        public SqlSessionFactory sqlSessionFactoryTwo() throws Exception {
            SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
            factoryBean.setDataSource(dataSourceTwo);
            factoryBean.setMapperLocations(new PathMatchingResourcePatternResolver().getResources("classpath:mapper/two/*.xml"));
            return factoryBean.getObject();

        }

        @Bean
        public SqlSessionTemplate sqlSessionTemplateTwo() throws Exception {
            SqlSessionTemplate template = new SqlSessionTemplate(sqlSessionFactoryTwo()); // 使用上面配置的Factory
            return template;
        }
    }


}
