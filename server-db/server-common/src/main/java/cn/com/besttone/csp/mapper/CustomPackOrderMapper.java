package cn.com.besttone.csp.mapper;

import cn.com.besttone.csp.model.custom.CustomPackOrder;
import java.util.List;

public interface CustomPackOrderMapper {
    int deleteByPrimaryKey(String orderNo);

    int insert(CustomPackOrder record);

    CustomPackOrder selectByPrimaryKey(String orderNo);

    List<CustomPackOrder> selectAll();

    int updateByPrimaryKey(CustomPackOrder record);
}