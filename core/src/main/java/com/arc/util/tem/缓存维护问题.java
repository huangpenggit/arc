//package com.arc.util.tem;
//
//import cn.com.besttone.csp.context.config.configurations.RedisCachingConfiguration;
//import cn.com.besttone.csp.context.enums.redis.RedisKeys;
//import cn.com.besttone.csp.model.sys.Realm;
//import cn.com.besttone.csp.ms.mapper.RealmMapper;
//import cn.com.besttone.csp.ms.service.RealmService;
//import cn.com.besttone.csp.query.sys.RealmQuery;
//import org.apache.commons.logging.Log;
//import org.apache.commons.logging.LogFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.cache.annotation.*;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Propagation;
//import org.springframework.transaction.annotation.Transactional;
//
//import java.util.List;
//
//@Service
//@CacheConfig(keyGenerator = RedisCachingConfiguration.KEY_GENERATOR_NAME)
//public class RealmServiceImpl implements RealmService {
//    private static final Log logger = LogFactory.getLog(RealmServiceImpl.class);
//
//    @Autowired
//    private RealmMapper realmMapper;
//
///*    @Autowired
//    protected RedisTemplate<Serializable, Serializable> redisTemplate;
//
//    @Autowired
//    private RedisTemplate<String, String> redisTemplate;
//
//
//    @Value("${spring.redis.host}")
//    private String host;
//
//  */
//
//    private String key = RedisKeys.REALMS.toString();
//
//
//    @Override
//    @Transactional(propagation = Propagation.REQUIRED)
//    @CacheEvict(cacheNames  = RedisCachingConfiguration.CacheNames.CACHE_SYSTEM ,key = "'csp-ms-system:RealmServiceImpl:list'" )//删除缓存
//    public String save(Realm realm) {
//        realmMapper.save(realm);
//        return realm.getId();
//    }
//
//    @Override
//    @CacheEvict(cacheNames  = RedisCachingConfiguration.CacheNames.CACHE_SYSTEM ,key = "'csp-ms-system:RealmServiceImpl:list'" )//删除缓存
//    public int saveBatch(List<Realm> realms) {
//        int save = 0;
//        for (Realm realm : realms) {
//             save = realmMapper.save(realm);
//        }
//        return save;
//        //return realmMapper.saveBatch(realms);
//    }
//
//    @Override
//    @Transactional(propagation = Propagation.REQUIRED)
////    @CacheEvict(cacheNames = RedisCachingConfiguration.CacheNames.CACHE_SYSTEM, key = "'csp-ms-system:RealmServiceImpl:list'")//删除缓存
//    @Caching(
//            evict = {@CacheEvict(cacheNames = RedisCachingConfiguration.CacheNames.CACHE_SYSTEM, key = "'csp-ms-system:RealmServiceImpl:list'")}
//    )
//    public int delete(String id) {
//
//        //维护关系 rr
//        realmMapper.deleteRoleRealmByRealmId(id);
//        int delete = realmMapper.delete(id);
//        return delete;
//    }
//
//    /**
//     * 删除所有的资源信息
//     *
//     * @return
//     */
//    @Override
//    @Transactional(propagation = Propagation.REQUIRED)
//    @CacheEvict(cacheNames  = RedisCachingConfiguration.CacheNames.CACHE_SYSTEM ,key = "'csp-ms-system:RealmServiceImpl:list'" )//删除缓存
//    public int deleteAll() {
//        //维护关系 rr
//        realmMapper.deleteRoleRealm();
//        int deleteAll = realmMapper.deleteAll();
//        return deleteAll;
//
//    }
//
//    @Override
//    @Transactional(propagation = Propagation.REQUIRED)
//    @CachePut(cacheNames  = RedisCachingConfiguration.CacheNames.CACHE_SYSTEM ,key = "'csp-ms-system:RealmServiceImpl:list'" )//更新缓存
//    public int update(Realm realm) {
//        int update = realmMapper.update(realm);
//        return update;
//    }
//
//
//    /**
//     * 查詢权限资源列表
//     *
//     * @return
//     */
//    @Override
//    @Transactional(readOnly = true)//csp-ms-system
//    @Cacheable(cacheNames = RedisCachingConfiguration.CacheNames.CACHE_SYSTEM)   //保存缓存
//    public List<Realm> list() {
//        return realmMapper.list();
//    }
//
//    @Override
//    @Transactional(readOnly = true)
//    @Cacheable(cacheNames = RedisCachingConfiguration.CacheNames.CACHE_SYSTEM)
//    public Realm get(String id) {
//        return realmMapper.get(id);
//    }
//
//    @Override
//    @Transactional(readOnly = true)
//    public boolean exists(String id) {
//        return null != get(id);
//    }
//
//    @Override
//    @Transactional(readOnly = true)
//    public List<Realm> page(RealmQuery query) {
//        return realmMapper.page(query);
//    }
//
//    @Override
//    @Transactional(readOnly = true)
//    public List<Realm> listByRoleId(String roleId) {
//        return realmMapper.listByRoleId(roleId);
//    }
//
//
//    /**
//     * 获取角色列表 by  roleName
//     *
//     * @return
//     */
//    @Override
//    @Transactional(readOnly = true)
//    public List<Realm> getByRoleName(String roleName) {
//        return realmMapper.getByRoleName(roleName);
//    }
//
//    @Override
//    @Transactional(readOnly = true)
//    public Realm getByRealmName(String realmName) {
//        return realmMapper.getByRealmName(realmName);
//    }
//
//}
