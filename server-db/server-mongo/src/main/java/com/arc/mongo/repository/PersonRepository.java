package com.arc.mongo.repository;

import com.arc.model.domain.common.Person;
import org.springframework.data.mongodb.repository.MongoRepository;

/**
 *  操作mongodb数据库
 */
public interface PersonRepository extends MongoRepository<Person, Long> {
}
