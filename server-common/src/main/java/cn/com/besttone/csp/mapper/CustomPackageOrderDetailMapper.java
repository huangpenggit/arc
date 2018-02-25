package cn.com.besttone.csp.mapper;

import cn.com.besttone.csp.model.custom.CustomPackageOrderDetail;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CustomPackageOrderDetailMapper {
    int deleteByPrimaryKey(@Param("orderNo") String orderNo, @Param("packageCode") String packageCode);

    int insert(CustomPackageOrderDetail record);

    CustomPackageOrderDetail selectByPrimaryKey(@Param("orderNo") String orderNo, @Param("packageCode") String packageCode);

    List<CustomPackageOrderDetail> selectAll();

    int updateByPrimaryKey(CustomPackageOrderDetail record);
}