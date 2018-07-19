package com.del.wechat.call;

import com.del.enums.FeignPath;
import com.del.model.common.User;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

//@Component
@FeignClient(value = FeignPath.SERVER_COMMON)
public interface UserAgent {

    @RequestMapping(value = "/users/id", method = RequestMethod.GET)
    User get(@RequestParam(value = "id") Long id);

//    Long save(User user);
//    Integer delete(Long id);
//    Integer update(User user);
//    List<User> list();
}


