package com.del.arc.controller;

import com.del.arc.domain.User;
import com.del.arc.service.IUserService;
import io.swagger.annotations.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@Api(value = "用户模块")
@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private IUserService userService;


    /**
     * 获取单个用户
     *
     * @param id
     * @return
     */
    @ApiOperation(value = "获取单个用户", notes = "传入id获取单个用户")
//    @ApiImplicitParam(name = "id", value = "用户id", required = true, paramType = "path", dataType = "Long") //注意：paramType需要指定为path,不然不能正常获取
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public User user(@ApiParam(value = "用户Id", required = true) @PathVariable Long id) {
        return  userService.queryByPrimaryKey(id);
    }

    /**
     * 获取用户列表
     *
     * @return
     */
    @ApiOperation(value = "获取用户列表", notes = "获取用户列表")
    @RequestMapping(value = "", method = RequestMethod.GET)
    public  List<User> list() {
        System.out.println("#####  \n"+ " List<User>");
        return userService.queryAll();
    }

    /**
     * 新建用户
     *
     * @param user
     * @return
     */
    @ApiOperation(value = "新建用户", notes = "新建一个用户")
    @ApiImplicitParams(
            {//    注意：paramType需要指定为body
                    @ApiImplicitParam(name = "user", value = "用户数据", required = true, paramType = "body", dataType = "User")
            }
    )
    @RequestMapping(value = "", method = RequestMethod.POST)
    public String create(@ApiParam(value = "用户数据", required = true) @RequestBody User user) {
        System.out.println("user : " + user.getUsername() + " " + user.getPassword());
        return "success 新建user : " + user.getUsername() + " " + user.getPassword();
    }


    /**
     * 删除用户
     *
     * @return
     */
    @ApiOperation(value = "删除用户", notes = "通过用户id删除用户")
    @ApiImplicitParam(name = "id", value = "用户id", required = true, paramType = "path", dataType = "Long")
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String delete(@PathVariable Long id) {
        System.out.println("删除用户：" + id);
        int i = userService.deleteByPrimaryKey(id);
        if (i > 0) {
            return "编号  " + id + " 的 用户删除成功！";
        } else {
            return "编号  " + id + " 的 用户删除失败！";
        }
    }


    /**
     * 更新用户
     *
     * @return
     */
    @ApiOperation(value = "更新用户", notes = "更新已存在用户")
    @ApiImplicitParam(name = "user", value = "用户数据", required = true, paramType = "body", dataType = "User")
    @RequestMapping(value = "", method = RequestMethod.PUT)
    public String update(@RequestBody User user) {
        System.out.println("更新用户：" + user.getId() + " " + user.getUsername() + " " + user.getPassword());

        int i = userService.save(user);
        if (i > 0) {
            return   user.getUsername() + "  用户更新成功！";
        } else {
            return user.getUsername() + "  用户更新失败！";

        }
    }

}

