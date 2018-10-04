package com.arc.es.repository;

import com.arc.es.model.ESBean;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;

/**
 * Created with IntelliJ IDEA.
 * @author  Administrator
 * @date 17-9-27 * Time: 下午4:34 * To change this template use File | Settings | File Templates.
 */
public interface EsBeanRepository extends ElasticsearchRepository<ESBean, String> {

}
