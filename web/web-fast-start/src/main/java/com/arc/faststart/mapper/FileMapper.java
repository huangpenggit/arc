package com.arc.faststart.mapper;

import com.arc.model.domain.common.File;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FileMapper   {

    File get(Long id);

    int save(File file);

    List<File> list();

    File getByFilePath(@Param("filePath") String filePath);

    File getByUrl(@Param("url") String url);
}
