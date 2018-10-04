package com.arc.faststart.model.domain;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

/**
 * 文件记录 对应表：file
 */
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class File extends BaseModel {

    private static final long serialVersionUID = 1L;

    private Long id; //主键
    private String url; // 文件地址
    private String path; // 文件本地地址
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
