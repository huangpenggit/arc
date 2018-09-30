package com.arc.post.service.impl;

import com.arc.post.model.User;
import com.arc.post.service.UserService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service
public class UserServcieImpl implements UserService {
    @Override
    public List<User> list() {
        ArrayList<User> users = new ArrayList<>();
        User user = new User("admin", "admin", 1);
        users.add(user);
        return users;
    }

    @Override
    public User get(Long id) {
        User user = new User("bbb", "bbb", Integer.parseInt(String.valueOf(id)));
        return user;
    }
}
