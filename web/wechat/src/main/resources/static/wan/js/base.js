/* 公共js代码 */
/* 判断用户终端是PC还是移动设备，true为PC */
function IsPC() {
    var userAgentInfo = navigator.userAgent;
    var Agents = ["Android", "iPhone",
        "SymbianOS", "Windows Phone",
        "iPad", "iPod"
    ];
    var flag = true;
    for(var v = 0; v < Agents.length; v++) {
        if(userAgentInfo.indexOf(Agents[v]) > 0) {
            flag = false;
            break;
        }
    }
    return flag;
}

/* 适配设备，显示合适的字体大小及元素宽度
 最大显示为14px，因为目前适配页面最大宽度为640px;
 */
new function() {
    var _self = this;
    _self.width = 75;
    _self.fontSize = 10;
    _self.cWidth = document.body && document.body.clientWidth || document.getElementsByTagName("html")[0].offsetWidth;
    _self.widthProportion = function() {
        var p = (document.body && document.body.clientWidth || document.getElementsByTagName("html")[0].offsetWidth) / _self.width;
        if(!IsPC() && _self.cWidth > 750) {
            p = 1;
        }
        if(p > 1.4 || _self.cWidth <= 750) {
            p = p;
        }
        return p;
    };
    _self.changePage = function() {
        var oHtml = document.getElementsByTagName("html")[0];
        oHtml.setAttribute("style", "font-size:" + _self.widthProportion() * _self.fontSize + "px");
    };
    _self.changePage();
    window.addEventListener('resize', function() {
        _self.changePage();
    }, false);
};

/* 判断用户终端是否移动端，如果为移动端，click事件替换为touchstart
 * 如果为PC端，页面跳转
 * */
var myClick = "";
var myBrowserOff = IsPC();
if(!myBrowserOff) {
    myClick = "touchend";
} else {
    myClick = "click";
}

/*路径*/
var post_url = "/webAPI/api";
var post_uc_url = "/webAPI/uc/api";
var post_ub_url = "/webAPI/ub/api";

//var post_url = "/mbm/api";
//var post_uc_url = "/mbm/uc/api";
//var post_ub_url = "/mbm/ub/api";


//var post_url = "http://192.168.111.179:8080/webAPI/api";
//var post_uc_url = "http://192.168.111.179:8080/webAPI/uc/api";
//var post_ub_url = "http://192.168.111.179:8080/webAPI/ub/api";
var localUrl = "/hxwj-wkj-controller/";

/*分享域名*/
//var shareUrl = "https://webtest.wanjiajinfu.com/";

//var shareUrl = "https://webrelease.wanjiajinfu.com/";

var shareUrl = "https://weixin.wanjiajinfu.com/";

/*日期格式化*/
Date.prototype.format = function(format){
    var o = {
        "M+" : this.getMonth()+1, //month
        "d+" : this.getDate(), //day
        "h+" : this.getHours(), //hour   
        "m+" : this.getMinutes(), //minute   
        "s+" : this.getSeconds(), //second   
        "q+" : Math.floor((this.getMonth()+3)/3), //quarter   
        "S" : this.getMilliseconds() //millisecond   
    }

    if(/(y+)/.test(format)) {
        format = format.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
    }

    for(var k in o) {
        if(new RegExp("("+ k +")").test(format)) {
            format = format.replace(RegExp.$1, RegExp.$1.length==1 ? o[k] : ("00"+ o[k]).substr((""+ o[k]).length));
        }
    }

    return format;
}


/*图片验证码*/
var txtCode;

function createCode() {
    txtCode = "";
    var codeLength = 6; //验证码的长度
    var checkCode = document.getElementById("getTxtCode");
    var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
        'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
        'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
    for(var i = 0; i < codeLength; i++) {
        var charNum = Math.floor(Math.random() * 52);
        txtCode += codeChars[charNum];
    }
    if(checkCode) {
        checkCode.className = "getTxtCode";
        checkCode.value = txtCode;
    }
}

function validateCode() {
    var inputCode = document.getElementById("txtCode").value;
    if(inputCode.length <= 0) {
        alert("请输入验证码！");
    } else if(inputCode.toUpperCase() != txtCode.toUpperCase()) {
        alert("验证码输入有误！");
        createCode();
    } else {
        alert("验证码正确！");
    }
}

/*input 输入限制，只能输入数字，保留小数点后两位*/
function clearNoNum(obj){
    //修复第一个字符是小数点 的情况.  
    if(obj !=''&& obj.substr(0,1) == '.'){
        obj="";
    }
    obj = obj.replace(/^0*(0\.|[1-9])/, '$1');//解决 粘贴不生效  
    obj = obj.replace(/[^\d.]/g,"");  //清除“数字”和“.”以外的字符  
    obj = obj.replace(/\.{2,}/g,"."); //只保留第一个. 清除多余的       
    obj = obj.replace(".","$#$").replace(/\./g,"").replace("$#$",".");
    obj = obj.replace(/^(\-)*(\d+)\.(\d\d).*$/,'$1$2.$3');//只能输入两个小数       
    if(obj.indexOf(".")< 0 && obj !=""){//以上已经过滤，此处控制的是如果没有小数点，首位不能为类似于 01、02的金额  
        if(obj.substr(0,1) == '0' && obj.length == 2){
            obj= obj.substr(1,obj.length);
        }
    }
    return obj;
}


/*获取地址栏参数*/
function getUrlParam(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if(r != null) {
        return decodeURI(r[2]);
    } else {
        return null;
    }
}


/*
 * 回主页
 */
function backHome() {
    document.location.href = '/mobile/';
}
/*
 * 显示菜单
 */
function showMenu() {
    if($("#open_menu").is(':hidden')) {
        $("#open_menu").show();
    } else {
        $("#open_menu").hide();
    }
}

/*
 * Cookie操作
 */
function getCookie(key) {
    var t = document.cookie;
    var n = t.split("; ");
    try {
        for(var r = 0; r < n.length; r++) {
            var i = n[r].split("=");
            if(i[0] == key) return unescape(i[1]);
        }
    } catch(e) {
        return "";
    }
    return "";
}

function getcookie(key) { //获取指定名称的cookie的值
    var n = document.cookie.split("; ");
    for(var i = 0; i < n.length; i++) {
        var temp = n[i].split("=");
        if(temp[0] == key) return unescape(temp[1]);
    }
}

function addCookie(key, value, time) {
    var r = key + "=" + escape(value);
    if(time > 0) {
        var i = new Date();
        i.setTime(i.getTime() + time * 24 * 3600 * 1000);
        r = r + "; expires=" + i.toGMTString() + "; path=/";
    } else {
        r = r + "; path=/";
    }
    document.cookie = r;
}

function deleteCookie(key) {
    var t = new Date();
    t.setTime(t.getTime() - 10000);
    document.cookie = key + "=; expires=" + t.toGMTString() + "; path=/";
}

