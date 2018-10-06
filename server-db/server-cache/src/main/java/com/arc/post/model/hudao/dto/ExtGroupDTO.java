package com.arc.post.model.hudao.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;

/**
 * 是否是spu？
 */
@Setter
@Getter
@NoArgsConstructor
public class ExtGroupDTO implements Serializable {

    private String code; // spu对应分组的code

    private String name; // spu对应分组的名称

}
