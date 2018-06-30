<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>订单管理|orderInfo(系统管理平台)</title>
<#include "../common/header.ftl"/>
    <script type="text/javascript" src="/js/plugins/jquery.form.js"></script>
    <script type="text/javascript" src="/js/plugins/jquery.twbsPagination.min.js"></script>
    <script type="text/javascript" src="/js/My97DatePicker/WdatePicker.js"></script>

    <script type="text/javascript">

    </script>
</head>
<body>
<div class="container">
<#include "../common/top.ftl"/>
    <div class="row">
        <div class="col-sm-3">
        <#include "../common/menu.ftl" />
        </div>
        <div class="col-sm-9">
            <div class="page-header">
                <h3>登录日志查询</h3>
            </div>
            <form id="searchForm" class="form-inline" method="post" action="/orderInfo/list">
                <input type="hidden" id="currentPage" name="currentPage" value="${(qo.currentPage)!"1"}"/>

                <div class="form-group">
                    <input class="form-control" type="text" placeholder="订单编号" name="orderSn" value='${qo.orderSn!""}'
                </div>

                <div class="form-group">
                    <input class="form-control" type="text" placeholder="收件人" name="consignee"
                           value='${qo.consignee!""}'/>
                </div>


                <div class="form-group">
                    <label></label>
                    <select class="form-control" name="orderStatus" id="orderStatus">
                        <option value="-1">所有状态</option>
                        <option value="0">未确认</option>
                        <option value="1">已确认</option>
                        <option value="2">已完成</option>
                    </select>
                    <script type="text/javascript">
                        $("#orderStatus option[value=${qo.orderStatus}]").prop("selected", true);
                    </script>
                </div>

                <div class="form-group">
                    <input class="form-control beginDate" type="text" placeholder="订单开始时间" name="beginDate"
                           value='${(qo.beginDate?string("yyyy-MM-dd"))!""}'/>到
                    <input class="form-control endDate" type="text" placeholder="订单结束时间" name="endDate"
                           value='${(qo.endDate?string("yyyy-MM-dd"))!""}'/>
                </div>


                <div class="form-group">
                <#--<label>用户名</label>-->
                <#--<input class="form-control" type="text" name="username" value='${(qo.username)!""}'/>-->
                <#--</div>-->
                    <div class="form-group">
                        <button id="query" type="button" class="btn btn-success"><i class="icon-search"></i> 查询</button>
                    </div>


            </form>
        <#--查询的表格-->
            <div class="panel panel-default">
                <table class="table">
                    <thead>
                    <tr>
                        <th>订购编号</th>
                        <th>订购人id</th>

                        <th>订单状态</th>
                        <th>支付状态</th>
                        <th>物流状态</th>

                        <th>订单总价</th>
                        <th>订单创建时间</th>
                        <th>发货地区</th>

                        <th>收货人</th>
                        <th>收货人地址</th>
                        <th>支付方式--不知那张表</th>

                    </tr>
                    </thead>
                    <tbody id="tbody">
                    <#list pageResult.list as item>
                    <tr class="icon-flag" data-json="${item.jsonString}">
                        <td class="icon">${item.orderSn}</td>
                        <script type="text/javascript">
                            $(function () {
                            })
                        </script>
                        <td>${item.userId}</td>

                        <td>${item.orderStatusDisplay}</td>
                        <td>${item.payStatusDisplay}</td>
                        <td>${item.shippingStatusDisplay}</td>

                        <td>${item.orderAmount}</td>
                        <td>${item.createTime?string("yyyy-MM-dd HH:mm:ss")}</td>
                        <td>${item.district}</td>

                        <td>${item.consignee}</td>
                        <td>${item.address}</td>
                        <td>在线支付</td>

                    </tr>
                    </#list>
                    </tbody>
                </table>
                <div style="text-align: center;">

                </div>
            </div>
            <div style="text-align: center;">
                <ul id="pagination" class="pagination"></ul>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function () {
        //td的绑定事件
        $(".icon").click(function () {
            var _this = $(this);
            var sn = _this.text();
//            alert(sn);
            var url = 'http://localhost:8080/orderInfo/OrderDetails';
            window.location.href = url + '?orderSn=' + sn;
        });


        //
        $("#query").click(function () {
            $("#currentPage").val(1);
            $("#searchForm").submit()
        });
        //日期 点击事件
        $(".beginDate,.endDate").click(function () {
            WdatePicker();
        });


        //页码汉化
        $('#pagination').twbsPagination({
            totalPages: ${pageResult.totalPage} || 1,
                startPage
    : ${pageResult.currentPage},
        visiblePages : 7,
                first
    :
        "首页",
                prev
    :
        "上一页",
                next
    :
        "下一页",
                last
    :
        "最后一页",
                onPageClick
    :

        function (event, page) {
            $("#currentPage").val(page);
            $("#searchForm").submit();
        }
    })
        ;
    });
</script>
</body>
</html>