/*
package com.security.controller;

import com.security.domain.User;
import com.security.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Api
@Controller
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("")
    @ResponseBody
    public String success() {
        return "/hello";
    }


    //============================
    //                Swagger2 API 演示
    //============================


    @ApiOperation(value = "获取用户列表", notes = "")
    @RequestMapping(value = {""}, method = RequestMethod.GET)
    @ResponseBody
    public List<User> getUserList() {
        return userService.list();
    }


    @ApiOperation(value="创建用户", notes="根据User对象创建用户")
    @ApiImplicitParam(name = "user", value = "用户详细实体user", required = true, dataType = "User")
    @RequestMapping(value="", method=RequestMethod.POST)
    public String postUser(@RequestBody User user) {
        userService.save(user);
        return "/hello";
    }

    @ApiOperation(value="获取用户详细信息", notes="根据url的id来获取用户详细信息")
    @ApiImplicitParam(name = "id", value = "用户ID", required = true, dataType = "Long")
    @RequestMapping(value="/{id}", method=RequestMethod.GET)
    public User getUser(@PathVariable Long id) {
        return userService.get(id);
    }

    @ApiOperation(value="更新用户详细信息", notes="根据url的id来指定更新对象，并根据传过来的user信息来更新用户详细信息")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "id", value = "用户ID", required = true, dataType = "Long"),
            @ApiImplicitParam(name = "user", value = "用户详细实体user", required = true, dataType = "User")
    })
    @RequestMapping(value="/{id}", method=RequestMethod.PUT)
    public String putUser(@PathVariable Long id, @RequestBody User user) {
        User u = userService.get(id);
        u.setUsername(user.getUsername());
        u.setPassword(user.getPassword());
        userService.save( u);
        return "/hello";
    }

    @ApiOperation(value="删除用户", notes="根据url的id来指定删除对象")
    @ApiImplicitParam(name = "id", value = "用户ID", required = true, dataType = "Long")
    @RequestMapping(value="/{id}", method=RequestMethod.DELETE)
    public String deleteUser(@PathVariable Long id) {
        userService.delete(id);
        return "/hello";
    }










    //=============END================
    @RequestMapping("/hello")
    public String hello() {

        return "hello";

    }


    @RequestMapping("/home")
    public String home() {
        return "home";

    }


    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/")
    public String root() {
        return "index";

    }

    @RequestMapping("/403")
    public String error() {
        return "403";
    }

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String get() {
//        User user = new User();
//        user.setUsername("AAAA");

        return "403";
    }


//    @PreAuthorize("hasRole('user')")
//    @RequestMapping(value = "/admin",method = RequestMethod.GET)
//    public String toAdmin(){
//
//        return "helloAdmin";
//    }

}
*/
