package com.arc.post.hudao.dto;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * 产品dto
 * 格式化价格
 */
@Setter
@Getter
@NoArgsConstructor
public class SpecialImagesDTO extends BaseDTO {

    private static final long serialVersionUID = 1L;

    private String small; //
    private String big; //
    private String origin; //

}
