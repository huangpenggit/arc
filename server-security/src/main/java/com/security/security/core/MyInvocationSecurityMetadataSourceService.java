package cn.com.besttone.csp.web.security.core;

import cn.com.besttone.csp.model.sys.Realm;
import cn.com.besttone.csp.model.sys.Role;
import cn.com.besttone.csp.web.service.system.RealmService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

/**
 * @author 叶超
 *
 * 攔截器
 */
@Service
public class MyInvocationSecurityMetadataSourceService implements FilterInvocationSecurityMetadataSource {
    private  static  final Log logger=LogFactory.getLog(MyInvocationSecurityMetadataSourceService.class);
    @Autowired
    private RealmService realmService;

    private HashMap<String, Collection<ConfigAttribute>> map = null;

    // 建议把metadata放到redis进行缓存，每次更新资源后，刷新redis缓存
    /**
     * 加载权限表中所有权限
     */
    public void loadResourceDefine() {
        //调用服务去查出所有资源信息 map<url [roleName]>
        map = new HashMap<>();
        Collection<ConfigAttribute> array=null;
        ConfigAttribute ca;
        List<Realm> permissions = realmService.listAll();
        for (Realm permission : permissions) {
            if (permission != null) {
                if (permission.getRoles() != null) {

                    for (Role role : permission.getRoles()) {
                        array = new ArrayList<>();
                        ca = new SecurityConfig(role.getRoleName());
                        logger.debug("map中 value 集合中的 数据 "+ca);
                        array.add(ca);
                        logger.debug("map中 value 集合 "+array);
                        map.put(permission.getPath(), array);
                    }
                }
            }
            //用权限的getUrl() 作为map的key，用ConfigAttribute的集合作为 value，//MyAccessDecisionManager类的decide方法会用到
        }
        logger.debug("\n");
        logger.debug(map);
    }

    //此方法是为了判定用户请求的url 是否在权限表中，如果在权限表中，则返回给 decide 方法，
    // 用来判定用户是否有此权限。如果不在权限表中则放行。
    @Override
    public Collection<ConfigAttribute> getAttributes(Object object) throws IllegalArgumentException {
        loadResourceDefine();//加载资源map
        logger.debug(map);
        //object 中包含用户请求的request 信息
        HttpServletRequest request = ((FilterInvocation) object).getHttpRequest();
        logger.debug(map);
        logger.debug("用户请求的request url 信息  "+request);
        logger.debug("用户请求的request url 信息  "+request);
        logger.debug("用户请求的request url 信息  "+request);
        AntPathRequestMatcher matcher;//匹配
        String mapUrl;
        for (Iterator<String> iter = map.keySet().iterator(); iter.hasNext(); ) {
            mapUrl = iter.next();
            logger.debug(map);
            logger.debug("map的key   url "+mapUrl);
            matcher = new AntPathRequestMatcher(mapUrl);
            if (matcher.matches(request)) {
                logger.debug("map的key   url "+mapUrl);
                return map.get(mapUrl);
            }
        }
        return null;
    }

    @Override
    public Collection<ConfigAttribute> getAllConfigAttributes() {
        return null;
    }

    @Override
    public boolean supports(Class<?> clazz) {
        return true;
    }
}