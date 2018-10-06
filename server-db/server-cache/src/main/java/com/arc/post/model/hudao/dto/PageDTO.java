package com.arc.post.model.hudao.dto;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.ArrayList;
import java.util.List;

@Data
@ToString
@NoArgsConstructor

public class PageDTO {

    private static final long serialVersionUID = 1L;

    private Integer total = 0;

    private List<?> rows = new ArrayList<>();
}
