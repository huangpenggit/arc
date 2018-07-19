package com.del.wechat.util;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.http.*;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MimeType;
import org.springframework.util.MimeTypeUtils;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import java.nio.charset.Charset;

//@Component
public class Restful {
    private final String url;

    private final MultiValueMap<String, String> params = new LinkedMultiValueMap<>();

    public void set(String key, String value) {
        params.add(key, value);
    }

    /**
     * 构造方法,请求url.
     *
     * @param url 请求地址
     */
    public Restful(String url) {
        super();
        this.url = url;
    }

    /**
     * 发送get请求.
     *
     * @return 返回请求结果
     */
    public <T> T get(Class<T> cls) {
        String fullUrl = UriComponentsBuilder.fromHttpUrl(url).queryParams(params).build().toUriString();
        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<T> resultEntity = restTemplate.getForEntity(fullUrl, cls);
        return resultEntity.getBody();
    }

    /**
     * 发送post请求.
     *
     * @return 返回请求结果
     */
    public <T> T post(Class<T> cls) {
        String fullUrl = UriComponentsBuilder.fromHttpUrl(url).build().toUriString();
        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<T> resultEntity = restTemplate.postForEntity(fullUrl, params, cls);
        return resultEntity.getBody();
    }

    /**
     * 发送/获取 服务端数据(主要用于解决发送put,delete方法无返回值问题).
     *
     * @param url      绝对地址
     * @param method   请求方式
     * @param bodyType 返回类型
     * @param <T>      返回类型
     * @return 返回结果(响应体)
     */
    public <T> T exchange(String url, HttpMethod method, Class<T> bodyType) {
        // 请求头
        HttpHeaders headers = new HttpHeaders();
        MimeType mimeType = MimeTypeUtils.parseMimeType("application/json");
        MediaType mediaType = new MediaType(mimeType.getType(), mimeType.getSubtype(), Charset.forName("UTF-8"));
        // 请求体
        headers.setContentType(mediaType);
        //提供json转化功能
        ObjectMapper mapper = new ObjectMapper();
        String str = null;
        try {
            if (!params.isEmpty()) {
                str = mapper.writeValueAsString(params);
            }
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        // 发送请求
        HttpEntity<String> entity = new HttpEntity<>(str, headers);
        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<T> resultEntity = restTemplate.exchange(url, method, entity, bodyType);
        return resultEntity.getBody();
    }
}
