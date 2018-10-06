package com.arc.post.model.hudao.dto;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;
import java.util.List;

/**
 * 产品dto
 * 格式化价格
 */
@Setter
@Getter
@NoArgsConstructor
public class ImagesDTO implements Serializable {

    private static final long serialVersionUID = 1L;

    private String default_url; //商品默认主图

    private String thumb_url; //商品默认缩略图

    private List<SpecialImagesDTO> image_urls;//商品像册集合


}
