package com.arc.wechat.filter;

public class DuplicateRemoveMessage {

    private String MsgId;

    private String FromUserName;

    private String CreateTime;

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((CreateTime == null) ? 0 : CreateTime.hashCode());
        result = prime * result + ((FromUserName == null) ? 0 : FromUserName.hashCode());
        result = prime * result + ((MsgId == null) ? 0 : MsgId.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)                                    //对象一样吗
            return true;
        if (obj == null)                                    //两个都是null的话，目标对象是null--返回false
            return false;
        if (getClass() != obj.getClass())      //类型不匹配，则不一样--false
            return false;

        DuplicateRemoveMessage other = (DuplicateRemoveMessage) obj;
        if (CreateTime == null) {                 //本地为创建---时间为null
            if (other.CreateTime != null)     //两个的时间都不一样（本地为null），则不一样--false
                return false;
        } else if (!CreateTime.equals(other.CreateTime))  //两个的时间都不一样（不为null 情况），则不一样--false
            return false;
        if (FromUserName == null) {
            if (other.FromUserName != null)
                return false;
        } else if (!FromUserName.equals(other.FromUserName))
            return false;
        if (MsgId == null) {
            if (other.MsgId != null)
                return false;
        } else if (!MsgId.equals(other.MsgId))
            return false;
        return true;
    }

    //get---set方法

    public String getMsgId() {
        return MsgId;
    }

    public void setMsgId(String msgId) {
        MsgId = msgId;
    }

    public String getFromUserName() {
        return FromUserName;
    }

    public void setFromUserName(String fromUserName) {
        FromUserName = fromUserName;
    }

    public String getCreateTime() {
        return CreateTime;
    }

    public void setCreateTime(String createTime) {
        CreateTime = createTime;
    }

    @Override
    public String toString() {                                              //toString方法
        StringBuilder builder = new StringBuilder();
        builder.append("DuplicateRemovalMessage [MsgId=");
        builder.append(MsgId);
        builder.append(", FromUserName=");
        builder.append(FromUserName);
        builder.append(", CreateTime=");
        builder.append(CreateTime);
        builder.append("]");
        return builder.toString();
    }

}
