package cn.com.besttone.csp.mapper;

import cn.com.besttone.csp.model.custom.Custom;
import java.util.List;

public interface CustomMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Custom record);

    Custom selectByPrimaryKey(Long id);

    List<Custom> selectAll();

    int updateByPrimaryKey(Custom record);
}