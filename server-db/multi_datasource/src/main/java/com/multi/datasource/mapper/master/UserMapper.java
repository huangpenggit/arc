package com.multi.datasource.mapper.master;

import com.arc.model.domain.common.User ;
import org.springframework.stereotype.Service;

@Service
public interface UserMapper {

//    int save(User record);

//    int delete(Long id);

//    int update(User record);

    User get(Long id);

//    List<User> list();

}
