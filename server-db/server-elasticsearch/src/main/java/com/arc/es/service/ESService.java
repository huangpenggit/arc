package com.arc.es.service;

import com.arc.es.model.ESBean;
import com.arc.es.repository.EsBeanRepository;
import org.springframework.data.elasticsearch.repository.config.EnableElasticsearchRepositories;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * To change this template use SystemFile | Settings | SystemFile Templates.
 *
 * @author Administrator
 * @date: 17-9-27 * Time: 下午4:34
 */
@Service
@EnableElasticsearchRepositories
public class ESService {
    @Resource
    private EsBeanRepository esBeanRepository;

    public Object queryInfoById(String id) {
        System.out.println("id:" + id);//        EsBean eb = (EsBean)esBeanRepository.findOne(id);
        ESBean esBean = new ESBean();
        esBean.gs = 250;
        esBean.study = 250;
        esBeanRepository.save(esBean);
        //  String value = JSON.toJSONString(eb);
        System.out.println("value:" + esBean);
        return esBean;
    }

}
