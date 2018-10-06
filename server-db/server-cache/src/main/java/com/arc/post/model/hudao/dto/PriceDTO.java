package com.arc.post.model.hudao.dto;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;

/**
 * 产品dto
 * 格式化价格
 */
@Setter
@Getter
@NoArgsConstructor
public class PriceDTO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer sale; //售价
    private Integer cost; //
    private Integer market; //
//    private Map<String, String> member_levels; //


}
