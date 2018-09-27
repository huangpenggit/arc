package com.arc.food.controller.food;

import com.arc.food.service.FoodService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 商品相关页面跳转控制
 *
 * @author yechao
 */
@Slf4j
@Controller
@RequestMapping(value = "/food")
public class FoodControllerPage {

    @Autowired
    private FoodService foodService;

    @RequestMapping(value = "/save", method = RequestMethod.GET)
    public String save() {
        return "product/save";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        model.addAttribute("list", foodService.list());
        log.debug("List food page!");
        return "food/list";
    }

}
