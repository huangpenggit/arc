package com.del.doamin;

import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

//@Entity
@Getter
@Setter
@Document(collection = "mongo_person")
public class Person {

        @Id
//    @GeneratedValue
    private Long id;

    private int age;
    private String nickname;
    private String username;
    private String password;
    private String phone;
    private String email;
    private String realname;
    private String id_number;


    //    @Column(name = "username", nullable = true, length = 20)
//    @Column(name = "age", nullable = true, length = 4)
}