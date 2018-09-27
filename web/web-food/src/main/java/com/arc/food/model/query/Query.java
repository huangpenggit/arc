package com.arc.food.model.query;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;


@Setter
@Getter
@ToString
@NoArgsConstructor
public class Query implements Serializable {

    private Long id;// 主键

}
