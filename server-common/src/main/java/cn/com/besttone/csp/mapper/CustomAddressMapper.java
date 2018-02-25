package cn.com.besttone.csp.mapper;

import cn.com.besttone.csp.model.custom.CustomAddress;
import java.util.List;

public interface CustomAddressMapper {
    int deleteByPrimaryKey(Long id);

    int insert(CustomAddress record);

    CustomAddress selectByPrimaryKey(Long id);

    List<CustomAddress> selectAll();

    int updateByPrimaryKey(CustomAddress record);
}