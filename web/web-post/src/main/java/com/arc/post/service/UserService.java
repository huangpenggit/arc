package com.arc.post.service;

import com.arc.post.model.User;

import java.util.List;

public interface UserService {

    List<User> list();

    User get(Long id);


}
