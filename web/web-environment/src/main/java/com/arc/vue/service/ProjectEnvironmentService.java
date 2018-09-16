package com.arc.vue.service;


import com.arc.model.enviroment.ProjectEnvironment;

import java.util.List;
import java.util.Optional;

/**
 * ProjectEnvironment 业务层接口
 */
public interface ProjectEnvironmentService {

    List<ProjectEnvironment> findAll();

//    User insertByUser(User user);

    ProjectEnvironment save(ProjectEnvironment projectEnvironment);

    ProjectEnvironment update(ProjectEnvironment projectEnvironment);

    void delete(Long id);

    Optional<ProjectEnvironment> findById(Long id);
}
