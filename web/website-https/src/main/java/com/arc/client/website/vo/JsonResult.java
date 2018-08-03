package com.arc.client.website.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@NoArgsConstructor
@ToString
public class JsonResult {
    private int id;//代码    0--成功  非零---异常
    private String message;//信息
    private boolean success;//成功与否
    private Object resulet;//附加参数
}
