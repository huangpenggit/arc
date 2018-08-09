package com.arc.environment.repository;

import com.arc.model.enviroment.ProjectEnvironment;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * 环境持久层操作接口
 */
//@Repository
//@Service
//@NoRepositoryBean
public interface ProjectEnvironmentRepository extends JpaRepository<ProjectEnvironment, Long> {


    //根据学生姓名查询数据
     List<ProjectEnvironment> findByName(String name);

}
