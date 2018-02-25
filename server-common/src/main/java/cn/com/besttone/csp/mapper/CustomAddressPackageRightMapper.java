package cn.com.besttone.csp.mapper;

import cn.com.besttone.csp.model.custom.CustomAddressPackageRight;
import java.util.List;

public interface CustomAddressPackageRightMapper {
    int deleteByPrimaryKey(Long id);

    int insert(CustomAddressPackageRight record);

    CustomAddressPackageRight selectByPrimaryKey(Long id);

    List<CustomAddressPackageRight> selectAll();

    int updateByPrimaryKey(CustomAddressPackageRight record);
}