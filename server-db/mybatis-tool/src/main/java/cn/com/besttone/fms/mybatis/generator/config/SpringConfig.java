package cn.com.besttone.fms.mybatis.generator.config;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.ui.freemarker.FreeMarkerConfigurationFactoryBean;

@Configuration
@ComponentScan("cn.com.besttone.fms.mybatis.generator")
@PropertySource("classpath:application.properties")
@MapperScan("cn.com.besttone.fms.mybatis.generator.mapper")
public class SpringConfig {
	
	public @Value("${spring.datasource.driver-class-name}") String driverClassName;
	public @Value("${spring.datasource.url}") String url;
	public @Value("${spring.datasource.username}") String username;
	public @Value("${spring.datasource.password}") String password;
	
	@Bean
	public DataSource dataSource() {
		BasicDataSource dataSource = new BasicDataSource();
		dataSource.setDriverClassName(driverClassName);
		dataSource.setUrl(url);
		dataSource.setUsername(username);
		dataSource.setPassword(password);
		return dataSource;
	}
	
	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
		SqlSessionFactoryBean factory = new SqlSessionFactoryBean();
		factory.setDataSource(dataSource);
		return factory.getObject();
	}
	
	@Bean
	public freemarker.template.Configuration freemarkerConfiguration() throws Exception {
		FreeMarkerConfigurationFactoryBean bean = new FreeMarkerConfigurationFactoryBean();
		bean.setTemplateLoaderPath("classpath:templates");
		bean.setDefaultEncoding("UTF-8");
		return bean.createConfiguration();
	}
	
}
