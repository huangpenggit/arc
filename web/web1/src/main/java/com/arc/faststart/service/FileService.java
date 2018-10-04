package com.arc.faststart.service;

import com.arc.model.domain.common.SystemFile;

import java.util.List;

/**
 * JAVA项目是分层来写的，
 * 这是服务层，目的是处理业务，
 */
public interface FileService {

    Long save(SystemFile systemFile);

    int delete(Long id);

    int update(SystemFile systemFile);

    SystemFile get(Long id);

    SystemFile getByFilePath(String filePath);

    SystemFile getByUrl(String url);

    List<SystemFile> list();

    SystemFile getByFilename(String filename);

    SystemFile getLatest();
}
