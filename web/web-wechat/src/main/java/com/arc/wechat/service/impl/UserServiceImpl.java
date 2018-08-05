//package com.arc.wechat.service.impl;
//
//import com.arc.model.common.User;
//import com.arc.service.common.UserService;
//import com.arc.wechat.mapper.one.UserMapper;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import java.util.List;
//
////import com.arc.wechat.mapper.UserMapper;
//
//@Service
////@Transactional
//public class UserServiceImpl implements UserService {
//    @Autowired
//    private UserMapper userMapper;
//
//    @Override
//    public Long save(User user) {
//        userMapper.save(user);
//        return user.getId();
//    }
//
//    @Override
//    public Integer delete(Long id) {
//        return userMapper.delete(id);
//    }
//
//    @Override
//    public Integer update(User user) {
//        return userMapper.update(user);
//    }
//
//    @Override
//    public User get(Long id) {
//        return userMapper.get(id);
//    }
//
//    @Override
//    public List<User> list() {
//        return userMapper.list();
//    }
//}
