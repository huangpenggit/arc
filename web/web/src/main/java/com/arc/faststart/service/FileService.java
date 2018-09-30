package com.arc.faststart.service;

import com.arc.faststart.model.domain.File;

import java.util.List;

/**
 * JAVA项目是分层来写的，
 * 这是服务层，目的是处理业务，
 */
public interface FileService {

    File get(Long id);

    Long save(File file);

    File getByFilePath(String filePath);

    File getByUrl(String url);


    List<File> list();

}
