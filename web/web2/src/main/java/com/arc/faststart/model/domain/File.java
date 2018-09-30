package com.arc.faststart.model.domain;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.*;

import javax.persistence.*;
import java.util.Date;

/**
 * 文件记录 对应表：file
 */
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
@Table(name = "file")
@JsonIgnoreProperties(value = {"hibernateLazyInitializer", "handler"})
public class File extends BaseModel {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue
    @Column(name = "id")
    private Long id; //主键

    @Column(name = "url", length = 255)
    private String url; // 文件地址\

    @Column(name = "path", length = 255)
    private String path; // 文件本地地址

    @Column(name = "name", length = 255)
    private String name; //文件名称

    private String suffix; //文件后缀

    private Date createDate;//创建时间

    private Date updateDate;//更新时间


    public File(String url, String path, String name, String suffix) {
        this.url = url;
        this.path = path;
        this.name = name;
        this.suffix = suffix;
    }
}
