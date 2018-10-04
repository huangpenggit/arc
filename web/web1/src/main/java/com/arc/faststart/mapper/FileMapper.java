package com.arc.faststart.mapper;

import com.arc.model.domain.common.File;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * JAVA项目是分层来写的，
 * 这是持久层，目的是与数据库交互，
 */
public interface FileMapper {

    int save(File file);

    int delete(Long id);

    int update(File file);

    List<File> list();

    File getLatest();

    File get(Long id);

    File getByFilename(@Param("name") String filename);

    File getByFilePath(@Param("filePath") String filePath);

    File getByUrl(@Param("url") String url);
}