//===============================================================================================
/*
 * 借款标状态
 */
function getCreditStatus(Status) {
    Status = parseInt(Status);
    switch(Status) {
        case 3:
            return '投标中';
        case 4:
            return '核保审批中';
        case 5:
            return '还款中';
        case 6:
            return '还款完成';
        case 11:
            return '流标';
    }
    return '投标中';
}

/*
 * 最高借款利率
 */
function getCreidtRateMax(Rate) {
    r = parseFloat(Rate) * 100;
    return r.toFixed(2);
}

/*
 * 借款期限单位 1天 2月
 */
function getDateType(Type) {
    return parseInt(Type) == 1 ? '天' : '个月';
}

function getTimeType(type) {
    return parseInt(type) <= 30 ? type + '天' : (type / 30) + '个月';
}

/*
 * 借款金额
 */
function getAmount(Amount) {
    Amount = parseInt(Amount);
    return Amount / 10000 + '万';
}

function getAmount1(Amount) {
    Amount = parseInt(Amount);
    return(Amount / 10000).toFixed(2);
}

/*
 * 投资进度比例例如
 */
function getBidPercentage(Percent) {
    return Percent * 100;
}

/*
 * 格式化日期
 */
function formatDt(dataStr, format) {
    if(format == 2) {
        return dataStr.substr(5, 5);
    } else if(1) {
        return dataStr.substr(0, 10);
    }
}

/*
 * 债权借款方式
 */
function getCrightType(type) {
    type = parseInt(type);
    switch(type) {
        case 1:
            return '一次性';
        case 2:
            return '等额本息';
        case 3:
            return '按月付息到期还本';
        default:
            return '';
    }
}

/*
 *
 */
function getBackStatus(status) {
    status = parseInt(status);
    switch(status) {
        case 1:
            return '审核中';
        case 2:
            return '审核成功';
        case 3:
            return '审核失败';
        case 4:
            return '验证成功';
        case 5:
            return '验证失败';
        default:
            return '';
    }
}

//将日期yyyy-MM-dd hh:mm:ss 替换为  yyyy/MM/dd hh:mm:ss 并且转换为时间戳
function replaceDate(dateTime){
    dateTime = dateTime.replace(/-/g,'/');
    dateTime = parseInt(new Date(dateTime).getTime());
    return dateTime;
}

/*
 * 格式化金额
 */
function fM45(money){
    money = Number(money);
    if(money == 0) {
        return "0.00";
    } else {
        money = money.toFixed(2);
        return money;
    }
    return "0.00";
}

//保留两位小数
function fM(money) {
    money = Number(money).toString();
    if(money == 0) {
        return "0.00";
    } else {
        // 获取小数 . 号第一次出现的位置  
        var firstIndex = money.indexOf('.', 0);
        if(firstIndex != -1){
            // 字符串截断
            var len = money.split(".")[1].length;
            if(len <= 1){
                return money + "0";
            }else{
                return money.substring(0, firstIndex + 3);
            }
        }else{
            return money+".00";
        }

    }
    return "0.00";
}
//千分位
function fMc(num) {
    num = num.toString().replace(/\$|\,/g, '');
    if(isNaN(num)){
        num = "0.00";
    }
    var reg=/\d{1,3}(?=(\d{3})+$)/g;
    var sign=num.replace(/^(\d+)((\.\d+)?)$/,function(s,s1,s2){return s1.replace(reg,"$&,")+s2;});
    return sign;
}

//保留4位小数-进一法
function fMc1(money) {
    money = parseFloat(money);
    if(money == 0) {
        return "0.0000";
    } else {
        money=money + "";
        var pointIndex = money.indexOf(".")+1;
        if(money.indexOf(".")!=-1){
            money = money.substring(0,pointIndex+5);
        }
        var valLen = money.toString().split(".");
        if(valLen.length == 1){
            money= money.toString()+".0000";
            return money;
        }
        if(valLen.length>1){
            if(valLen[1].length<2){
                money=money.toString()+"000";
            }else if(valLen[1].length<3){
                money=money.toString()+"00";
            }else if(valLen[1].length<4){
                money=money.toString()+"0";
            }else if(valLen[1].length>=4){
                var val = valLen[1].substr(valLen[1].length-1,1);
                money = Number(money);
                if(val != "0" && val != 0 && val != ""){
                    if((Math.ceil(money * 10000)/10000).toString().split(".")[1].length<4){
                        return fMc1(Math.ceil(money * 10000)/10000);
                    }else{
                        return Math.ceil(money * 10000)/10000;
                    }
                }else{
                    return money.toFixed(4);
                }
            }
            return money;
        }
        return money;
    }
    return "0.0000";
}

//保留2位小数-进1法
function fMc2(money) {
    money = parseFloat(money);
    if(money == 0) {
        return "0.00";
    } else {
        money=money + "";
        var pointIndex = money.indexOf(".")+1;
        if(money.indexOf(".")!=-1){
            money = money.substring(0,pointIndex+3);
        }
        var valLen = money.toString().split(".");
        if(valLen.length == 1){
            money= money.toString()+".00";
            return money;
        }
        if(valLen.length>1){
            if(valLen[1].length<2){
                money=money.toString()+"0";
            }else if(valLen[1].length>2){
                var val = valLen[1].substr(valLen[1].length-1,1);
                money = Number(money);
                if(val != "0" && val != 0 && val != ""){
                    return fMc2(Math.ceil(money * 100)/100);
                }else{
                    return money.toFixed(2);
                }
            }
            return money;
        }
        return money;
    }
    return "0.00";
}


/*
 * 获取URL参数
 */
function GetRequest(key) {
    var url = location.search; //获取url中"?"符后的字串
    var theRequest = new Object();
    if(url.indexOf("?") != -1) {
        var str = url.substr(1);
        strs = str.split("&");
        for(var i = 0; i < strs.length; i++) {
            theRequest[strs[i].split("=")[0]] = (strs[i].split("=")[1]);
        }
    }
    try {
        return theRequest[key];
    } catch(e) {
        return false;
    }
}

/*
 * 投标类型
 */
function getBidMode(bidMod) {
    bidMod = parseInt(bidMod);
    switch(bidMod) {
        case 1:
            return '台式电脑手动投标';
        case 2:
            return '移动设备手动投标';
        case 3:
            return '自动投标';
        default:
            return '';
    }
}

//去掉字符串头尾空格   
function trim(str) {
    return str.replace(/(^\s*)|(\s*$)/g, "");
}

function isPhone(s) {
    var partten = /^1[0-9]{10}$/;
//	var partten = /^1[34578]\d{9}$/;
    if(partten.test(s)) {
        return true;
    } else {
        return false;
    }
}

