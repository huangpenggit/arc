//index.js
//获取应用实例
var app = getApp();
Page({
    data: {
        motto: 'Hello World',
        userInfo: {},
        einputinfo: null,//输入框值
        expressInfo: null //快递信息
    },
    //事件处理函数
    bindViewTap: function () {
        wx.navigateTo({
            url: '../todos/todos'
        })
    },
    onLoad: function () {
        console.log('onLoad');
        var that = this;
        //调用应用实例的方法获取全局数据
        app.getUserInfo(function (userInfo) {
            //更新数据
            that.setData({
                userInfo: userInfo
            })
        })
    },
    //快递输入框事件
    input: function (e) {
        this.setData({einputinfo: e.detail.value});
    },
    //查询事件
    btnClick: function () {
        var thisexpress = this;
        app.getExpressInfo(this.data.einputinfo, function (data) {
            console.log(data);
            thisexpress.setData({expressInfo: data})
        })
    }
});