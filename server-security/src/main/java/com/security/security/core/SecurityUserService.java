/*
package com.security.security.core;

import cn.com.besttone.csp.model.sys.Realm;
import cn.com.besttone.csp.model.sys.Role;
import cn.com.besttone.csp.model.sys.User;
import cn.com.besttone.csp.web.security.SecurityUser;
import cn.com.besttone.csp.web.service.system.RealmService;
import cn.com.besttone.csp.web.service.system.UserService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service("securityUserService")
*/
/**
 * 从数据库中获取用户信息
 * 实现一个方法：loadUserByUsername
 * 作用 即从数据库中取出用户名、密码以及权限相关的信息。最后返回一个UserDetails 实现类
 *//*

public class SecurityUserService implements UserDetailsService {
    private static final Log logger = LogFactory.getLog(SecurityUserService.class);
//    @Autowired
//    UserService userService;
//    @Autowired
//    private RealmService realmService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        logger.debug(" username : " + username);
        User user = userService.getByUsername(username);//查数据库获得user
        logger.debug(" user : " + user);
        if (user == null) {
            throw new UsernameNotFoundException("User [ " + username + " ] not found. ");
        }

        ArrayList<GrantedAuthority> authsList = new ArrayList<>();
        List<String> listNames = new ArrayList<>();
        Set set = new HashSet();//去重

        if (user.getRoles().size() > 0) {
            for (Role role : user.getRoles()) {
                List<Realm> realms = realmService.getByRole(role.getId());//根据角色对应的 资源（权限）
                for (Realm resources : realms) {
                    String realmName = resources.getRealmName();
                    if (resources != null && realmName != null) {//资源非空 资源名称非空
                        set.add(realmName);
                    }
                }
            }
            logger.debug(" 用户拥有权益的set : " + set.toString());
            for (Object realmName : set) {
                authsList.add(new SimpleGrantedAuthority((String) realmName));                        //1：此处将权限信息添加到 GrantedAuthority 对象中，在后面进行全权限验证时会使用GrantedAuthority 对象。
            }
        }
        logger.debug("所有的权益 "+authsList.toString());
        //SecurityUser securityUser = .build(user);//built 方法返回的user 有属性 username password  authsList   还有user实体

        SecurityUser securityUser = new SecurityUser();
        securityUser.setUser(user);
        securityUser.setAuthorities(authsList);
        logger.debug("SecurityUser "+securityUser.toString());
        return securityUser;
    }
}
*/
