/*
package com.lb.staticweb.controller;

import cn.del.api.common.domain.User;
import cn.del.api.common.service.IUserService;
import cn.del.api.common.vo.JSONResult;
import com.alibaba.dubbo.config.annotation.Reference;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("user")
public class UserController {
    private IUserService userService;

    */
/**
     * 注册
     *
     * @param user
     * @return
     *//*

    @RequestMapping(value = "register", method = RequestMethod.POST)
    public JSONResult register(User user) {
        JSONResult jsonResult = new JSONResult();
        user = userService.register(user);
        if (user == null) {
            jsonResult.setErrorMsg("此用户名已经注册");
        } else {
            jsonResult.setSuccess(true);
            jsonResult.setResult(user);
        }
        return jsonResult;
    }

    */
/**
     * 用户登录
     * @param username
     * @param password
     * @return
     *//*

    @RequestMapping(value = "token", method = RequestMethod.POST)
    public JSONResult login(String username, String password) {
        JSONResult jsonResult = new JSONResult();
        User user = userService.login(username, password);
        if (user == null) {
            jsonResult.setErrorMsg("用户名或者密码错误");
            return jsonResult;
        } else {
            jsonResult.setSuccess(true);
            String token = userService.createToken(user);
            jsonResult.setResult(token);
            return jsonResult;
        }
    }

    */
/**
     * 用户注销
     * @param token
     * @return
     *//*

    @RequestMapping(value = "token", method = RequestMethod.DELETE)
    public JSONResult logout(@RequestHeader("token") String token) {
        JSONResult jsonResult = new JSONResult();
        if (token != null) {
            userService.logout(token);
            jsonResult.setSuccess(true);
        } else {
            jsonResult.setErrorMsg("没有登录的用户");
        }
        return jsonResult;
    }
}
*/
