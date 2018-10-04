package com.arc.server.system.mapper;

import com.arc.model.domain.common.SystemFile;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * JAVA项目是分层来写的，
 * 这是持久层，目的是与数据库交互，
 */
public interface FileMapper {

    int save(SystemFile systemFile);

    int delete(Long id);

    int update(SystemFile systemFile);

    List<SystemFile> list();

    SystemFile getLatest();

    SystemFile get(Long id);

    SystemFile getByFilename(@Param("name") String filename);

    SystemFile getByFilePath(@Param("filePath") String filePath);

    SystemFile getByUrl(@Param("url") String url);
}
