package com.mybatis.generator.mapper;

import org.apache.ibatis.annotations.Param;

import com.mybatis.generator.meta.TableMeta;

public interface MetaMapper {

	TableMeta get(@Param("tableSchema") String tableSchema, @Param("tableName") String tableName);
}
