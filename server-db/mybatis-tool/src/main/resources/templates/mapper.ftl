<?xml version="1.0" encoding="UTF-8" ?>  
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<!-- Mybatis mapper for ${meta.className} -->
<#assign pkColumnName = ''>
<#assign pkFieldName = ''>
<#assign pkMapperJavaType = ''>
<#assign pkMapperJdbcType = ''>
<#macro pound>#</#macro>

<mapper namespace="cn.com.besttone.fms.mapper.${meta.mapperName}">

	<resultMap id="${meta.resultMapId}" type="${javaPackage}.${meta.className}">
	<#list meta.columns as col>
		<#if col.columnKey == 'PRI'>
		<id property="${col.fieldName}" column="${columnPrefix}${col.columnName}" javaType="${col.mapperJavaType}" jdbcType="${col.mapperJdbcType}" />
		<#assign pkColumnName = col.columnName>
		<#assign pkFieldName = col.fieldName>
		<#assign pkMapperJavaType = col.mapperJavaType>
		<#assign pkMapperJdbcType = col.mapperJdbcType>
		<#else>
		<result property="${col.fieldName}" column="${columnPrefix}${col.columnName}" javaType="${col.mapperJavaType}" jdbcType="${col.mapperJdbcType}" />
		</#if>
	</#list>
	</resultMap>
	
	<sql id="sql${meta.className}Columns">
	<#list meta.columns as col>
		<#if col_has_next>
		${columnPrefix}.${col.columnName} AS ${columnPrefix}${col.columnName},
		<#else>
		${columnPrefix}.${col.columnName} AS ${columnPrefix}${col.columnName}
		</#if>
	</#list>
	</sql>
	
	<select id="get" parameterType="${pkMapperJavaType}" resultMap="${meta.resultMapId}">
		SELECT <include refid="sql${meta.className}Columns" /> 
        FROM ${meta.tableName} ${columnPrefix}
        WHERE ${columnPrefix}.${pkColumnName} = <@pound></@pound>{${pkFieldName},jdbcType=${pkMapperJdbcType}}
	</select>
	
	<insert id="save" parameterType="${javaPackage}.${meta.className}" useGeneratedKeys="true" keyProperty="${pkFieldName}">
		INSERT INTO ${meta.tableName} (
		<#list meta.columns as col>
		<#if col.columnKey != 'PRI' && col.columnName != 'update_time' && col.columnName != 'update_user'>
		<#if col_has_next>
			${col.columnName},
		<#else>
			${col.columnName}
		</#if>
		</#if>
		</#list>
		} VALUES (
		<#list meta.columns as col>
		<#if col.columnKey != 'PRI' && col.columnName != 'update_time' && col.columnName != 'update_user'>
		<#if col_has_next>
			<@pound></@pound>{${col.fieldName},jdbcType=${col.mapperJdbcType}},
		<#else>
			<@pound></@pound>{${col.fieldName},jdbcType=${col.mapperJdbcType}}
		</#if>
		</#if>
		</#list>
		)
	</insert>
	
	<update id="update" parameterType="${javaPackage}.${meta.className}">
		UPDATE ${meta.tableName}
		<set>
		<#list meta.columns as col>
		<#if col.columnKey != 'PRI' && col.columnName != 'create_time' && col.columnName != 'create_user'>
		<#if col.mapperJdbcType == 'VARCHAR'>
			<if test="${col.fieldName} != null and ${col.fieldName} != ''">
				${col.columnName} = <@pound></@pound>{${col.fieldName},jdbcType=${col.mapperJdbcType}},
			</if>
		<#else>
			<if test="${col.fieldName} != null">
				${col.columnName} = <@pound></@pound>{${col.fieldName},jdbcType=${col.mapperJdbcType}},
			</if>
		</#if>
		</#if>
		</#list>
		</set>
		WHERE ${pkColumnName} = <@pound></@pound>{${pkFieldName},jdbcType=${pkMapperJdbcType}}
	</update>
	
</mapper>
