package com.del.wechat.call;

import com.del.enums.FeignPath;
import com.del.model.common.User;
import com.del.service.common.UserService;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * 代理远程调用实际控制数据层的一个服务性质接口
 *
 * @author yechao
 * @date 2018/07/20
 */
@FeignClient(value = FeignPath.SERVER_COMMON, fallback = UserAgentHystric.class)
public interface UserAgent extends UserService {

    @RequestMapping(value = "/users/id", method = RequestMethod.GET)
    User get(@RequestParam(value = "id") Long id);

    @RequestMapping(value = "/users/", method = RequestMethod.POST)
    Long save(@RequestBody User user);

    @RequestMapping(value = "/users/id", method = RequestMethod.DELETE)
    Integer delete(@RequestParam(name = "id", required = true) Long id);

    @GetMapping("/users")
    List<User> list();

    //    @RequestMapping(value = "/users/update", method = RequestMethod.PUT)
    @PutMapping("/users/update")
    Integer update(User user);


    @RequestMapping(value = "/file/upload", method = RequestMethod.POST)
    String upload(MultipartFile file);

}
//总结微服务之间是可以用缩写的注解，注意 微服务提供方，消费方的注解用缩写或者标准写法均有效
// 但是web前台的注解不能用缩写的，


