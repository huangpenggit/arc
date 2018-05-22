package com.del.test.service.impl;

import com.del.test.repository.UserRepository;
import com.del.test.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public User save(User user) {
        return userRepository.save(user);
    }

    @Override
    public User get(String areaCode) {
        return null;
    }

    @Override
    public List<User> list() {
        return null;
    }
}