//验证170 171号段
function isSupportPhone(s) {
    var regPhone = /^(170|171)/
    if(regPhone.test(s)) {
        return false;
    } else {
        return true;
    }
}

function isPass(s) {
    if(trim(s) == '') {
        return false;
    } else {
        return true;
    }
}

/*
 * 获取用户类型
 */
function getUserType(type) {
    return parseInt(type) == 1 ? 'VIP' : '普通会员';
}

/*
 * 需要token的请求结果判定
 */
function checkPostToken(recode) {
    if(recode == '100097') {
        document.location.href = 'login.html';
    }
}

/*
 * 获取交易类型
 */
function getFeeType(feeType) {
    switch(feeType) {
        case 0:
            return '全部';
        case 1:
            return '充值';
        case 2:
            return '提现';
        case 3:
            return '提现手续费';
        case 4:
            return '竞标中利息';
        case 5:
            return '注册送奖金';
        case 6:
            return '推荐费';
        case 7:
            return '首次投资奖励';
        case 8:
            return '购买债权';
        case 9:
            return '债权转让管理费';
        case 11:
            return '后台充值';
        case 12:
            return '后台提现';
        case 21:
            return '投标';
        case 23:
            return '本金';
        case 24:
            return '借款利息';
        case 25:
            return '逾期借款利息';
        case 26:
            return '投资人居间服务费';
        case 29:
            return '担保公司逾期管理费';
        case 30:
            return '提前还款违约金';
        case 32:
            return '活期利息';
        case 33:
            return '首次充值赠送体验金';
        case 34:
            return '充值赠送体验金';
        case 35:
            return '回收赠送的体验金';
        case 36:
            return '实名认证成功送奖金';
        case 37:
            return '银行卡验证成功送奖金';
        default:
            return '其他';

    }
}

/*
 * 充值方式
 */
function getPayType(payType) {
    switch(payType) {
        case 1:
            return '宝付';
        case 2:
            return '通联';
        case 3:
            return '后台充值';
        default:
            return '其他';
    }
}
/*
 * 充值结果
 */
function getPayResult(payResult) {
    payResult = parseInt(payResult);
    switch(payResult) {
        case 1:
            return '充值成功';
        case 2:
            return '充值失败';
        case 3:
            return '充值中';
        default:
            return '';
    }
}

/*
 * 提现结果
 */
function getCashResult(cashResult) {
    cashResult = parseInt(cashResult);
    switch(cashResult) {
        case 1:
            return '提现成功';
        case 2:
            return '提现失败';
        case 3:
            return '提现审核中';
        default:
            return '';
    }
}
/*
 * 翻页函数
 */
function getpages(count, page, size, callfun) {
    var t = Math.ceil(parseInt(count) / parseInt(size));
    var str = '';
    for(var i = 1; i <= t; i++) {
        if(page == i) {
            str += '<span class="current">' + i + '</span>';
        } else {
            str += '<span onclick="javascript:' + callfun + '(this);" data-page="' + i + '"><a href="javascript:;">' + i + '</a></span>';
        }
    }
    return str;
}

/*
 * 是否是手机号
 */
function isPhone(s) {
    var partten = /^1[0-9]{10}$/;
//	var partten = /^1[34578]\d{9}$/;
    if(partten.test(s)) {
        return true;
    } else {
        return false;
    }
}
/*
 * 是否是密码
 */
function isPass(s) {
    if(trim(s) == '' || trim(s) == null) {
        return false;
    } else {
        return true;
    }
}
/*
 * 是否是身份证号
 */
function IdCardValidate(idCard) {
    idCard = trim(idCard.replace(/ /g, "")); //去掉字符串头尾空格
    if(idCard.length == 15) {
        return isValidityBrithBy15IdCard(idCard); //进行15位身份证的验证
    } else if(idCard.length == 18) {
        var a_idCard = idCard.split(""); // 得到身份证数组
        if(isValidityBrithBy18IdCard(idCard) && isTrueValidateCodeBy18IdCard(a_idCard)) { //进行18位身份证的基本验证和第18位的验证
            return true;
        } else {
            return false;
        }
    } else {
        return false;
    }
}
/**
 * 判断身份证号码为18位时最后的验证位是否正确
 * @param a_idCard 身份证号码数组
 * @return
 */
function isTrueValidateCodeBy18IdCard(a_idCard) {
    var Wi = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2, 1]; // 加权因子
    var ValideCode = [1, 0, 10, 9, 8, 7, 6, 5, 4, 3, 2]; // 身份证验证位值.10代表X
    var sum = 0; // 声明加权求和变量
    if(a_idCard[17].toLowerCase() == 'x') {
        a_idCard[17] = 10; // 将最后位为x的验证码替换为10方便后续操作
    }
    for(var i = 0; i < 17; i++) {
        sum += Wi[i] * a_idCard[i]; // 加权求和
    }
    valCodePosition = sum % 11; // 得到验证码所位置
    if(a_idCard[17] == ValideCode[valCodePosition]) {
        return true;
    } else {
        return false;
    }
}
/**
 * 验证18位数身份证号码中的生日是否是有效生日
 * @param idCard 18位书身份证字符串
 * @return
 */
function isValidityBrithBy18IdCard(idCard18) {
    var year = idCard18.substring(6, 10);
    var month = idCard18.substring(10, 12);
    var day = idCard18.substring(12, 14);
    var temp_date = new Date(year, parseFloat(month) - 1, parseFloat(day));
    // 这里用getFullYear()获取年份，避免千年虫问题
    if(temp_date.getFullYear() != parseFloat(year) ||
        temp_date.getMonth() != parseFloat(month) - 1 ||
        temp_date.getDate() != parseFloat(day)) {
        return false;
    } else {
        return true;
    }
}
/**
 * 验证15位数身份证号码中的生日是否是有效生日
 * @param idCard15 15位书身份证字符串
 * @return
 */
function isValidityBrithBy15IdCard(idCard15) {
    var year = idCard15.substring(6, 8);
    var month = idCard15.substring(8, 10);
    var day = idCard15.substring(10, 12);
    var temp_date = new Date(year, parseFloat(month) - 1, parseFloat(day));
    // 对于老身份证中的你年龄则不需考虑千年虫问题而使用getYear()方法
    if(temp_date.getYear() != parseFloat(year) ||
        temp_date.getMonth() != parseFloat(month) - 1 ||
        temp_date.getDate() != parseFloat(day)) {
        return false;
    } else {
        return true;
    }
}

