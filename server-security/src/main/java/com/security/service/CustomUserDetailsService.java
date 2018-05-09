package com.security.service;

import com.security.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;



@Service
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired  //数据库服务类
    private UserMapper userMapper;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        //SUser对应数据库中的用户表，是最终存储用户和密码的表，可自定义

//            private String password;
//            private  String username;
//            private  Set<GrantedAuthority> authorities;
//            private  boolean accountNonExpired;
//            private  boolean accountNonLocked;
//            private  boolean credentialsNonExpired;
//            private  boolean enabled;


        com.security.domain.User  user = userMapper.selectByUsername(username);

        if (user == null) {

            throw new UsernameNotFoundException("UserName " + username + " not found");

        }

        // SecurityUser实现UserDetails并将SUser的Email映射为username
//        SecurityUser securityUser = new SecurityUser(user);
//        Collection<SimpleGrantedAuthority> authorities = new ArrayList<SimpleGrantedAuthority>();
//        authorities.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
//        return securityUser;
//

        return null;
    }

}
