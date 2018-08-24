//package com.arc.arc.service;
//
//import com.arc.arc.domain.User;
//import com.arc.arc.mapper.UserMapper;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import java.util.List;
//@Service
//@Transactional
//public class UserServiceImpl implements IUserService {
//    @Autowired
//    private UserMapper userMapper;
//    @Override
//    public int deleteByPrimaryKey(Long id) {
//        return userMapper.deleteByPrimaryKey(id);
//    }
//
//    @Override
//    public int save(User record) {
//        return userMapper.insert(record);
//    }
//
//    @Override
//    public User queryByPrimaryKey(Long id) {
//        return userMapper.selectByPrimaryKey(id);
//    }
//
//    @Override
//    public List<User> queryAll() {
//        return userMapper.selectAll();
//    }
//
//    @Override
//    public int update(User record) {
//        return userMapper.updateByPrimaryKey(record);
//    }
//}
