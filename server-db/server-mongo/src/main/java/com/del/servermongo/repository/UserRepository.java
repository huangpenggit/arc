package com.del.servermongo.repository;

import com.del.model.common.User;
import org.springframework.data.mongodb.repository.MongoRepository;

/**
 *  操作MongoDB数据库
 */
public interface UserRepository extends MongoRepository<User, Long> {
}