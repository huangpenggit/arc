package com.arc.food.controller.food;


import com.arc.food.model.domain.Food;
import com.arc.food.model.query.FoodQuery;
import com.arc.food.model.vo.ResponseVo;
import com.arc.food.service.FoodService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 商品的food接口
 * 注意返回的是json
 *
 * @author yechao
 */
@Slf4j
@RestController
@RequestMapping(value = "/food")
public class FoodController {

    @Autowired
    private FoodService foodService;


    //CURD
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ResponseVo save(@RequestBody Food food) {
        log.debug("Save food  parameter is {}", food);
        return ResponseVo.success(foodService.save(food));
    }

    @RequestMapping(value = "/delete", method = {RequestMethod.GET, RequestMethod.DELETE})
    public ResponseVo delete(@RequestParam Long id) {
        log.debug("Delete food  parameter is {}", id);
        return ResponseVo.success(foodService.delete(id));
    }

    @RequestMapping(value = "/update", method = {RequestMethod.POST, RequestMethod.PUT})
    public ResponseVo update(Food food) {
        log.debug("Update food  parameter is {}", food);
        return ResponseVo.success(foodService.update(food));
    }

    @RequestMapping(value = "/get/{id}", method = RequestMethod.GET)
    public ResponseVo get(@PathVariable("id") Long id) {
        log.debug("Get food  parameter is id={}", id);
        return ResponseVo.success(foodService.get(id));
    }


    @RequestMapping(value = "/query", method = RequestMethod.POST)
    public ResponseVo query(@RequestBody FoodQuery query) {
        log.debug("Query foods  parameter is {}", query);
        ResponseVo success = ResponseVo.success(foodService.page(query));
        return success;
    }

    //导出
    @RequestMapping(value = "/export", method = RequestMethod.POST)
    public ResponseVo export(@RequestBody FoodQuery query) {
        log.debug("Export food  parameter is {}", query);
        ResponseVo success = ResponseVo.success(foodService.export(query));
        return success;
    }

    /*--------------------------------------------------------------------------------*/
    //商品购买的时候就是update


}
//REST
//REST：即 Representational State Transfer。（资源）表现层状态转化。是目前最流行的一种互联网软件架构。它结构清晰、符合标准、易于理解、扩展方便，所以正得到越来越多网站的采用
//资源（Resources）：网络上的一个实体，或者说是网络上的一个具体信息。它可以是一段文本、一张图片、一首歌曲、一种服务，总之就是一个具体的存在。可以用一个URI（统一资源定位符）指向它，每种资源对应一个特定的 URI 。要获取这个资源，访问它的URI就可以，因此 URI 即为每一个资源的独一无二的识别符。
//表现层（Representation）：把资源具体呈现出来的形式，叫做它的表现层（Representation）。比如，文本可以用 txt 格式表现，也可以用 HTML 格式、XML 格式、JSON 格式表现，甚至可以采用二进制格式。
//状态转化（State Transfer）：每发出一个请求，就代表了客户端和服务器的一次交互过程。HTTP协议，是一个无状态协议，即所有的状态都保存在服务器端。因此，如果客户端想要操作服务器，必须通过某种手段，让服务器端发生“状态转化”（State Transfer）。而这种转化是建立在表现层之上的，所以就是 “表现层状态转化”。具体说，就是 HTTP 协议里面，四个表示操作方式的动词：GET、POST、PUT、DELETE。它们分别对应四种基本操作：GET 用来获取资源，POST 用来新建资源，PUT 用来更新资源，DELETE 用来删除资源。
//示例：
//- /order/1 HTTP GET ：得到 id = 1 的 order
//- /order/1 HTTP DELETE：删除 id = 1的 order
//- /order/1 HTTP PUT：更新id = 1的 order
//- /order HTTP POST：新增 order
