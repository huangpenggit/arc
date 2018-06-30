/*
package com.security.security.core;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.security.access.AccessDecisionManager;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.authentication.InsufficientAuthenticationException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.Iterator;

// FIXME TO叶超 第2点 其实可以不用自定义决策器，用security自带的就足够了
// 做法：在UserDetailsService中，加载User和对应的Role，这样GrantedAuthority中就用Role的id或者name
// 在metadata中，用path和role做为键值对。这样请求来的时候 比较path 取出role进行GrantedAuthority的比较
// 可以少写很多代码

*/
/**
 * 授权决策器
 *
 * @author 叶超
 *//*

@Service
public class MyAccessDecisionManager implements AccessDecisionManager {
    private static final Log logger = LogFactory.getLog(MyAccessDecisionManager.class);

    // decide 方法是判定是否拥有权限的决策方法，
    //authentication 是释CustomUserService中循环添加到 GrantedAuthority 对象中的权限信息集合.
    //object 包含客户端发起的请求的requset信息，可转换为 HttpServletRequest request = ((FilterInvocation) object).getHttpRequest();
    //configAttributes 为 MyInvocationSecurityMetadataSource 的getAttributes(Object object)这个方法返回的结果，
    // 此方法是为了判定用户请求的url 是否在权限表中，如果在权限表中，则返回给 decide 方法，用来判定用户是否有此权限。如果不在权限表中则放行。
    @Override
    public void decide(Authentication authentication, Object object, Collection<ConfigAttribute> configAttributes) throws AccessDeniedException, InsufficientAuthenticationException {
        if (null == configAttributes || configAttributes.size() <= 0) {
            return;
        }
        ConfigAttribute c;
        String needRole;
        for (Iterator<ConfigAttribute> iter = configAttributes.iterator(); iter.hasNext(); ) {
            c = iter.next();
            needRole = c.getAttribute();//需要的权限
//            Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();//权限名称 集合
            Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();//权限名称 集合
            logger.debug("authorities            " + authorities);
            for (GrantedAuthority ga : authorities) {//authentication 为在注释1 中循环添加到 GrantedAuthority 对象中的权限信息集合
                logger.debug("比较的具体权限            " + ga);
                logger.debug("比较的具体需要的权限 " + needRole);
                logger.debug("ga.getAuthority()      " + ga.getAuthority());
                if (needRole.trim().equals(ga.getAuthority())) {
                    return;
                }
            }
        }
        throw new AccessDeniedException("no right");
    }

    @Override
    public boolean supports(ConfigAttribute attribute) {
        return true;
    }

    @Override
    public boolean supports(Class<?> clazz) {
        return true;
    }
}*/
