package com.arc.faststart.service.impl;

import com.arc.faststart.mapper.FileMapper;
import com.arc.faststart.service.FileService;
import com.arc.model.domain.common.File;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class FileServiceImpl implements FileService {

    @Autowired
    private FileMapper mapper;

    @Override
    public Long save(File file) {
        mapper.save(file);
        return file.getId();
    }

    @Override
    public File get(Long id) {
        return mapper.get(id);
    }

    @Override
    public File getByFilePath(String filePath) {
        return mapper.getByFilePath(filePath);
    }

    @Override
    public File getByUrl(String url) {
        return mapper.getByUrl(url);
    }

    @Override
    public List<File> list() {
        return mapper.list();
    }

    @Override
    public int delete(Long id) {
        return mapper.delete(id);
    }

    @Override
    public int update(File file) {
        return mapper.update(file);
    }

    @Override
    public File getByFilename(String filename) {
        return mapper.getByFilename(filename);
    }

    @Override
    public File getLatest() {
        return mapper.getLatest();
    }
}
