package com.arc.model.domain.wechat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 封装菜单结构
 每个按钮对象都要一个共同的name属性，因此需要定义一个按钮对象基类，所有的按钮对象都需要继承该类。基类的代码如下：
 */
@Getter
@Setter
@ToString
//按钮对象的基类
public class Button {
    private String name;
}
