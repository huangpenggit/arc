package com.arc.wechat.service.impl;

import com.arc.dto.wechat.WeChatDTO;
import com.arc.model.wechat.WeChatScanQRCodeRecord;
import com.arc.wechat.mapper.two.WeChatScanQRCodeRecordMapper;
import com.arc.wechat.service.WeChatScanQRCodeRecordService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Base64Utils;

import java.io.UnsupportedEncodingException;
import java.util.Collections;
import java.util.List;

@Service
@Slf4j
public class WeChatScanQRCodeRecordServiceImpl implements WeChatScanQRCodeRecordService  {
    @Autowired
    private WeChatScanQRCodeRecordMapper weChatScanQRCodeRecordMapper;


    @Override
    public int insert(WeChatScanQRCodeRecord model) {
        return weChatScanQRCodeRecordMapper.insert(model);
    }

    @Override
    public List<WeChatScanQRCodeRecord> listByActivityId(Integer activityId) {
        return weChatScanQRCodeRecordMapper.listByActivityId(activityId);
    }

    @Override
    public List<WeChatScanQRCodeRecord> listPage(WeChatDTO weChatDTO) {
        List<WeChatScanQRCodeRecord> records = weChatScanQRCodeRecordMapper.listPage(weChatDTO);
//        for (WeChatScanQRCodeRecord record : records) {
//            w
//        }

        if (records == null) {
            return Collections.emptyList();
        }
        for (WeChatScanQRCodeRecord record : records) {
            String codeNickName = record.getCodeNickName();
            log.debug("for中 解码前----{}", codeNickName);
            String nick = decStringToString(codeNickName);
            log.debug("for中 解码后----{}", nick);
            record.setCodeNickName(nick);
        }

        return records;
    }

    @Override
    public int listPageCount(WeChatDTO weChatDTO) {
        return weChatScanQRCodeRecordMapper.listPageCount(weChatDTO);
    }


    //解密方法提供
    public static String decStringToString(String encodeToString) {
        byte[] decodeFromString = Base64Utils.decodeFromString(encodeToString);
        String decodeToString = null;
        try {
            decodeToString = new String(decodeFromString,"utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            log.debug("解码出错了     " + e.getMessage());
        }
        log.debug("解码前的参数     " + encodeToString);
        log.debug("解码后的string  " + decodeToString);
        return decodeToString;
    }

}
