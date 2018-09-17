package com.arc.faststart.mapper;

import com.arc.model.domain.common.File;
import org.apache.ibatis.annotations.Param;

public interface FileMapper   {

    File get(int id);

    int save(File file);

    File getByFilePath(@Param("filePath") String filePath);

    File getByUrl(@Param("url") String url);
}
