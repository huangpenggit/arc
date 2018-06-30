package com.del.doamin;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
@Setter
@Getter
@ToString
@NoArgsConstructor
public class BaseDomain implements Serializable {

    private BaseDomain domain;

}
