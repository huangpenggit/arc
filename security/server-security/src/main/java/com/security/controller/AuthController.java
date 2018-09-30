package com.security.controller;

import com.arc.model.domain.system.UserAuth;
import com.security.service.UserAuthService;
import com.security.template.UserAgent;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Slf4j
@Controller
@RequestMapping("/auth")
public class AuthController {


    @Autowired
    private UserAuthService userAuthService;

    @Autowired
    private UserAgent userAgent;

    @ResponseBody
    @RequestMapping(value = {""}, method = RequestMethod.GET)
    public Object getUserList() {
        return userAuthService.list();
    }


    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public Object getUser(@PathVariable Long id) {
        log.debug("参数id={}", id);
        UserAuth userAuth = userAuthService.get(id);
        log.debug("return {}", userAuth);
        return userAuth;
    }
}
