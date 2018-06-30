package com.del.arc.domain;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class User extends BaseDomain {
    private String username;
    private String password;
//    private Integer age;

}