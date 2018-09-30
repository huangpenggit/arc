package com.arc.faststart.repository;

import com.arc.faststart.model.domain.File;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * 持久层操作接口
 * File相关的增删改查
 * 注意JPA命名规范，请查资料！！！
 *
 * @author yechao
 * @date 21/07/2017.
 */
public interface FileRepository extends JpaRepository<File, Long> {

    File findByPath(String path);

    File findByUrl(String url);
}
