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
                <h3>用户详情</h3>
            </div>
            <div class="panel panel-default">
                <table class="table">
                    <thead>
                    <tr>
                        <th>用户ID</th>
                        <th>邮箱</th>
                        <th>昵称</th>

                        <th>用户余额</th>
                        <th>注册时间</th>
                        <th>最后登陆时间</th>
                    </tr>
                    </thead>
                    <tbody id="tbody">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.email}</td>
                        <td>${user.nickName}</td>

                        <td>${user.userMoney}</td>
                        <td>2017-01-01</td>
                        <td>2017-12-12</td>
                    <#--<td>${item.createTime?string("yyyy-MM-dd HH:mm:ss")}</td>-->
                    </tr>
                    </tbody>
                </table>
                <div style="text-align: center;">

                </div>
            </div>
            <div style="text-align: center;">
                <ul id="pagination" class="pagination"></ul>
            </div>
        </div>

        <div class="col-sm-9">
            <div class="page-header">
                <h4>2)用户历史交易信息</h4>
            </div>
            <div class="panel panel-default">
                <table class="table">
                    <thead>
                    <tr>
                        <th>有效订单</th>
                        <th>交易金额</th>

                        <th>退货次数</th>
                        <th>退货金额</th>
                        <th>发货后退货率</th>
                    </tr>
                    </thead>
                    <tbody id="tbody">
                    <tr>

                    <#if (orderInfo.orderStatus==2)>
                        <td>${orderInfo.orderSn}</td>
                        <td>${orderInfo.orderAmount}</td>

                        <td>退货次数-写死--99</td>
                        <td>-退货金额-写死--100</td>
                        <td>-发货后退货率-写死--100%</td>
                    <#else >
                        <td>没有记录</td>
                        <td>没有记录</td>
                        <td>没有记录</td>

                        <td>没有记录</td>
                        <td>没有记录</td>

                    </#if>
                    <#--<td>${item.createTime?string("yyyy-MM-dd HH:mm:ss")}</td>-->
                    </tr>
                    </tbody>
                </table>
                <div style="text-align: center;">

                </div>
            </div>
            <div style="text-align: center;">
                <ul id="pagination" class="pagination"></ul>
            </div>
        </div>
        <div class="col-sm-9">
            <div class="page-header">
                <h4>3)订单备注</h4>
            </div>
            <div class="panel panel-default">
                <table class="table">
                    <thead>
                    <tr>
                        <th>该订单商品所属的订单UID</th>
                        <th>添加人</th>
                        <th>内容</th>
                        <th>时间</th>
                    </tr>
                    </thead>

                    <tbody id="gridBody">
                    <tr>
                        <td>${orderAction.id}</td>
                        <td>${orderAction.actionUser}</td>
                        <td id="${orderAction.id}">${orderAction.actionNote}<h5 style="background-color: aqua">修改内容</h5></td>
                        <td>${orderAction.actionTime?string("yyyy-MM-dd HH:mm:ss")}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>


                        <script type="text/javascript">
                            $(function () {
                                $("#${orderAction.id}").click(function () {
                                    //$("#myModalLabel").text("新增");
                                    $('#myModal').modal();
                                });
                                //保存信息

                                $("#noteBtnubmit").click(function () {
                                    var url = '/orderInfo/saveOrUpdateOrderAction';
                                    var orderActionId= ${orderAction.id};
                                    var orderActionNote= $("#txt_actionNote").val();
                                    var orderActionNote1= $("#txt_actionNote").value;
                                    alert(orderActionNote1);
                                    var gridBody = $("#gridBody");
                                    console.log(orderActionId);
                                    console.log(orderActionNote);
                                    alert(orderActionNote);
                                    $.ajax({
                                        type: 'post',   //可选get
                                        url: url,           //这里是接收数据的PHP程序
                                        data: {'id':orderActionId, 'actionNote':orderActionNote},//传给PHP的数据，多个参数用&连接
                                        dataType: "text",//服务器返回的数据类型 可选XML ,Json jsonp script html text等
                                        success:function (data) {
                                            //这里是ajax提交成功后，PHP程序返回的数据处理函数。msg是返回的数据，数据类型在dataType参数里定义

                                                    gridBody.hide();
                                                    gridBody.html(data);
                                                    gridBody.show(50);

                                        }
                                    });
                                });

                                //
                            });
                        </script>




                <#--模态框-->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                <h4 class="modal-title" id="myModalLabel">记录新的注释</h4>
                            </div>
                            <div class="modal-body">

                                <div class="form-group">
                                    <label for="txt_departmentname">内容</label>
                                    <input type="text" name="actionNote" class="form-control" id="txt_actionNote" placeholder="内容">
                                </div>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
                                <button type="button" id="noteBtnubmit" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存</button>
                            </div>
                        </div>
                    </div>
                </div>

            <#---->

                <div style="text-align: center;">

                </div>
            </div>
            <div style="text-align: center;">
                <ul id="pagination" class="pagination"></ul>
            </div>
        </div>

        <h4> 4)订单相关信息</h4>

        <table>
            <tr></tr>
            <tr></tr>
            <tr></tr>

            <td>
                <div class="col-sm-9">
                    <div class="page-header">
                        <h3>订单详情</h3>
                    </div>
                    <div class="panel panel-default">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>订单状态</th>
                                <th>付款状态</th>
                                <th>要求发票</th>
                            </tr>
                            </thead>
                            <tbody id="tbody">
                            <tr>

                                <td>${orderInfo.orderStatus}</td>
                                <td>${orderInfo.shippingStatus}</td>
                                <td>要求发票-写死--没有发票</td>
                            </tr>
                            </tbody>
                        </table>
                        <div style="text-align: center;">
                        </div>
                    </div>
                    <div style="text-align: center;">
                        <ul id="pagination" class="pagination"></ul>
                    </div>
                </div>
            </td>
            <td>
                <div class="col-sm-9">
                    <div class="page-header">
                        <h3>订单详情</h3>
                    </div>
                    <div class="panel panel-default">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>订单状态</th>
                                <th>物流状态</th>
                                <th>要求发票</th>
                            </tr>
                            </thead>
                            <tbody id="tbody">
                            <tr>

                                <td>${orderInfo.orderStatusDisplay}</td>
                                <td>${orderInfo.shippingStatusDisplay}</td>
                                <td>要求发票-写死--没有发票</td>
                            </tr>
                            </tbody>
                        </table>
                        <div style="text-align: center;">
                        </div>
                    </div>
                    <div style="text-align: center;">
                        <ul id="pagination" class="pagination"></ul>
                    </div>
                </div>
            </td>
            <td>
                <div class="col-sm-9">
                    <div class="page-header">
                        <h3>付款详情</h3>
                    </div>
                    <div class="panel panel-default">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>付款状态</th>
                                <th>订单价格</th>
                                <th>减免金额</th>
                                <th>付款IP</th>
                            </tr>
                            </thead>
                            <tbody id="tbody">
                            <tr>

                                <td>${orderInfo.payStatusDisplay}</td>
                                <td>${orderInfo.orderAmount}</td>

                                <td>(没有设计)</td>
                                <td>不知道IP</td>
                            </tr>
                            </tbody>
                        </table>
                        <div style="text-align: center;">
                        </div>
                    </div>
                    <div style="text-align: center;">
                        <ul id="pagination" class="pagination"></ul>
                    </div>
                </div>
            </td>



        <div class="col-sm-9">
            <div class="page-header">
                <h3> 5)订单商品详情</h3>
            </div>
            <div class="panel panel-default">
                <table class="table">
                    <thead>
                    <tr>
                        <th>商品名称</th>
                        <th>SKU</th>
                        <th>单价</th>

                        <th>数量</th>
                        <th>总价</th>
                        <th>商品类型</th>
                        <th>组套信息</th>
                    </tr>
                    </thead>
                    <tbody id="tbody">
                    <tr>

                        <td>${orderProduct.productName}</td>
                        <td>${orderProduct.skuId}</td>
                        <td>${orderProduct.productPrice}</td>

                        <td>${orderProduct.productNumber}</td>
                        <td>${orderProduct.totalPrice}</td>
                        <td>商品类型</td>

                        <td>组套信息</td>
                    </tr>
                    </tbody>
                </table>
                <div style="text-align: center;">
                </div>
            </div>
            <div style="text-align: center;">
                <ul id="pagination" class="pagination"></ul>
            </div>
        </div>

    <#--地址信息-->
        <div class="col-sm-9">
            <div class="page-header">
                <h3> 6)收货地址</h3>
            </div>
            <div class="panel panel-default">
                <table class="table">
                    <thead>
                    <tr>
                        <th>收获地址</th>
                        <th>邮编</th>
                        <th>收货人</th>

                        <th>手机</th>
                        <th>用户邮箱</th>
                    </tr>
                    </thead>
                    <tbody id="tbody">
                    <tr>

                        <td>${orderInfo.address}</td>
                        <td>${orderInfo.zipcode}</td>
                        <td>${orderInfo.consignee}</td>

                        <td>${user.phone}</td>
                        <td>${user.email}</td>

                    </tr>
                    </tbody>
                </table>
                <div style="text-align: center;">
                </div>
            </div>
            <div style="text-align: center;">
                <ul id="pagination" class="pagination"></ul>
            </div>
        </div>


    <#--7)操作记录-->
        <div class="col-sm-9">
            <div class="page-header">
                <h3>7)操作记录</h3>
            </div>
            <div class="panel panel-default">
                <table class="table">
                    <thead>
                    <tr>
                        <th>操作记录</th>
                        <th>操作时间</th>
                    <#--<th>动作</th>-->

                        <th>操作前订单状态</th>
                        <th>操作后订单状态</th>
                        <th>操作人</th>
                    </tr>
                    </thead>
                    <tbody id="tbody">
                    <tr>

                        <td>${orderAction.actionNote}</td>
                        <td>${orderAction.actionTime?string("yyyy-MM-dd HH:mm:ss")}</td>
                        <td>${orderAction.orderStatusDisplay}</td>
                        <td>${orderAction.shippingStatusDisplay}</td>
                        <td>${orderAction.actionUser}</td>


                    </tr>
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
<div><a href="http://localhost:8080/orderInfo/list">返回订单列表</a></div>

<script type="text/javascript">
    $(function () {

        $(".icon").click(function () {
            var _this = $(this);
            var data = _this.val();
            console.log(data);
            console.log(_this);
        });


        ///分页

        $("#query").click(function () {
            $("#currentPage").val(1);
            $("#searchForm").submit()
        });
        //日期 点击事件
        $(".beginDate,.endDate").click(function () {
            WdatePicker();
        });
        //枫叶


        //页码汉化
        $('#pagination').twbsPagination({
            totalPages: (${pageResult.totalPage} ) || 1,
            startPage: ${pageResult.currentPage},
            visiblePages: 7,
            first:
                    "首页",
            prev:
                    "上一页",
            next:
                    "下一页",
            last:
                    "最后一页",
            onPageClick:

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