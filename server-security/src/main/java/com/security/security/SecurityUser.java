/*
package com.security.security;

import com.security.domain.User;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;

*/
/**
 * spring security  内部认的 用户
 * Spring Security中，用户信息保存在SecurityContextHolder中
 *//*

public class SecurityUser implements UserDetails {

	*/
/**
	 * 
	 *//*

	private static final long serialVersionUID = -3398892872793452L;
	
	private User user;//
	
	private Collection<GrantedAuthority> authorities;//spring security 内部用户的 资源（权限）




    //类似构造器
	private SecurityUser(User user) {
		super();
		this.user = user;
		authorities = new ArrayList<>();
	}
	
	public static SecurityUser build(User user) {
		return new SecurityUser(user);
	}
	
	public User getUser() {
		return user;
	}

    public SecurityUser() {
    }

    @Override
	public String getUsername() {
		return user.getUsername();
	}//username

	@Override
	public String getPassword() {
		return user.getPassword();
	}//password

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {//授权信息
		return authorities;
//        GrantedAuthority[] grantedAuthorities = authorities.toArray(new GrantedAuthority[authorities.size()]);
    }
//    @Override
//    public Collection<? extends GrantedAuthority> getAuthorities() {//授权信息
//        List<GrantedAuthority> auths = new ArrayList<>();
//        List<Role> roles = this.user.getRoles();
//        for (Role role : roles) {
//            auths.add(new SimpleGrantedAuthority(role.getRoleName()));
//        }
//        return auths;
//    }

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

    public void setUser(User user) {
        this.user = user;
    }

    public void setAuthorities(Collection<GrantedAuthority> authorities) {
        this.authorities = authorities;
    }
}
*/
