package del;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import java.util.List;

@Slf4j
@Component
public class UserAgent {
    @Autowired
    RestTemplate restTemplate;

    private String url;

//    private final MultiValueMap<String, String> params = new LinkedMultiValueMap<>();

    public User get(Long id) {
        log.debug("UserAgent is get method received parm 'id'{}", id);
        return restTemplate.getForObject("http://MS-SERVER-COMMON/users/id?id=" + id, User.class);
    }

    public Long save(User user) {
        log.debug("UserAgent is get method received object parameter 'User'{}", user);
        Long aLong = restTemplate.postForObject("http://MS-SERVER-COMMON/users", user, Long.class);
        log.debug("UserAgent received result{}", aLong);
        return aLong;
//        return restTemplate.getForObject("http://MS-SERVER-COMMON/users/id?id=" + id, User.class);

    }

    public Integer delete(Long id) {
        url = "http://MS-SERVER-COMMON/users/id?id=" + id;
        restTemplate.delete(url);
        return 1;
/*
        // 请求头
        HttpHeaders headers = new HttpHeaders();
        MimeType mimeType = MimeTypeUtils.parseMimeType("application/json");
        MediaType mediaType = new MediaType(mimeType.getType(), mimeType.getSubtype(), Charset.forName("UTF-8"));
        // 请求体
        headers.setContentType(mediaType);
        //提供json转化功能
        ObjectMapper mapper = new ObjectMapper();
        String str = null;
        MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
        params.add("id",id.toString());
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
        ResponseEntity<Integer> resultEntity = restTemplate.exchange(url, HttpMethod.DELETE, entity, Integer.class);
        log.debug("Received resultEntity is{}", resultEntity);*/
//        return resultEntity.getBody();


    }

    public    User update(User user){
        url = "http://MS-SERVER-COMMON/users" ;
        return  restTemplate.postForObject(url, user, User.class);
    }

    public List<User> list() {
        url = "http://MS-SERVER-COMMON/users" ;
        return restTemplate.getForObject(url, List.class);

    }
}


//
//    public    User get(Long id);
//
//    public List<User> list();
