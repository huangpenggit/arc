/*
package com.security.service.impl;


import com.security.domain.SecurityUser;
import com.security.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collection;

//import org.springframework.security.core.userdetails.User;

@Service
public class CustomUserDetailsService implements UserDetailsService {
    @Autowired  //数据库服务类
    private UserMapper userMapper;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        //SUser对应数据库中的用户表，是最终存储用户和密码的表，可自定义
        //本例使用SUser中的email作为用户名:
        */
/*
            private String password;
            private final String username;
            private final Set<GrantedAuthority> authorities;
            private final boolean accountNonExpired;
            private final boolean accountNonLocked;
            private final boolean credentialsNonExpired;
            private final boolean enabled;
         *//*

        com.security.domain.User  user = userMapper.selectByUsername(username);

        if (user == null) {

            throw new UsernameNotFoundException("UserName " + username + " not found");

        }

        // SecurityUser实现UserDetails并将SUser的Email映射为username
        SecurityUser securityUser = new SecurityUser(user);
        Collection<SimpleGrantedAuthority> authorities = new ArrayList<SimpleGrantedAuthority>();
        authorities.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
        return securityUser;

    }

}
*/
