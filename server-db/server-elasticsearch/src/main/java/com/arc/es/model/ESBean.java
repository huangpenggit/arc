package com.arc.es.model;


import lombok.ToString;
import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;

import java.io.Serializable;

/**
 * 与ES交互的Bean
 * Document注解里面有很多参数，基本的配置有索引名称，库名称，还有分片等等
 *
 * @author: yechao
 * @date: 2018/10/4 14:52
 */
@ToString
@Document(indexName = "test", type = "test")
public class ESBean implements Serializable {
    @Id
    public String id;
    @Field
    public int gs;
    @Field
    public int study;

}
