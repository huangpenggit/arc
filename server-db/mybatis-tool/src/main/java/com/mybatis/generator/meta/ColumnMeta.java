package com.mybatis.generator.meta;

import com.mybatis.generator.utils.StringUtils;
import org.apache.ibatis.type.JdbcType;

import java.io.Serializable;

public class ColumnMeta implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1014329227365901804L;

	private String tableName;
	
	private String tableSchema;
	
	private String columnName;
	
	private String columnKey;
	
	private String dataType;
	
	private String columnComment;
	
	private Integer ordinalPosition;
	
	private String columnDefault;
	
	private String isNullable;

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

	public String getColumnName() {
		return columnName;
	}

	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}

	public String getColumnKey() {
		return columnKey;
	}

	public void setColumnKey(String columnKey) {
		this.columnKey = columnKey;
	}

	public String getDataType() {
		return dataType;
	}

	public void setDataType(String dataType) {
		this.dataType = dataType;
	}

	public String getColumnComment() {
		return columnComment;
	}

	public void setColumnComment(String columnComment) {
		this.columnComment = columnComment;
	}

	public Integer getOrdinalPosition() {
		return ordinalPosition;
	}

	public void setOrdinalPosition(Integer ordinalPosition) {
		this.ordinalPosition = ordinalPosition;
	}

	public String getColumnDefault() {
		return columnDefault;
	}

	public void setColumnDefault(String columnDefault) {
		this.columnDefault = columnDefault;
	}

	public String getIsNullable() {
		return isNullable;
	}

	public void setIsNullable(String isNullable) {
		this.isNullable = isNullable;
	}
	
	public String getFieldName() {
		String[] arr = columnName.split("_");
		StringBuilder sb = new StringBuilder();
		for (String s : arr) {
			sb.append(StringUtils.upperCaseFirstWord(s));
		}
		return StringUtils.lowerCaseFirstWord(sb.toString());
	}
	
	public String getModelFieldType() {
		switch (dataType) {
		case "bigint": return "Long";
		case "int": return "Integer";
		case "integer": return "Integer";
		case "date": return "Date";
		case "time": return "Date";
		case "datetime": return "Date";
		case "timestamp": return "Date";
		case "char": return "String";
		case "varchar": return "String";
		case "text": return "String";
		case "longtext": return "String";
		default: return "Object";
		}
	}
	
	public String getMapperJavaType() {
		switch (dataType) {
		case "bigint": return "long";
		case "int": return "int";
		case "integer": return "int";
		case "date": return "java.util.Date";
		case "time": return "java.util.Date";
		case "datetime": return "java.util.Date";
		case "timestamp": return "java.util.Date";
		case "char": return "string";
		case "varchar": return "string";
		case "text": return "string";
		case "longtext": return "string";
		default: return "";
		}
	}
	
	public String getMapperJdbcType() {
		switch (dataType) {
		case "bigint": return JdbcType.BIGINT.name();
		case "int": return JdbcType.INTEGER.name();
		case "integer": return JdbcType.INTEGER.name();
		case "date": return JdbcType.TIMESTAMP.name();
		case "time": return JdbcType.TIMESTAMP.name();
		case "datetime": return JdbcType.TIMESTAMP.name();
		case "timestamp": return JdbcType.TIMESTAMP.name();
		case "char": return JdbcType.VARCHAR.name();
		case "varchar": return JdbcType.VARCHAR.name();
		case "text": return JdbcType.VARCHAR.name();
		case "longtext": return JdbcType.VARCHAR.name();
		default: return "";
		}
	}
	
}