//判断身份证是否大于18岁
function Age(sn) {
    //sn = 123456199001011234;
    if(!sn) {
        return false;
    }
    var _snYear = parseInt(sn.substr(6, 4)),
        _snMonth = parseInt(sn.substr(10, 2)),
        _snDate = parseInt(sn.substr(12, 2));
    var _now = new Date();
    var _nowYear = _now.getFullYear(),
        _nowMonth = _now.getMonth() + 1,
        _nowDate = _now.getDate();
    if(_nowYear - _snYear < 18) {
        return 2;
    }else if(_nowYear - _snYear >80){
        return 3;
    }else if(_nowYear - _snYear == 18) {
        if(_nowMonth - _snMonth < 0) {
            return 2;
        } else if(_nowMonth - _snMonth == 0) {
            if(_nowDate - _snDate < 0) {
                return 2;
            }
        }
    }else if(_nowYear - _snYear == 80) {
        if(_nowMonth - _snMonth > 0) {
            return 3;
        } else if(_nowMonth - _snMonth == 0) {
            if(_nowDate - _snDate >= 0) {
                return 3;
            }
        }
    }
    return 1;
}

//去掉字符串头尾空格   
function trim(str) {
    return str.replace(/(^\s*)|(\s*$)/g, "");
}

//检测银行卡号
function isValidityCard(card) {
    var partten = /^[1-9]{1}[0-9]{7,20}$/;
    if(partten.test(card)) {
        return true;
    } else {
        return false;
    }
}

//其他杂项函数
//CharMode函数
//测试某个字符是属于哪一类.
function CharMode(iN) {
    if(iN >= 48 && iN <= 57) //数字
        return 1;
    if(iN >= 65 && iN <= 90) //大写字母
        return 2;
    if(iN >= 97 && iN <= 122) //小写
        return 4;
    else
        return 8; //特殊字符
}

//bitTotal函数
//计算出当前密码当中一共有多少种模式
function bitTotal(num) {
    modes = 0;
    for(i = 0; i < 4; i++) {
        if(num & 1) modes++;
        num >>>= 1;
    }
    return modes;
}

//checkStrong函数
//返回密码的强度级别
function checkStrong(sPW) {
    if(sPW.length <= 4)
        return 0; //密码太短
    Modes = 0;
    for(i = 0; i < sPW.length; i++) {
        //测试每一个字符的类别并统计一共有多少种模式.
        Modes |= CharMode(sPW.charCodeAt(i));
    }
    return bitTotal(Modes);
}

//pwStrength函数
//返回密码强度 0低 1中 2高
function pwStrength(pwd) {
    if(pwd == null || pwd == '') {
        return 0;
    } else if(pwd.length < 6) {
        return 0;
    } else {
        var S_level = checkStrong(pwd);
        switch(S_level) {
            case 0: //低
                return 0;
            case 1: //低
                return 0;
            case 2: //中
                return 1;
            default: //高
                return 2;
        }
    }
}

//==============================================
//登录状态改变
/*
 * 退出
 */
