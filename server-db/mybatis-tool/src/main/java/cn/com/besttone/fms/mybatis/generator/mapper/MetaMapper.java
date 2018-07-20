package cn.com.besttone.fms.mybatis.generator.mapper;

import org.apache.ibatis.annotations.Param;

import cn.com.besttone.fms.mybatis.generator.meta.TableMeta;

public interface MetaMapper {

	TableMeta get(@Param("tableSchema") String tableSchema, @Param("tableName") String tableName);
}
