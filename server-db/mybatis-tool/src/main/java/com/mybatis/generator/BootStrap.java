package com.mybatis.generator;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import com.mybatis.generator.generator.FreemarkerGenerator;
import com.mybatis.generator.mapper.MetaMapper;
import com.mybatis.generator.meta.TableMeta;

@Component
public class BootStrap {
	
	private static final Logger logger = LoggerFactory.getLogger(BootStrap.class);
	
	@Autowired
	private MetaMapper mapper;
	
	private @Value("${meta.schemaName}") 		String tableSchema;
	private @Value("${meta.tableName}") 		String tableName;
	
	@Autowired
	private FreemarkerGenerator generator;
	
	public void start() throws Exception {
		TableMeta meta = mapper.get(tableSchema, tableName);
		
		if (meta == null) {
			throw new IllegalArgumentException("Please check schemaName and tableName are correct. ");
		}
		
		logger.info("{}", JacksonUtils.toJson(meta));
		
		generator.generate(meta);
	}
}
