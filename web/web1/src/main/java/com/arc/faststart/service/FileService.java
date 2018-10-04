package com.arc.faststart.service;

import com.arc.model.domain.common.File;

import java.util.List;

/**
 * JAVA项目是分层来写的，
 * 这是服务层，目的是处理业务，
 */
public interface FileService {

    Long save(File file);

    int delete(Long id);

    int update(File file);

    File get(Long id);

    File getByFilePath(String filePath);

    File getByUrl(String url);

    List<File> list();

    File getByFilename(String filename);

    File getLatest();
}
