/*
package com.security.security;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

*/
/**
 *  获取安全信息的工具类
 * 从ecurityContextHolder中获取
 * @author Qianyong.Deng
 *
 *//*

public final class SecurityHolder {
	
	*/
/**
	 * 得到当前登录用户
	 * 
	 * @return 
	 *//*

	public static SecurityUser loginUser() {
		return (SecurityUser) SecurityContextHolder.getContext()
				.getAuthentication().getPrincipal();
	}
	
	*/
/**
	 * 得到当前登录用户的凭证信息
	 * 
	 * @return
	 *//*

	public static Authentication getAuthentication() {
		return SecurityContextHolder.getContext()
				.getAuthentication();
	}

    Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

	//获取登陆主体的username
    public static String getUsername(SecurityUser principal) {//spring security 的登陆主体对象
        String username = null;
        if (principal instanceof UserDetails) {
             username = ((UserDetails) principal).getUsername();
        } else {
             username = principal.toString();
        }
        return username;
    }

}
*/