function godLogout() {
    if(appType == "android" && versionCompare("1.3.2",appVersion) != 0){
        wjjf.userInfoOutOfTime();
    }
    var godId = getCookie('godId');
    var tokenId = getCookie('tokenId');
    $.ajax({
        url: post_uc_url,
        type: "POST",
        cache: true,
        async: true,
        dataType: "json",
        data: {
            service_name: "god.logout",
            godId: godId,
            tokenId: tokenId
        },
        success: function(json) {
            var result = json.result;
            if( result == "100097" || result == "000000" || result == "100098") {
                deleteCookie("tokenId");
                deleteCookie("godId");
                deleteCookie("phone");
                deleteCookie("aliases");
                deleteCookie("fullName");
                deleteCookie("email");
                deleteCookie("picture");
                deleteCookie("idNumber");
                deleteCookie("idType");
                deleteCookie("userType");
                deleteCookie("isIDNumber");
                deleteCookie("isValidateBank");
                deleteCookie("recommendGodId");
                deleteCookie("recommendTypeId");
                deleteCookie("godType");
                deleteCookie("rdmStr");
                deleteCookie("recommendTypeName");
                removeHistory('index.html');
            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            //alert(errorThrown);
        }
    });
    $
}
/*
 * 登录
 */
function loginCookie(json) {
    addCookie('tokenId', json.tokenId); //用户认证令牌
    addCookie('godId', json.god.id); //用户ID
    addCookie('aliases', json.god.aliases); //用户名
    addCookie('fullName', json.god.fullName); //真实姓名
    addCookie('phone', json.god.phone); //手机号码
    addCookie('email', json.god.email); //用户邮箱
    addCookie('picture', json.god.picture); //头像图片地址
    addCookie('idNumber', json.god.idNumber); //证件ID
    addCookie('idType', json.god.idType); //证件类型
    addCookie('userType', json.god.userType); //用户类型 0 普通用户,1 为 VIP用户
    addCookie('isIDNumber', json.god.isIDNumber); //证件验证标志(1为验证通过，0为未验证)
    addCookie('isValidateBank', json.god.isValidateBank); //银行卡验证标志(1为验证通过，0为未验证)
    addCookie('recommendGodId', json.god.recommendGodId); //推荐人Id
    addCookie('recommendTypeId', json.god.recommendTypeId);//推荐类型Id
    addCookie('godType', json.god.godType); //用户类型(投资人=1,借款人=2,担保公司=3,平台=4,体验标=5)
    addCookie('rdmStr', json.god.rdmStr); //邀请码
    addCookie('recommendTypeName',json.god.recommendTypeName);//用户等级
    return;
}
/*
 * 是否登录
 */
function isLogin(obj) {
    if(getCookie('tokenId') == "" || getCookie('godId') == "") {
        deleteCookie("tokenId");
        deleteCookie("godId");
        deleteCookie("phone");
        deleteCookie("aliases");
        deleteCookie("fullName");
        deleteCookie("email");
        deleteCookie("picture");
        deleteCookie("idNumber");
        deleteCookie("idType");
        deleteCookie("userType");
        deleteCookie("isIDNumber");
        deleteCookie("isValidateBank");
        deleteCookie("recommendGodId");
        deleteCookie("recommendTypeId");
        deleteCookie("godType");
        deleteCookie("rdmStr");
        deleteCookie("recommendTypeName");
        if(obj){
            if(obj.financialPlanId!=""&&obj.financialPlanId!=null&&obj.financialPlanId!=undefined){
                removeHistory('login.html?back='+obj.back+'&success='+obj.success+'&financialPlanId='+obj.financialPlanId);
            }else{
                removeHistory('login.html?back='+obj.back+'&success='+obj.success);
            }
        }else{
            document.location.href = 'login.html';
        }
        return false;
    } else {
        return true;
    }
    return false;
}

/*
 * 设置顶部bar
 */
function setTopBar() {
    if(isLogin()) {
        var phone = getCookie('phone');
        var uname = getCookie('uname');
        uname = uname == "" ? phone : uname;
        $("#login_bar").html('<a href="index.html">您好！' + uname + '</a> | <a href="javascript:godLogout();">退出</a>');
    }
}
/*
 * 设置首页bar
 */
function setHomeLoginBar() {
    if(isLogin()) {
        $("#unknown_user").html('年化收益率高达 <b>12<i>%</i></b><p style="font-size:12px;padding-bottom:4px;color:#fff;">注册送万元体验金，首投2000立返30元</p><a href="account/index.shtml" class="mainBtn">我的账号</a><p style="margin:0px;padding-top:3px;padding-left:70px;"><span style="color:#fff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><a id="a-login2" href="javascript:godLogout();" style="font-weight:bold;text-decoration:underline;">安全退出</a></p>');
    }

}

/*
 * 获取短信验证码
 */
function getMMCode(phone, logicType, type) {
    $.ajax({
        url: post_uc_url,
        type: "POST",
        cache: true,
        async: true,
        dataType: "json",
        data: {
            service_name: "activeCode.phone",
            phone: phone,
            logicType: logicType,
            type: type
        },
        success: function(json) {
            try {
                //if(json.result=="000000"){
                alert(json.resultdesc);
                //}
            } catch(e) {}
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            alert(errorThrown);
        }
    });
}

function getMessageCode(phone, type) {
    getMMCode(phone, type, 1);
}
/*
 * 获取语音验证码
 */
function getVoiceCode(phone, type) {
    getMMCode(phone, type, 2);
}

/*
 * 查询实名认证状态
 * token,已认证调用,未认证调用
 */
function getRealName(tokenId, callbackOk, callbackNo) {
    //获取当前信息
    $.ajax({
        url: post_uc_url,
        type: "POST",
        cache: true,
        async: true,
        dataType: "json",
        data: {
            service_name: "god.queryRealName",
            tokenId: tokenId
        },
        success: function(json) {
            try {
                if(json.result == "000000") {
                    callbackOk(json);
                } else {
                    if(json.result == "203014") {
                        callbackNo();
                        return;
                    } else {
                        alert(json.resultdesc);
                        return false;
                    }
                }
            } catch(e) {}
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            alert(errorThrown);
        }
    });
}
/*
 * 获取账户金额信息
 */
function getAccountAmount(callbackOk, callbackNo) {
    $.ajax({
        url: post_url,
        type: "POST",
        cache: false,
        async: true,
        dataType: "json",
        data: {
            service_name: "mbm_mbminfo_req",
            godId: getCookie('godId'),
            tokenId: unescape(getCookie('tokenId'))
        },
        success: function(json) {
            try {
                if(json.result == "000000") {
                    callbackOk(json);
                } else {
                    callbackNo();
                }
            } catch(e) {}
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            alert(errorThrown);
        }
    });
}
/*
 * 获取取现金额信息
 */
function getWithdrawAmount(callbackOk, callbackNo) {
    $.ajax({
        url: post_url,
        type: "POST",
        cache: false,
        async: true,
        dataType: "json",
        data: {
            service_name: "mbm_mbmremain_req",
            godId: getCookie('godId'),
            tokenId: unescape(getCookie('tokenId'))
        },
        success: function(json) {
            try {
                if(json.result == "000000") {
                    callbackOk(json);
                } else {
                    callbackNo();
                }
            } catch(e) {}
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            alert(errorThrown);
        }
    });
}

/*倒计时*/
var countdown = 60;

function settime(_generate_code) {
    if(countdown == 0) {
        $(_generate_code).attr("disabled", false);
        $(_generate_code).val("获取短信验证码");
        countdown = 60;
        return false;
    } else {
        $(_generate_code).attr("disabled", true);
        $(_generate_code).val("重新发送(" + countdown + ")");
        countdown--;
    }
    setTimeout(function() {
        settime(_generate_code);
    }, 1000);
}


var bankImg = [
    "ic_guangfa", "ic_youzheng", "ic_zhongxin", "ic_gongshang", "ic_nongye",
    "ic_zhonggu", "ic_jianshe", "ic_guangda", "ic_xingye", "ic_pingan",
    "ic_huaxia", "ic_beijing", "ic_hangzhou", "ic_shanghai", "ic_zheshang",
    "ic_guangzhou", "ic_dongguan1", "ic_shenzhen_nongye", "ic_ningbo", "ic_guangzhou_nongshang",
    "ic_guangdong_xinhezuoshe", "ic_gansu_nongxin", "ic_jiangsu", "ic_suzhou_changshan", "ic_heilongjiang_nongxin",
    "ic_guangdong_nanyue", "ic_huhan_nongshang", "ic_jiaotong", "ic_minsheng", "ic_zhaoshang",
    "ic_pufa", "ic_pufa", "ic_hengfeng", "ic_dongguan"
];

var bankName = [
    "广发银行", "中国邮政储蓄银行", "中信银行", "中国工商银行", "中国农业银行",
    "中国银行", "中国建设银行", "光大银行", "兴业银行", "平安银行",
    "华夏银行", "北京银行", "杭州银行", "上海银行", "浙商银行",
    "广州银行", "东莞农村商业银行", "深圳农村商业银行", "宁波银行", "广州农村商业银行",
    "广东省农村信用联合社", "甘肃省农村信用联合社", "江苏银行", "江苏长江商业银行", "黑龙江省农村信用联合社",
    "广东南粤银行", "武汉农村商业银行", "交通银行", "中国民生银行", "招商银行",
    "浦发银行", "浦东发展银行", "恒丰银行", "东莞银行" //浦发银行 和  浦东发展银行 是同一家银行
];

/*银行卡匹配*/
function getBankIcon(mBankName) {
    var bankIcon = "";
    $.each(bankName, function(i, v) {
        if($.trim(v) == $.trim(mBankName)||$.trim(v) == $.trim("中国"+mBankName)||$.trim(v.substr(0,4)) == $.trim(mBankName.substr(0,4))||$.trim(v) == $.trim("中国"+mBankName.substr(0,4))) {
            if(i > bankImg.length) {
                return "";
            }
            bankIcon = bankImg[i];
        }
    });

    return bankIcon;
}


//获取IP
var localIp;

function getLocalIp(Value) {
    localIp = Value.Ip;
    return localIp;
}

//电话号码****
function hidePhone(str) {
    return str.substr(0, 3) + '****' + str.substr(7);
}

//姓名*
function hideName(str) {
    str = "*"+ str.substr(1);
    return str;
}

//计算器
function calculator(financialPlanId) {
    var linkJump = {"back":"investConfirm.html?financialPlanId="+financialPlanId};

    /*计算买入计算器*/
    $(".throw").on('keyup', function() {
        $(this).val($(this).val().replace(/\D/g,""));
//		var amount = ($(".amount").text())*10000;//可投金额
        var amount = _amount;
        var maxBidAmount = parseInt($(".maxBidAmount").text().replace(/,/g,""));//最大限额
        var availableAmount = parseFloat($(".availableAmount").text().replace(/,/g,""));//账户余额
        var throwNum = $(this).val();//买入金额
        if(parseFloat($(".ic_jiaxi span").eq(0).text())>0){
            var yearYield = (parseFloat($(".yearYield").eq(0).text())+parseFloat($(".ic_jiaxi span").eq(0).text()))/ 100;//预期收益
        }else{
            var yearYield = (parseFloat($(".yearYield").eq(0).text()))/100;//预期收益
        }
        var deadline = $("#deadline").text(); //借款周期
        var voucherVal = $('#raiseVoucher a').attr("val");//加息
        //判断可投金额是否大于限额
        if(amount > maxBidAmount){
            amount = maxBidAmount;
        }
        //判断是否加息
        if(voucherVal == undefined || voucherVal == "" || voucherVal== null){
            voucherVal = 0;
        }else{
            voucherVal = Number(voucherVal)/100;
        }
        //判断买入金额
        if(throwNum == "" || throwNum == null ) {
            $(".buyMoney").text("0.00");
            $(".avail").text("0.00");
            return false;
        }else if(throwNum <= 0 || throwNum == NaN) {
            throwNum = 0;
        }else{
            throwNum = parseInt(throwNum);
        }

        //判断全投
        var ck = $("#all").is(':checked');
        if(ck){
            $("#allThrow").trigger('click');
            throwNum = throwNum;
            $(".link").text("立即投资");
        }

        $(".throw").val(throwNum);

        //判断买入金额是否超出可投金额
        if(throwNum > amount) {
            layer.open({
                content: "目前最多可投"+amount+"元",
                skin: 'msg',
                time: 2 //2秒后自动关闭
            });
            if(amount <= 0){
                $(".link").attr("href", "javascript:;");
            }
            throwNum=parseInt(fM(amount)/100)*100;
            $(".throw").val(throwNum);
        }

        if(throwNum > availableAmount){
            $(".link").text("余额不足,去充值");
        }else{
            $(".link").text("立即投资");
        }

        var avail = (yearYield+voucherVal)*throwNum*deadline / 360;

        $(".avail").text(fMc(fMc2(avail)));

    });

    /*收益计算器*/
    /*打开弹框*/
    $(".showAvail").on('click', function() {
        $(".availDialog").show();
    });
    /*关闭弹框*/
    $(".availDialog").on('click', function() {
        $(this).hide();
        $(".throw").val("");
        $(".avail").text("0.00");
    });
    /*阻止冒泡*/
    $(".availCon").on('click', function(e) {
        e.stopPropagation();
    });
    /*关闭按钮*/
    $(".closeAvail").on('click', function(e) {
        e.stopPropagation();
        $(".availDialog").hide();
        $(".throw").val("");
        $(".avail").text("0.00");
    });

    /*买入按钮*/
    $(".availBtn").on('click', function(e) {
        e.stopPropagation();
        $(".availDialog").hide();
    });

}




//计算器 1元起投
function calculator1(financialPlanId) {
    var linkJump = {"back":"investConfirm.html?financialPlanId="+financialPlanId};


    /*计算买入计算器*/
    $(".throw").on('keyup', function() {
        $(this).val($(this).val().replace(/\D/g,""));
        var amount = parseInt($(".surplusAmount").text().replace(/,/g,""));//可投金额
        var maxBidAmount = parseInt($(".maxBidAmount").text().replace(/,/g,""));//最大限额
        var availableAmount = parseInt($(".availableAmount").text().replace(/,/g,""));//账户余额
        var throwNum = $(this).val();//买入金额
        if(parseFloat($(".ic_jiaxi span").eq(0).text())>0){
            var yearYield = (parseFloat($(".yearYield").eq(0).text())+parseFloat($(".ic_jiaxi span").eq(0).text()))/ 100;//预期收益
        }else{
            var yearYield = (parseFloat($(".yearYield").eq(0).text()))/100;//预期收益
        }
        var deadline = $("#deadline").text(); //借款周期
        var voucherVal = $('#raiseVoucher a').attr("val");//加息


        //判断可投金额是否大于限额
        if(amount > maxBidAmount){
            amount = maxBidAmount;
        }
        //判断是否加息
        if(voucherVal == undefined || voucherVal == "" || voucherVal== null){
            voucherVal = 0;
        }else{
            voucherVal = Number(voucherVal)/100;
        }
        //判断买入金额
        if(throwNum == "" || throwNum == null) {
            $(".buyMoney").text("0.0000");
            $(".avail").text("0.0000");
            return false;
        }else if(throwNum <= 0 || throwNum == NaN) {
            throwNum = 0;
        }else{
            throwNum = parseInt(throwNum);
        }

        //判断买入金额是否大于限额
        if(throwNum > maxBidAmount){
            throwNum = maxBidAmount;
        }

        //判断全投
        var ck = $("#all").is(':checked');
        if(ck){
            $("#allThrow").trigger('click');
            throwNum = throwNum;
            $(".link").text("立即投资");
        }

        $(".throw").val(throwNum);

        //判断买入金额是否超出可投金额
        if(throwNum > amount) {
            layer.open({//2秒后自动关闭
                content: "目前最多可投"+amount+"元",
                skin: 'msg',
                time: 2
            });
            if(amount <= 0){
                $(".link").attr("href", "javascript:;");
            }
            throwNum=parseInt(fM(amount));
            $(".throw").val(throwNum);
        }

        if(throwNum > availableAmount){
            $(".link").text("余额不足,去充值");
        }else{
            $(".link").text("立即投资");
        }

        var avail = (yearYield+voucherVal)*throwNum*1 / 360;
        $(".buyMoney").text(fMc(fMc2(throwNum)));
        $(".avail").text(fMc(fMc1(avail)));

    });


    /*收益计算器*/
    /*打开弹框*/
    $(".showAvail").on('click', function() {
        $(".availDialog").show();
    });
    /*关闭弹框*/
    $(".availDialog").on('click', function() {
        $(this).hide();
    });
    /*阻止冒泡*/
    $(".availCon").on('click', function(e) {
        e.stopPropagation();
    });
    /*关闭按钮*/
    $(".closeAvail").on('click', function(e) {
        e.stopPropagation();
        $(".availDialog").hide();
    });

    /*买入按钮*/
    $(".availBtn").on('click', function(e) {
        e.stopPropagation();
        $(".availDialog").hide();
    });

}


//计算天数差的函数，通用  
function  DateDiff(sDate1,  sDate2){
    var  oDate1,  oDate2,  iDays;
    oDate1 = new Date(sDate1).getTime();
    oDate2 = new Date(sDate2).getTime();
    iDays = parseInt(Math.abs(oDate1  -  oDate2));
    iDays =  parseInt(iDays /  1000  /  60  /  60  /24);//把相差的毫秒数转换为天数
    return  iDays;
}

//将url中_替换为&
function replaceUrl(urls){
    if(urls != ""){
        urls = urls.replace(/\_/g,"&");
    }
    return urls;
}



//限制浏览器只能在微信内置浏览器访问
function onlyWeiXin(){
    // 对浏览器的UserAgent进行正则匹配，不含有微信独有标识的则为其他浏览器
    var useragent = navigator.userAgent;
    if (useragent.match(/MicroMessenger/i) != 'MicroMessenger') {
        // 这里警告框会阻塞当前页面继续加载
        layer.open({
            content: "已禁止本次访问：您必须使用微信内置浏览器访问本页面！",
            shadeClose:false,
            btn:"确定",
            yes:function(index){
                layer.close(index);
                var opened = window.open('about:blank', '_self');
                // 以下代码是用javascript强行关闭当前页面
                opened.opener = null;
                opened.close();
            }
            /*skin: 'msg',
            time: 2 //2秒后自动关闭*/
        });
    }
}

//开启加载动画
function spinOpen(){
    $("body").append('<div class="spin" style="position:fixed; z-index:999; top:0; right:0; bottom:0; left:0;"><div id="foo" style="position:absolute; top:calc(50% - 40px); left:calc(50% - 40px);  width:80px; height:80px; border-radius:8px; background:rgba(0,0,0,.6);"></div></div>')

    var opts = {
        lines: 12, // The number of lines to draw
        length: 0, // The length of each line
        width: 10, // The line thickness
        radius: 10, // The radius of the inner circle
        corners: 1, // Corner roundness (0..1)
        rotate: 0, // The rotation offset
        color: '#fff', // #rgb or #rrggbb
        speed: 1, // Rounds per second
        trail: 60, // Afterglow percentage
        shadow: false, // Whether to render a shadow
        hwaccel: false, // Whether to use hardware acceleration
        className: 'spinner', // The CSS class to assign to the spinner
        zIndex: 2e9, // The z-index (defaults to 2000000000)
        top: 'auto', // Top position relative to parent in px
        left: 'auto' // Left position relative to parent in px
    };
    var target = document.getElementById('foo');
    var spinner = new Spinner(opts).spin(target);
}
//关闭加载动画
function spinClose(){
    $(".spin").remove();
}

//移除当前页面历史记录
function removeHistory (href){
    history.replaceState(null, document.title, href.split('#')[0]);
    location.replace(href);
}

var fraudTokenId = "huaxiawanjia_" +new Date().getTime() + "_"+ Math.random().toString(16).substr(2);
//同盾云
(function() {
    _fmOpt = {
        partner: 'huaxiawanjia',
        appName: 'huaxiawanjia_web',
        token: fraudTokenId
    };
    var cimg = new Image(1,1);
    cimg.onload = function() {
        _fmOpt.imgLoaded = true;
    };
    cimg.src = "https://fp.fraudmetrix.cn/fp/clear.png?partnerCode=huaxiawanjia&appName=huaxiawanjia_web&tokenId=" + _fmOpt.token;
    var fm = document.createElement('script'); fm.type = 'text/javascript'; fm.async = true;
    fm.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'static.fraudmetrix.cn/fm.js?ver=0.1&t=' + (new Date().getTime()/3600000).toFixed(0);
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(fm, s);
})();


//获取微信签名
var WXappId = "wxbe589e235ed355dc",
    WXtimestamp = "",
    WXnonceStr = "",
    WXsignature = "";
function getAutograph(url) {
    $.ajax({
        type: "post",
        url: post_uc_url,
        async: false,
        data: { //后台代码深坑，此处必须匹配参数
            "service_name": "god.wxJsApi",
            "url": curUrl,
        },
        dataType: 'json',
        success: function(json) {
            var result = json.result;
            if(result == "000000") {
                WXtimestamp = json.wxmap.timestamp;
                WXnonceStr = json.wxmap.nonceStr;
                WXsignature = json.wxmap.signature;
            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            /*layer.open({
               content: "系统错误"+errorThrown,
               btn: '确定'
            });*/
        }
    });
}

//手机号注册验证
function registValidate(s){
    if(s == "" || s == null) {
        layer.open({
            content: '请输入手机号码！',
            shadeClose: false,
            btn: '确定'
        });
        $(".getCode").removeAttr("disabled");
        return false;
    } else if(!isPhone(s)) {
        layer.open({
            content: '请输入正确的手机号码！',
            shadeClose: false,
            btn: '确定'
        });
        $(".getCode").removeAttr("disabled");
        return false;
    }else if(!isSupportPhone(s)){
        layer.open({
            content: "很抱歉，系统不支持该虚拟号段的手机号",
            skin: 'msg',
            time: 3 //3秒后自动关闭
        });
        $(".getCode").removeAttr("disabled");
        return false;
    }else{
        return true;
    }
}

//手机号登录验证
function loginValidate(s){
    if(s == "" || s == null) {
        layer.open({
            content: '请输入手机号码！',
            shadeClose: false,
            btn: '确定'
        });
        $(".getCode").removeAttr("disabled");
        return false;
    }else if(!isPhone(s)) {
        layer.open({
            content: '请输入正确的手机号码！',
            shadeClose: false,
            btn: '确定'
        });
        $(".getCode").removeAttr("disabled");
        return false;
    }else{
        return true;
    }
}

//随机13开头手机号码
function getRandomPhone() {
    var randomPhone = "13"+Math.ceil(Math.random()*1000000000);
    return (randomPhone+"000000000").substr(0,11);
}

//testbutton
var testbuttonIsInit = false;

function getTestbutton(s) {
    $.ajax({
        type: "POST",
        url: post_url,
        async: true,
        data: {
            "service_name": "mbm_geetest_start_captcha_req",
            "phone": s,
            "clientType": "web",
            "ipAddress": returnCitySN["cip"],
            "width": "100%"
        },
        dataType: 'json',
        headers:{"req_source":"web"},
        success: function(json) {
            var result = json.result;
            if(result == "000000") {
                if(json.gt_server_status == 1) {
                    initGeetest({
                        // 以下配置参数来自服务端 SDK
                        gt: json.gt,
                        challenge: json.challenge,
                        offline: !json.success,
                        new_captcha: true,
                        product: 'bind'
                    }, function(captchaObj) {
                        function fnclick() {
                            captchaObj.verify();
                        }
                        document.getElementById('testbutton').addEventListener('click', fnclick, false);
                        testbuttonIsInit = true;
                        captchaObj.onSuccess(function() {
                            // 用户验证成功后，进行实际的提交行为
                            var result = captchaObj.getValidate();
                            if($("#phone").val()){
                                againValidate($("#phone").val(),result.geetest_challenge, result.geetest_validate, result.geetest_seccode, json.gt_server_status);
                            }else{
                                againValidate(getCookie("phone"),result.geetest_challenge, result.geetest_validate, result.geetest_seccode, json.gt_server_status);
                            }
                        });
                        captchaObj.onClose(function() {
                            // 用户把验证关闭了，这时你可以提示用户需要把验证通过后才能进行后续流程
                            $(".getCode").removeAttr("disabled");
                            spinClose();
                        });
                    })
                } else {
//					$(".getCode").removeAttr("disabled");
//					if($("#phone").val()){
//						getCode($("#phone").val());
//					}else{
//						getCode(getCookie("phone"));
//					}
//					spinClose();
                }
            } else if(result == "100097") {
                layer.open({
                    shadeClose: false,
                    content: json.resultdesc,
                    btn: '确定',
                    yes: function(index) {
                        godLogout();
                        layer.close(index);
                    }
                });
            } else {
                layer.open({
                    shadeClose: false,
                    content: json.resultdesc,
                    btn: '确定'
                });
                return false;
            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            $(".getCode").removeAttr("disabled");
            spinClose();
        }
    });
}
//testbutton 二次验证
function againValidate(phone,challenge, validate, seccode, serverStatus) {
    $.ajax({
        type: "POST",
        url: post_url,
        async: true,
        data: {
            "service_name": "mbm_geetest_verify_login_req",
            "phone":phone,
            "clientType": "web",
            "ipAddress":returnCitySN["cip"],
            "geetest_challenge": challenge,
            "geetest_validate": validate,
            "geetest_seccode": seccode,
            "gtServerStatusCode": serverStatus
        },
        dataType: 'json',
        headers:{"req_source":"web"},
        success: function(json) {
            spinClose();
            var result = json.result;
            if(result == "000000") {
                getCode(phone,"web", challenge, validate, seccode, serverStatus);
                $(".getCode").attr("disabled","true");
            }else if(result == "100097") {
                layer.open({
                    title: '提示',
                    content: json.resultdesc,
                    btn: '确定',
                    yes: function(index) {
                        godLogout();
                        layer.close(index);
                    }
                });
            } else {
                layer.open({
                    title: '提示',
                    content: json.resultdesc,
                    btn: '确定'
                });
                return false;
            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            spinClose();
        }
    });
}

//判断ios,Android是否最新版本
var isNewest = 1;
var appType = "h5";
var appVersion = "";//是否在app中打开
var upgradePrompt = "当前APP版本过低，无法查看活动详情，请升级到新版APP后查看。";

$(function() {
    var u = navigator.userAgent;
    var v = u.substring(u.indexOf("#")+1,strFind(u,"#",1));
    if(v.indexOf("(") != -1){
        v= v.substring(0,v.indexOf("("));
    }
    appVersion = v;
    var isAndroid = u.indexOf('wanjiajinfu:Android') > -1; //android终端
    var isiOS = u.indexOf('wanjiajinfu:ios') > -1; //ios终端
    var _data;
    if(isiOS) {
        appType = "ios";
        if(versionCompare("2.4.5",v) == 0){
            isNewest = 0;
        }
//		alert("test"+ JSON.stringify(getAppData()));
        _data = getAppData();
        if(_data.godId){
            addCookie('godId', _data.godId); //用户ID
        }
        if(_data.token){
            addCookie('tokenId', _data.token); //用户认证令牌
        }
    }else if(isAndroid){
        appType = "android";
        if(versionCompare("1.3.0",v) == 0){
            isNewest = 0;
        }
//		alert("test"+ wjjf.getAppData());
        _data = JSON.parse(wjjf.getAppData());
        if(_data.godId){
            addCookie('godId', _data.godId); //用户ID
        }
        if(_data.token){
            addCookie('tokenId', _data.token); //用户认证令牌
        }
    }else{
        if(getUrlParam("hide")){
            isNewest = 0;
        }
    }
});

//指定字符串第n次出现的位置
function strFind(str, cha, num) {
    var x = str.indexOf(cha);
    for(var i = 0; i < num; i++) {
        x = str.indexOf(cha, x + 1);
    }
    return x;
}

//判断当前版本:2比指定版本新,1当前版本,0比指定版本旧
function versionCompare(appoint,current){
    var aa = appoint.split(".");
    var ac = current.split(".");
    if(!ac){
        return 0;
    }
    if(aa[0]<ac[0]){
        return 2;
    }else if(aa[0]>ac[0]){
        return 0;
    }else{
        if(aa[1]<ac[1]){
            return 2;
        }else if(aa[1]>ac[1]){
            return 0;
        }else{
            if(aa[2]<ac[2]){
                return 2;
            }else if(aa[2]>ac[2]){
                return 0;
            }else{
                return 1;
            }
        }
    }
}

//修改页面为升级页面
function updatePage(){
    var str_html= "";
    str_html += '<div class="updata-hints">';
    str_html += '<div class="top-u">';
    str_html += '<p class="top-text">IOS版本:2.4.8 / 安卓版本:1.3.3</p>';
    str_html += '</div>';
    str_html += '<div class="content-u">';
    str_html += '<img class="title-pic" src="../mobile/img/updateHints/title_1.png" alt="" />';
    str_html += '<div class="block-u block-u-1">';
    str_html += '<ul>';
    str_html += '<li><span>1</span>K码激活（自动扫描增加QR二维码激活）；</li>';
    str_html += '<li><span>2</span>功能优化。</li>';
    str_html += '</ul>';
    str_html += '<p class="text-u">注：如升级不成功，请检查是否为最新版本，如不是，请卸载当前版本，前往下载最新版本。</p>';
    str_html += '</div>';
    str_html += '<img class="title-pic" src="../mobile/img/updateHints/title_2.png" alt="" />';
    str_html += '<div class="block-u block-u-2">';
    str_html += '<img src="../mobile/img/updateHints/update_pic.png" alt="" />';
    str_html += '</div>';
    str_html += '<div class="bottom-text-u">';
    str_html += '<img src="../mobile/img/updateHints/update_text.png"/>';
    str_html += '</div>';
    str_html += '</div>';
    str_html += '</div>';

    $("section").html(str_html).removeClass();
}

//活动页面统计
function actStatistics(godId,actName,device,version){
    var _data = {};
    if(godId){
        _data = {
            "godId": godId,
            "actName": actName,
            "device": device,
            "version": version
        }
    }else{
        _data = {
            "actName": actName,
            "device": device,
            "version": version
        }
    }
    $.ajax({
        type: "post",
        url: "/webAPI/act/statistics.do",
        async: true,
        data: _data,
        dataType: 'json',
        success: function(json) {
            var result = json.result;
            if(result == "000000") {

            } else if(result == "100097") {
                layer.open({
                    shadeClose: false,
                    content: json.resultdesc,
                    btn: '确定',
                    yes: function(index) {
                        godLogout();
                        layer.close(index);
                    }
                });
            } else {
                layer.open({
                    shadeClose: false,
                    content: json.resultdesc,
                    btn: '确定'
                });
                return false;
            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {}
    });
}
