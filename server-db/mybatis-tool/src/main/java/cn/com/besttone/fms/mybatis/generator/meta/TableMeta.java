package cn.com.besttone.fms.mybatis.generator.meta;

import java.io.Serializable;
import java.util.List;

import cn.com.besttone.fms.mybatis.generator.utils.StringUtils;

public class TableMeta implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7882709987486416365L;
	
	private String tableName;
	
	private String tableSchema;
	
	private String tableComment;
	
	private List<ColumnMeta> columns;

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public String getTableSchema() {
		return tableSchema;
	}

	public void setTableSchema(String tableSchema) {
		this.tableSchema = tableSchema;
	}

	public String getTableComment() {
		return tableComment;
	}

	public void setTableComment(String tableComment) {
		this.tableComment = tableComment;
	}

	public List<ColumnMeta> getColumns() {
		return columns;
	}

	public void setColumns(List<ColumnMeta> columns) {
		this.columns = columns;
	}
	
	public String getClassName() {
		String name = null;
		if (tableName.startsWith("t_")) {
			name = tableName.substring(2);
		} else if (tableName.startsWith("sys_")) {
			name = tableName.substring(4);
		}
		
		if (name != null) {
			String[] arr = name.split("_");
			StringBuilder sb = new StringBuilder();
			for (String s : arr) {
				sb.append(StringUtils.upperCaseFirstWord(s));
			}
			return sb.toString();
		}
		
		return tableName;
	}
	
	public boolean isDateTypeExists() {
		for (ColumnMeta col : columns) {
			if (col.getDataType().equalsIgnoreCase("date") 
					|| col.getDataType().equalsIgnoreCase("datetime") 
					|| col.getDataType().equalsIgnoreCase("time") 
					|| col.getDataType().equalsIgnoreCase("timestamp")) {
				return true;
			}
		}
		return false;
	}
	

	public String getMapperName() {
		return getClassName() + "Mapper";
	}
	
	public String getResultMapId() {
		return StringUtils.lowerCaseFirstWord(getClassName());
	}
	
}
