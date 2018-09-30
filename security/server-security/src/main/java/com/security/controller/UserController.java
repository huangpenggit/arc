package com.security.controller;

import com.arc.model.domain.system.SsoUser;
import com.security.service.SsoUserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


@Slf4j
@Controller
@RequestMapping("/users")
public class UserController {


    @Autowired
    private SsoUserService userService;


    /**
     * 获取用通过username
     *
     * @param username
     * @return
     */
    @RequestMapping(value = "/username/{username}", method = RequestMethod.GET)
    @ResponseBody
    public Object getByUsername(@PathVariable(name = "username", required = true) String username) {
        log.debug("参数username={}", username);
        SsoUser user = userService.getByNickname(username);
        log.debug("参数user={}", user.toString());
        return user;

    }

    /**
     * 获取用通过ID
     *
     * @param id
     * @return
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public Object get(@PathVariable(name = "id", required = true) Long id) {
        return userService.get(id);
    }


    /**
     * 获取所有的用户
     *
     * @return
     */
    @RequestMapping(value = "", method = RequestMethod.GET)
    @ResponseBody
    public Object list() {
        return userService.list();
    }


}
