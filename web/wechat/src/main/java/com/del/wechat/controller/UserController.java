package com.del.wechat.controller;

import com.del.model.common.Person;
import com.del.model.common.User;
import com.del.wechat.call.UserAgent;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 返回json数据的controller
 *
 * @author yechao
 * @date 20180706
 */

@Controller
@Slf4j
public class UserController {

    @Autowired
    private UserAgent userAgent;


    //-----------------------------------------------------------------------------------
    @GetMapping(value = "/users/id")
    @ResponseBody
    public Object get(@RequestParam(name = "id", required = true) Long id) {
        log.debug("访问时间{},id{}", new Date(), id);
        User user = userAgent.get(id);
        return user;
    }


    @PostMapping("/users")
    @ResponseBody
    public Long save(@RequestBody User user) {
        log.debug("访问时间{},接收对象{}", new Date(), user);
        user.setSubscribeTime(new Date());
        user.setUnsubscribeTime(new Date());
        return userAgent.save(user);
    }

    @RequestMapping(value = "/users/id", method = RequestMethod.DELETE)
    @ResponseBody
    public Integer delete(@RequestParam(name = "id", required = true) Long id) {
        log.debug("删除元素的id为{}", id);
        return userAgent.delete(id);
    }

    @RequestMapping(value = "/users",method = RequestMethod.PUT)
    @ResponseBody
    public Integer update(@RequestBody User user) {
        log.debug("访问时间{},接收对象{}", new Date(), user);
        return userAgent.update(user);
    }

//
    @RequestMapping(value = "/users",method = RequestMethod.GET)
    @ResponseBody
    public List<User> list() {
        return userAgent.list();
    }


    @RequestMapping(value = "/index")
    public String index(Model model) {
        Person single = new Person("名称", 21);
        List<Person> people = new ArrayList<Person>();
        Person p1 = new Person("春天", 21);
        Person p2 = new Person("夏天", 22);
        Person p3 = new Person("秋天", 23);
        people.add(p1);
        people.add(p2);
        people.add(p3);
        model.addAttribute("singlePerson", single);
        model.addAttribute("people", people);
        model.addAttribute("date", DateFormat.getDateTimeInstance().format(new Date()));
        return "index";
    }


    @RequestMapping(value = "/file/upload",method = RequestMethod.POST)
    public String upload(MultipartFile file,Model model) {
        userAgent.upload(file);
        model.addAttribute("mark", "传递参数MARK 时间： " + new Date());
        return "index";
    }
}