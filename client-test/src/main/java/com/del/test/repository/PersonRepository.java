package com.del.test.repository;

import com.del.test.model.Person;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * JPA 操作数据库
 */
public interface PersonRepository extends JpaRepository<Person, Long> {
    void delete(Long id);
}