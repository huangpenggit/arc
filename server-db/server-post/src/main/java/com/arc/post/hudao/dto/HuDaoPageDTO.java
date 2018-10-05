package com.arc.post.hudao.dto;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Data
@ToString
@NoArgsConstructor
public class HuDaoPageDTO implements Serializable {

    private Integer total = 0;

    private List<HuDaoProductSkuDTO> rows = new ArrayList<>();
}
