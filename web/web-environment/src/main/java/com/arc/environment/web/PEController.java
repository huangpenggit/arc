package com.arc.environment.web;

import com.arc.environment.service.ProjectEnvironmentService;
import com.arc.model.enviroment.ProjectEnvironment;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

/**
 * 控制层
 * <p>
 * Created by bysocket on 24/07/2017.
 */
@Slf4j
@Controller
@RequestMapping(value = "/projectEnvironment")     // 通过这里配置使下面的映射都在 /projectEnvironment
public class PEController {

    @Autowired
    private ProjectEnvironmentService peService;          // 服务层

    /**
     * 获取列表
     * 处理 "/projectEnvironment" 的 GET 请求，用来获取列表
     * 通过 @RequestParam 传递参数，进一步实现条件查询或者分页查询
     */
    @RequestMapping(method = RequestMethod.GET)
    public String getUserList(ModelMap map) {
        map.addAttribute("peList", peService.findAll());
        return "projectEnvironmentList";
    }

    /**
     * 显示创建表单
     *
     * @param map
     * @return
     */
    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String createUserForm(ModelMap map) {
        map.addAttribute("projectEnvironment", new ProjectEnvironment());
        map.addAttribute("action", "create");
        return "projectEnvironmentForm";
    }

    /**
     * 创建
     * 处理 "/projectEnvironment" 的 POST 请求，用来获取列表
     * 通过 @ModelAttribute 绑定参数，也通过 @RequestParam 从页面中传递参数
     * form-data 提交数据
     */
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String postUser(ModelMap map,
                           @RequestBody @ModelAttribute @Valid ProjectEnvironment projectEnvironment,
                           BindingResult bindingResult) {
        log.debug("projectEnvironment{}" + projectEnvironment);
        if (bindingResult.hasErrors()) {
            map.addAttribute("action", "create");
            return "projectEnvironmentForm";
        }
        peService.save(projectEnvironment);
        return "redirect:/projectEnvironment/";
    }


    /**
     * 显示需要更新表单
     * 处理 "/projectEnvironment/{id}" 的 GET 请求，通过 URL 中的 id 值获取 User 信息
     * URL 中的 id ，通过 @PathVariable 绑定参数
     */
    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
    public String getUser(@PathVariable Long id, ModelMap map) {
        map.addAttribute("projectEnvironment", peService.findById(id));
        map.addAttribute("action", "update");
        return "projectEnvironmentForm";
    }

//    /**
//     * 处理 "/projectEnvironment/{id}" 的 PUT 请求，用来更新 User 信息
//     */
//    @RequestMapping(value = "/update", method = RequestMethod.POST)
//    public String putUser(ModelMap map, @ModelAttribute @Valid User user, BindingResult bindingResult) {
//        if (bindingResult.hasErrors()) {
//            map.addAttribute("action", "update");
//            return "userForm";
//        }
//        peService.update(user);
//        return "redirect:/projectEnvironment/";
//    }

//    /**
//     * 处理 "/projectEnvironment/{id}" 的 GET 请求，用来删除 User 信息
//     */
//    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
//    public String deleteUser(@PathVariable Long id) {
//        peService.delete(id);
//        return "redirect:/projectEnvironment/";
//    }
}


//
//             return "user/userEdit"; 　　代表会直接去resources目录下找相关的文件。
//            return "redirect:/list";      代表转发到对应的controller，这个示例就相当于删除内容之后自动调整到list请求，然后再输出到页面
//            上面的这段代码片段的设计，就比较简洁，很多程度上避免了代码的重复书写工作