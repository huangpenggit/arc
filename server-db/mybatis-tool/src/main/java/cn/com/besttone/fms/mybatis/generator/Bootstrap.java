package cn.com.besttone.fms.mybatis.generator;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import cn.com.besttone.fms.mybatis.generator.generator.FreemarkerGenerator;
import cn.com.besttone.fms.mybatis.generator.mapper.MetaMapper;
import cn.com.besttone.fms.mybatis.generator.meta.TableMeta;

@Component
public class Bootstrap {
	
	private static final Logger logger = LoggerFactory.getLogger(Bootstrap.class);
	
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
