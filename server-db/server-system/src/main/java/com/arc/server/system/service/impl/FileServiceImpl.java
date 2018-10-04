package com.arc.server.system.service.impl;

import com.arc.model.domain.common.SystemFile;
import com.arc.server.system.mapper.FileMapper;
import com.arc.server.system.service.FileService;
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
    public Long save(SystemFile systemFile) {
        mapper.save(systemFile);
        return systemFile.getId();
    }

    @Override
    public SystemFile get(Long id) {
        return mapper.get(id);
    }

    @Override
    public SystemFile getByFilePath(String filePath) {
        return mapper.getByFilePath(filePath);
    }

    @Override
    public SystemFile getByUrl(String url) {
        return mapper.getByUrl(url);
    }

    @Override
    public List<SystemFile> list() {
        return mapper.list();
    }

    @Override
    public int delete(Long id) {
        return mapper.delete(id);
    }

    @Override
    public int update(SystemFile systemFile) {
        return mapper.update(systemFile);
    }

    @Override
    public SystemFile getByFilename(String filename) {
        return mapper.getByFilename(filename);
    }

    @Override
    public SystemFile getLatest() {
        return mapper.getLatest();
    }
}
