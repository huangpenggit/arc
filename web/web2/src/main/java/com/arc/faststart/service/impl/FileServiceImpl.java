package com.arc.faststart.service.impl;

import com.arc.faststart.model.domain.File;
import com.arc.faststart.repository.FileRepository;
import com.arc.faststart.service.FileService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class FileServiceImpl implements FileService {

    @Autowired
    private FileRepository fileRepository;

    @Override
    public Long save(File file) {
        fileRepository.save(file);
        return file.getId();
    }

    @Override
    public File update(File file) {
        return fileRepository.save(file);
    }

    @Override
    public File get(Long id) {
        return fileRepository.getOne(id);
    }

    @Override
    public File findByFilePath(String filePath) {
        return fileRepository.findByPath(filePath);
    }

    @Override
    public File findByUrl(String url) {
        return fileRepository.findByUrl(url);
    }

    @Override
    public List<File> list() {
        return fileRepository.findAll();
    }
}
