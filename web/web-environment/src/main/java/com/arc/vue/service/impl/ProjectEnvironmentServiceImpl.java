package com.arc.vue.service.impl;

import com.arc.vue.repository.ProjectEnvironmentRepository;
import com.arc.vue.service.ProjectEnvironmentService;
import com.arc.model.enviroment.ProjectEnvironment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProjectEnvironmentServiceImpl implements ProjectEnvironmentService {

    @Autowired
    private ProjectEnvironmentRepository projectEnvironmentRepository;

    @Override
    public List<ProjectEnvironment> findAll() {
        return projectEnvironmentRepository.findAll();
    }

    @Override
    public ProjectEnvironment save(ProjectEnvironment projectEnvironment) {
        return projectEnvironmentRepository.save(projectEnvironment);
    }

    @Override
    //修改一个学生(jpa是根据id来修改的)
    public ProjectEnvironment update(ProjectEnvironment projectEnvironment) {
        return projectEnvironmentRepository.save(projectEnvironment);
    }

    @Override
    public void delete(Long id) {
         projectEnvironmentRepository.deleteById(id);
    }

    @Override
    public Optional<ProjectEnvironment> findById(Long id) {
        return projectEnvironmentRepository.findById(id);
    }
}
