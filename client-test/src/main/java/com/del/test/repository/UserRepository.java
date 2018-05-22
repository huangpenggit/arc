package com.del.test.repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.security.core.userdetails.User;

/**
 *  操作MongoDB数据库
 */
public interface UserRepository extends MongoRepository<User, Long> {
}