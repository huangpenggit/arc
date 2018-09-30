package com.arc.server.system.controller;

import com.arc.model.domain.system.SsoUser;
import com.arc.server.system.service.SsoUserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@Slf4j
@RestController
@RequestMapping(value = "users")
public class SsoUserController {

    @Autowired
    private SsoUserService ssoUserService;

    //保存
    @RequestMapping(value = "", method = RequestMethod.POST)
    public Object save(@RequestBody SsoUser user) {
        //logger.debug("参数 {}",user);
        return ssoUserService.save(user);
    }

    //删除
    @RequestMapping(path = "/{id}", method = RequestMethod.DELETE)
    public Object delet(@PathVariable("id") Long id) {
        return ssoUserService.delete(id);
    }

    //更新
    @RequestMapping(path = "/{id}", method = {RequestMethod.PUT, RequestMethod.POST})
    public Object update(@PathVariable("id") Long id, @RequestBody SsoUser user) {
        user.setId(id);
        return ssoUserService.update(user);
    }

    //获取用通过ID
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public Object get(@PathVariable(name = "id", required = true) Long id) {
        return ssoUserService.get(id);
    }

    //获取用通过username
    @RequestMapping(value = "/get/username", method = RequestMethod.GET)
    public Object getByUsername(@RequestParam(name = "username", required = true) String username) {
//        return ssoUserService.getByUsername(username);
        SsoUser ssoUser = ssoUserService.getByUsername(username);
        log.debug("查询结果{}", ssoUser);
        return ssoUser;
    }
    //获取用通过username
    @RequestMapping(value = "/get/nickname", method = RequestMethod.GET)
    public Object getByNickname(@RequestParam(name = "nickname", required = true) String nickname) {
//        return ssoUserService.getByNickname(username);
        log.debug("参数Parameter {}",nickname);
        SsoUser ssoUser = ssoUserService.getByNickname(nickname);
        log.debug("查询结果{}", ssoUser);
        return ssoUser;
    }

    //获取所有的用户
    @RequestMapping(value = "", method = RequestMethod.GET)
    public Object list() {
        return ssoUserService.list();
    }

    ////例子
////GET /zoos：列出所有动物园
////POST /zoos：新建一个动物园
////GET /zoos/ID：获取某个指定动物园的信息
////PUT /zoos/ID：更新某个指定动物园的信息（提供该动物园的全部信息）
////PATCH /zoos/ID：更新某个指定动物园的信息（提供该动物园的部分信息）
////DELETE /zoos/ID：删除某个动物园
////GET /zoos/ID/animals：列出某个指定动物园的所有动物
////DELETE /zoos/ID/animals/ID：删除某个指定动物园的指定动物
////-------------------------------------------------------------------------------

}
