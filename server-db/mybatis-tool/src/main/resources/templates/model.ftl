package ${javaPackage};

<#if meta.dateTypeExists>
import java.util.Date;

</#if>
import cn.com.besttone.fms.model.BaseModel;
import lombok.Getter;
import lombok.Setter;

/*
 * ${meta.tableComment}
 *
 * Auto generated by fms-mybatis-generator
 */
@Getter
@Setter
public class ${meta.className} extends BaseModel {

	private static final long serialVersionUID = 1L;
	
<#list meta.columns as col>
	private ${col.modelFieldType} ${col.fieldName}; // ${col.columnComment}
	
</#list>
}