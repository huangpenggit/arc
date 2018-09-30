package com.arc.wechat.mapper.two;

import com.arc.model.domain.wechat.WeChatDTO;
import com.arc.model.domain.wechat.WeChatScanQRCodeRecord;

import java.util.List;


/**
 * 微信扫码记录 mapper 接口
 *
 * @author yechao
 * @since 2018-07-26
 */
public interface WeChatScanQRCodeRecordMapper {

    /**
     * 保存
     * 时间字段做了处理 可以不传
     *
     * @param model
     * @return
     */
    int insert(WeChatScanQRCodeRecord model);

    /**
     * 列表查询
     *
     * @param activityId
     * @return
     */
    List<WeChatScanQRCodeRecord> listByActivityId(Integer activityId);

    /**
     * 分页查询
     *
     * @param weChatDTO
     * @return
     */
    List<WeChatScanQRCodeRecord> listPage(WeChatDTO weChatDTO);


    int listPageCount(WeChatDTO weChatDTO);

}
