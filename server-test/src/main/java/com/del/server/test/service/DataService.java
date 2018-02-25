package com.del.server.test.service;

import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import java.util.Map;

@FeignClient(value = "ms-server-common")
public interface DataService {

	@RequestMapping(value = "/sms/send",method = RequestMethod.POST)
    String send(@RequestBody Map<String, String> params);

	@RequestMapping(value = "/user",method = RequestMethod.GET)
    List listAll();
}
