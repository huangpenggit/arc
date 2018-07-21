package com.del.client.website.controller;

import com.del.client.website.model.User;
import com.del.client.website.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 测试swagger2 的
 * 不过因为基础freemarker 后跪了
 * 这个controller就没有什么用了
 *
 */
@Api(value = "用户相关接口的测试")
@Controller
@RequestMapping("/users")
public class SwaggerController {

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
//*注意编写的关键词：“必须”、“不能”、“需要”、“应当”,“不得”、“应该”、“不应该”,“推荐”、“可能”和“可选的”

//    RESTful
//    GET（SELECT）：从服务器取出资源（一项或多项）。
//    POST（CREATE）：在服务器新建一个资源。
//    PUT（UPDATE）：在服务器更新资源（客户端提供改变后的完整资源）。
//    PATCH（UPDATE）：在服务器更新资源（客户端提供改变的属性【补丁】）。
//    DELETE（DELETE）：从服务器删除资源。
//
//    HEAD：获得一个资源的元数据，比如一个资源的hash值或者最后修改日期；
//    OPTIONS：获得客户针对一个资源能够实施的操作；
//            -----------------------------------------------
//    例子
//    GET /zoos：列出所有动物园
//    POST /zoos：新建一个动物园
//    GET /zoos/ID：获取某个指定动物园的信息
//    PUT /zoos/ID：更新某个指定动物园的信息（提供该动物园的全部信息）
//    PATCH /zoos/ID：更新某个指定动物园的信息（提供该动物园的部分信息）
//    DELETE /zoos/ID：删除某个动物园
//    GET /zoos/ID/animals：列出某个指定动物园的所有动物
//    DELETE /zoos/ID/animals/ID：删除某个指定动物园的指定动物
//    https://www.cnblogs.com/chenweixuan/p/5737235.html
//    http://blog.didispace.com/springbootswagger2/
//    http://blog.didispace.com   程序猿DD
    @ApiOperation(value = "获取用户列表", notes = "")
    @RequestMapping(value = {""}, method = RequestMethod.GET)
    @ResponseBody
    public List<User> getUserList() {
        return userService.list();
    }


    @ApiOperation(value="创建用户", notes="根据User对象创建用户")
    @ApiImplicitParam(name = "User", value = "用户详细实体user", required = true, dataType = "User")
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
            @ApiImplicitParam(name = "User", value = "用户详细实体user", required = true, dataType = "User")
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
        System.out.println("hello");
        System.out.println("hello");
        return "/hello";

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
        User user = new User();
        user.setUsername("AAAA");

        return "403";
    }


//    @PreAuthorize("hasRole('User')")
//    @RequestMapping(value = "/admin",method = RequestMethod.GET)
//    public String toAdmin(){
//
//        return "helloAdmin";
//    }

}
