package cn.com.besttone.csp.mapper;

import cn.com.besttone.csp.model.custom.CustomFamilyRecord;
import java.util.List;

public interface CustomFamilyRecordMapper {
    int deleteByPrimaryKey(Long id);

    int insert(CustomFamilyRecord record);

    CustomFamilyRecord selectByPrimaryKey(Long id);

    List<CustomFamilyRecord> selectAll();

    int updateByPrimaryKey(CustomFamilyRecord record);
}