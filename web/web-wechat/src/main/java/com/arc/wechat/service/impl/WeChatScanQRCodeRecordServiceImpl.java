package com.arc.wechat.service.impl;

import com.arc.dto.wechat.WeChatDTO;
import com.arc.model.wechat.WeChatScanQRCodeRecord;
import com.arc.wechat.mapper.two.WeChatScanQRCodeRecordMapper;
import com.arc.wechat.service.WeChatScanQRCodeRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
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
        return weChatScanQRCodeRecordMapper.listPage(weChatDTO);
    }

    @Override
    public int listPageCount(WeChatDTO weChatDTO) {
        return weChatScanQRCodeRecordMapper.listPageCount(weChatDTO);
    }
}
