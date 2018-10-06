package com.arc.server.system.service;

import com.arc.model.domain.system.SsoUser;
import lombok.extern.slf4j.Slf4j;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

/**
 * @author: yechao
 * @date: 2018/10/6 16:45
 * @description:
 */
@Slf4j
@RunWith(SpringRunner.class)
@SpringBootTest
public class SsoUserServiceTest {

    @Autowired
    private SsoUserService ssoUserService;


    @Test
    public void save() {
        SsoUser user = new SsoUser();
        user.setAvatar("https://avatars0.githubusercontent.com/u/34770979?s=40&v=4");
        user.setNickname("一");
        user.setSign(1);
        Long save = ssoUserService.save(user);
        Assert.assertNotNull(save);
    }


    @Before
    public void setUp() throws Exception {
        SsoUser user = new SsoUser();
        user.setAvatar("https://avatars0.githubusercontent.com/u/34770979?s=40&v=4");
        user.setNickname("一");
        user.setSign(1);
        Long save = ssoUserService.save(user);
        log.debug("result {}", save);
        Assert.assertNotNull(save);
    }

    @Test
    public void delete() {
        List<SsoUser> list = ssoUserService.list();
        Long id = list.size() > 0 ? 0L : list.get(1).getId();
        int delete = ssoUserService.delete(id);
        log.debug("result {}", delete);
        Assert.assertTrue(delete == 1);
    }

//    @After
//    public void tearDown() throws Exception {
//    }

    @Test
    public void update() {
    }

    @Test
    public void get() {
    }

    @Test
    public void getByUsername() {
    }

    @Test
    public void getByNickname() {
    }

    @Test
    public void list() {
        List<SsoUser> list = ssoUserService.list();
        log.debug("result {}", list.size());
        Assert.assertTrue(!list.isEmpty());
    }
}
