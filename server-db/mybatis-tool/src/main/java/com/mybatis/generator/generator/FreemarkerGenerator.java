package com.mybatis.generator.generator;

import com.mybatis.generator.meta.TableMeta;
import freemarker.template.Configuration;
import freemarker.template.Template;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Component
public class FreemarkerGenerator implements InitializingBean {

	private static final Logger logger = LoggerFactory.getLogger(FreemarkerGenerator.class);

	private static final String JAVA_FILE_SUFFIX = ".java";

	private static final String MAPPER_FILE_SUFFIX = ".xml";

	public String outputPath;

	public Map<String, Object> dataModel;

	private @Value("${meta.columnPrefix}") 		String columnPrefix;
	private @Value("${meta.javaPackage}") 		String javaPackage;
	private @Value("${meta.mapperNamespace}") 	String mapperNamespace;

	@Autowired
	private Configuration configuration;

	@Override
	public void afterPropertiesSet() throws Exception {
		dataModel = new HashMap<>(40);

		File curDir = new File(this.getClass().getClassLoader().getResource(".").getPath());
		File outDir = new File(curDir.getParent() + "/output");
		if (!outDir.exists()) {
			outDir.mkdirs();
		}

		outputPath = outDir.getPath();

		if (!columnPrefix.endsWith("_")) {
			columnPrefix += "_";
		}
	}

	public void generate(TableMeta meta) throws Exception {
		generateModel(meta);
		generateMapper(meta);
	}

	// generate java model class
	private void generateModel(TableMeta meta) throws Exception {
		Template template = configuration.getTemplate("model.ftl");
		logger.info("Use template file: {}. ", template.getName());

		String className = meta.getClassName();

		dataModel.put("meta", meta);
		dataModel.put("javaPackage", javaPackage);

		File javaFile = createFile(className + JAVA_FILE_SUFFIX);
		template.process(dataModel, new FileWriter(javaFile));
	}

	// generate mybatis mapper xml
	private void generateMapper(TableMeta meta) throws Exception {
		Template template = configuration.getTemplate("mapper.ftl");
		logger.info("Use template file: {}. ", template.getName());

		dataModel.put("meta", meta);
		dataModel.put("javaPackage", javaPackage);
		dataModel.put("columnPrefix", columnPrefix);

		File mapperFile = createFile(meta.getMapperName() + MAPPER_FILE_SUFFIX);
		template.process(dataModel, new FileWriter(mapperFile));
	}

	private File createFile(String fileName) throws IOException {
		File newFile = new File(outputPath + "//" + fileName);
		if (!newFile.exists()) {
			newFile.createNewFile();
		}
		return newFile;
	}

}
