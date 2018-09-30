package com.arc.faststart.mapper;

import com.arc.faststart.model.domain.File;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * JAVA项目是分层来写的，
 * 这是持久层，目的是与数据库交互，
 */
public interface FileMapper {

    File get(Long id);

    int save(File file);

    List<File> list();

    File getByFilePath(@Param("filePath") String filePath);

    File getByUrl(@Param("url") String url);
}
