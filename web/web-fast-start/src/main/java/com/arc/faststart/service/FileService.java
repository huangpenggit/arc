package com.arc.faststart.service.impl;

import com.arc.model.domain.common.File;

public interface FileService {

    File get(int id);

    Long save(File file);

    File getByFilePath( String filePath);

    File getByUrl( String url);
}
