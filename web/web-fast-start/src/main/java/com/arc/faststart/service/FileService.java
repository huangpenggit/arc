package com.arc.faststart.service.impl;

import com.arc.model.domain.common.File;

import java.util.List;

public interface FileService {

    File get(Long id);

    Long save(File file);

    File getByFilePath( String filePath);

    File getByUrl( String url);


    List<File> list();

}
