package com.arc.mongo.repository;

import com.arc.model.domain.common.User;
import org.springframework.data.mongodb.repository.MongoRepository;

/**
 *  操作MongoDB数据库
 */
public interface UserRepository extends MongoRepository<User, Long> {
}
