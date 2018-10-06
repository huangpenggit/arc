package com.arc.redis.controller;

import com.arc.model.domain.common.User;
import com.arc.model.vo.ResponseVo;
import com.arc.redis.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

@Slf4j
@RestController
@RequestMapping("/users")
public class TestUserInRedisController {


    @Autowired
    private UserService userService;


////GET /zoos：列出所有动物园
////POST /zoos：新建一个动物园
////GET /zoos/ID：获取某个指定动物园的信息
////PUT /zoos/ID：更新某个指定动物园的信息（提供该动物园的全部信息）
////PATCH /zoos/ID：更新某个指定动物园的信息（提供该动物园的部分信息）
////DELETE /zoos/ID：删除某个动物园
////GET /zoos/ID/animals：列出某个指定动物园的所有动物
////DELETE /zoos/ID/animals/ID：删除某个指定动物园的指定动物

    /**
     * 获取所有数据
     * list()
     *
     * @return
     */
    @RequestMapping(value = "", method = RequestMethod.GET)
    public ResponseVo list() {
        return ResponseVo.success(userService.list());
    }

    /**
     * 保存一条数据
     * save(user)
     *
     * @param user
     * @return
     */
    @RequestMapping(value = "", method = RequestMethod.POST)
    public ResponseVo save(@RequestBody User user) {
        if (user == null || user.getNickname() == null) {
            return ResponseVo.failure(1000, "必要属性未传");
        }

//        user = crateUser();
//
//        ArrayList<Area> list = new ArrayList<>();
//        Area area = new Area();
//        area.setAreaCode("32000");
//        area.setAreaName("江苏省");
//        list.add(area);
//
//        Area area1 = new Area();
//        area1.setAreaCode("10000");
//        area1.setAreaName("北京市");
//        area.setParentCode("000000");
//        list.add(area1);
//
//        user.setAreas(list);
//        user.setId(7L);
//        user.setArea(area1);
        log.debug("参数 {}", user);
        return ResponseVo.success(userService.save(user));
    }

    /**
     * 获取指定的数据
     * get(id)
     *
     * @param id
     * @return
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public ResponseVo get(@PathVariable("id") Long id) {
        log.debug("删除id为{}的数据", id);
        return ResponseVo.success(userService.get(id));
    }

    /**
     * 删除指定的数据
     * delete(id)
     *
     * @param id
     * @return
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.DELETE)
    public ResponseVo delete(@PathVariable("id") Long id) {
        log.debug("删除id为{}的数据", id);
        return ResponseVo.success(userService.delete(id));
    }


    /**
     * 注意 1请求是POST方式的 2请求类型为Content-Type:application/json
     * 对于必要参数没有传则判断了一下会返回错误代码10000
     * 更新
     * update(user)
     *
     * @param id
     * @param user
     * @return
     */
    @RequestMapping(path = "/{id}", method = {RequestMethod.PUT})
    public ResponseVo update(@PathVariable(value = "id", required = true) Long id, @RequestBody User user) {
        if (id == null || user == null || user.getId() == null || id != user.getId()) {
            return ResponseVo.failure(1000, "必要属性未传,或者id错误");
        }
        return ResponseVo.success(userService.update(user));
    }

    private User crateUser() {
        User user = new User();
        user.setAvatar("www.bing.com");
        user.setBirthday(new Date());
        user.setGender(1);
        user.setNickname("Aa");
        user.setLevel(1);
        user.setSign("PASS");
        user.setId(1L);
        return user;
    }

}
