package com.security.domain;

import lombok.Data;
import org.springframework.security.core.GrantedAuthority;

import java.util.Collection;

@Data
public class User  extends org.springframework.security.core.userdetails.User  {


    private Long id;

    private String username;

    private String password;

    private String accessToken;


    public User(String username, String password, Collection<? extends GrantedAuthority> authorities) {
        super(username, password, authorities);
    }

    public User(String username, String password, boolean enabled, boolean accountNonExpired, boolean credentialsNonExpired, boolean accountNonLocked, Collection<? extends GrantedAuthority> authorities) {
        super(username, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
    }

//==================================================
//                     UserDetails 接口 可以获取的参数
//==================================================
//    Collection<? extends GrantedAuthority> getAuthorities();

//    String getPassword();

//    String getUsername();

//    boolean isAccountNonExpired();

//    boolean isAccountNonLocked();

//    boolean isCredentialsNonExpired();

//    boolean isEnabled();






}