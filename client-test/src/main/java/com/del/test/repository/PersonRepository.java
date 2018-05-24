package com.del.test.repository;

import com.del.doamin.Person;
import org.springframework.data.mongodb.repository.MongoRepository;

/**
 * JPA 操作数据库
 */
public interface PersonRepository extends MongoRepository<Person, Long> {
//    void delete(Long id);
}