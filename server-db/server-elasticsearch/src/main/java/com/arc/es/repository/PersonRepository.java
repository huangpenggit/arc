package com.arc.es.repository;

import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.data.elasticsearch.repository.config.EnableElasticsearchRepositories;
import org.springframework.stereotype.Repository;

/**
 * Created with IntelliJ IDEA. * User: Administrator * Date: 17-9-27 * Time: 下午4:02 * To change this template use File | Settings | File Templates.
 */
public interface EsBeanRepository extends ElasticsearchRepository<EsBean, String> {

}
