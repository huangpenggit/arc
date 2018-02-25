package cn.com.besttone.csp.mapper;

import cn.com.besttone.csp.model.custom.CustomPackageRelation;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CustomPackageRelationMapper {
    int deleteByPrimaryKey(@Param("customId") Long customId, @Param("packageCode") String packageCode);

    int insert(CustomPackageRelation record);

    CustomPackageRelation selectByPrimaryKey(@Param("customId") Long customId, @Param("packageCode") String packageCode);

    List<CustomPackageRelation> selectAll();

    int updateByPrimaryKey(CustomPackageRelation record);
}