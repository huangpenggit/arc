package cn.com.besttone.csp.mapper;

import cn.com.besttone.csp.model.custom.CustomTypeInfo;
import java.util.List;

public interface CustomTypeInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CustomTypeInfo record);

    CustomTypeInfo selectByPrimaryKey(Integer id);

    List<CustomTypeInfo> selectAll();

    int updateByPrimaryKey(CustomTypeInfo record);
}