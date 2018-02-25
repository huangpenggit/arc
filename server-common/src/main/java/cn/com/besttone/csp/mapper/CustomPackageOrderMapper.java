package cn.com.besttone.csp.mapper;

import cn.com.besttone.csp.model.custom.CustomPackageOrder;
import java.util.List;

public interface CustomPackageOrderMapper {
    int deleteByPrimaryKey(String orderNo);

    int insert(CustomPackageOrder record);

    CustomPackageOrder selectByPrimaryKey(String orderNo);

    List<CustomPackageOrder> selectAll();

    int updateByPrimaryKey(CustomPackageOrder record);
}