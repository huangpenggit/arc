package com.arc.post.hudao.dto;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;
import java.util.List;

/**
 * 是否是spu？
 */
@Setter
@Getter
@NoArgsConstructor
public class BelongDTO implements Serializable {

    private static final long serialVersionUID = 1L;

    private String category_code; //商品主分类类别编码

    private String category_name; //类别名称

    private List<ExtGroupDTO> ext_groups;
}
