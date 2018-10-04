package com.arc.faststart.service.impl;

import com.arc.faststart.mapper.FileMapper;
import com.arc.faststart.model.domain.File;
import com.arc.faststart.service.FileService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class FileServiceImpl implements FileService {

    @Autowired
    private FileMapper fileMapper;

    @Override
    public Long save(File file) {
        fileMapper.save(file);
        return file.getId();
    }

    @Override
    public File get(Long id) {
        return fileMapper.get(id);
    }

    @Override
    public File getByFilePath(String filePath) {
        return fileMapper.getByFilePath(filePath);
    }

    @Override
    public File getByUrl(String url) {
        return fileMapper.getByUrl(url);
    }

    @Override
    public List<File> list() {
        return fileMapper.list();
    }
}
