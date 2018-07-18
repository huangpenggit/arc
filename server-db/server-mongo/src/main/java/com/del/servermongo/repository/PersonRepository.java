package com.del.servermongo.repository;

import com.del.model.common.Person;
import org.springframework.data.mongodb.repository.MongoRepository;

/**
 *  操作mongodb数据库
 */
public interface PersonRepository extends MongoRepository<Person, Long> {
}