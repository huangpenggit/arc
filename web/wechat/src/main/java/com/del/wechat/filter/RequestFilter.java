package com.del.wechat.filter;

import java.util.ArrayList;
import java.util.List;

public class RequestFilter {
    private static final int MESSAGE_CACHE_SIZE = 1000;
    private static List<DuplicateRemoveMessage> MESSAGE_CACHE = new ArrayList<DuplicateRemoveMessage>(MESSAGE_CACHE_SIZE);

    /**
     * @return boolean 如果重复返回true
     * @Description: 判断微信请求是否重复
     * 传入参数为请求对象封装的xmlMessageEntity
     */
//        public static boolean isDuplicate(Map<String, String> request) {       //map
//        DuplicateRemoveMessage duplicateRemoveMessage = new DuplicateRemoveMessage();
//        duplicateRemoveMessage.setCreateTime(Long.toString(xmlMessageEntity.getCreateTime()));//获取的时间是long转换成String
//        duplicateRemoveMessage.setMsgId(Long.toString(xmlMessageEntity.getMsgId()));//获取的msgId是long转换成String
//        duplicateRemoveMessage.setFromUserName(xmlMessageEntity.getFromUserName());

//            String fromUserName = request.get("FromUserName");                      //用map接收的--拿到请求者名字
//            String createTime = request.get("CreateTime");                     //用map接收的--拿到请求者时间
//            String msgId = request.get("MsgId");                     //用map接收的--拿到请求者msgId
    public static boolean isDuplicate(XmlMessageEntity xmlMessageEntity) {       //map


        String fromUserName = xmlMessageEntity.getFromUserName();                      //用map接收的--拿到请求者名字
        String createTime = Long.toString(xmlMessageEntity.getCreateTime());                     //用map接收的--拿到请求者时间
        String msgId = xmlMessageEntity.getMsgId();                     //用map接收的--拿到请求者msgId

        DuplicateRemoveMessage duplicateRemoveMessage = new DuplicateRemoveMessage();

        if (msgId != null) {                                                    //msgId有值就缓存
            duplicateRemoveMessage.setMsgId(msgId);
        } else {                                                                                    //否则就新建DuplicateRemoveMessage对象
            duplicateRemoveMessage.setCreateTime(createTime);
            duplicateRemoveMessage.setFromUserName(fromUserName);
        }
        System.out.println("    ////////////////////////////////核心比较操作操作RequestFilter");
        //核心比较操作操作
        if (MESSAGE_CACHE.contains(duplicateRemoveMessage)) {//去比较这个对象是否在本地服务器上存在
            System.out.println(MESSAGE_CACHE.size());
            return true;                                                                                              // 缓存中存在，直接pass
        } else {
            System.out.println(MESSAGE_CACHE.size());
            setMessageToCache(duplicateRemoveMessage);                    // 缓存中不存在，返回false
            return false;
        }
    }

    //性能方面的维护--map到一定大小1000 ----之后就清空
    private static void setMessageToCache(DuplicateRemoveMessage DuplicateRemoveMessage) {
        if (MESSAGE_CACHE.size() >= MESSAGE_CACHE_SIZE) {
            MESSAGE_CACHE.remove(0);//超过一定容量后就清空
        }
        MESSAGE_CACHE.add(DuplicateRemoveMessage);
    }
}

