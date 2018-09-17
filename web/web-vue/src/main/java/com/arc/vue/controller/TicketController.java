package com.arc.vue.controller;

import com.arc.model.domain.vue.Ticket;
import com.arc.vue.service.TicketService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 控制层
 */
@Slf4j
@RestController
@RequestMapping(value = "/tickets")     // 通过这里配置使下面的映射都在 /tickets
public class TicketController {

    @Autowired
    TicketService ticketService;          // 服务层

    /**
     * 显示创建票表单
     * 创建票
     * 处理 "/tickets" 的 POST 请求，用来获取票列表
     * 通过 @ModelAttribute 绑定参数，也通过 @RequestParam 从页面中传递参数
     * form-data 提交数据
     *
     * @param ticket
     * @return
     */
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public Object save(@RequestBody Ticket ticket) {
        log.debug("Save ticket {}" + ticket);
        return ticketService.save(ticket);
    }

    /**
     * 处理 "/ticket/{id}" 的 GET 请求，用来删除 Ticket 信息
     */
    @RequestMapping(value = "/delete/{sn}", method = RequestMethod.GET)
    public Object deleteUser(@PathVariable Integer sn) {
        log.debug("Delete sn {}" + sn);

        return ticketService.delete(sn);
    }

    /**
     * 获取票列表
     * 处理 "/tickets" 的 GET 请求，用来获取票列表
     * 通过 @RequestParam 传递参数，进一步实现条件查询或者分页查询
     */
    @RequestMapping(method = RequestMethod.GET)
    public Object list() {
        return ticketService.list();
    }


    @RequestMapping(value = "/get/{id}",method = RequestMethod.GET)
    public Object list(@PathVariable (name="id")Long id) {
        return ticketService.get(id);
    }


//
//    /**
//     *
//     */
//    @RequestMapping(value = "/create", method = RequestMethod.POST)
//    public String postUser(ModelMap map, @RequestBody @ModelAttribute @Valid User user, BindingResult bindingResult) {
//
//        log.debug("user{}" + user);
//        if (bindingResult.hasErrors()) {
//            map.addAttribute("action", "create");
//            return "userForm";
//        }
//        ticketService.insertByUser(user);
//        return "redirect:/ticket/";
//    }


//    /**
//     * 显示需要更新票表单
//     * 处理 "/ticket/{id}" 的 GET 请求，通过 URL 中的 id 值获取 User 信息
//     * URL 中的 id ，通过 @PathVariable 绑定参数
//     */
//    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
//    public String getUser(@PathVariable Long id, ModelMap map) {
//        map.addAttribute("user", ticketService.findById(id));
//        map.addAttribute("action", "update");
//        return "userForm";
//    }
//
//    /**
//     * 处理 "/ticket/{id}" 的 PUT 请求，用来更新 User 信息
//     */
//    @RequestMapping(value = "/update", method = RequestMethod.POST)
//    public String putUser(ModelMap map, @ModelAttribute @Valid User user, BindingResult bindingResult) {
//        if (bindingResult.hasErrors()) {
//            map.addAttribute("action", "update");
//            return "userForm";
//        }
//        ticketService.update(user);
//        return "redirect:/ticket/";
//    }


}
