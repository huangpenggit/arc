<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>小码商城管理平台</title>
<#include "../common/header.ftl"/>
    <!--FancyBox核心js和css文件：-->
    <script type="text/javascript" src="/js/plugins/fancybox/jquery.fancybox.pack.js"></script>
    <link rel="stylesheet" type="text/css" href="/js/plugins/fancybox/jquery.fancybox.css" media="screen"/>

    <script type="text/javascript" src="/js/plugins/jquery.form.js"></script>
    <script type="text/javascript" src="/js/plugins/bootbox.min.js"></script>
    <script type="text/javascript" src="/js/plugins/jquery.twbsPagination.min.js"></script>
    <script type="text/javascript" src="/js/plugins/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript">
        //console.error("Hello World")
        $(function () {
            $("#btn_save_skuGen").hide();

            $("table > tbody > tr").click(function () {
                $("table > tbody > tr").removeClass("active");

                $(this).addClass("active");

                $("#productIdHidden").val($(this).data("id"));
            });

            $(".proSkuPs").click(function () {
                var spIds = $.map($("#sp_div span"), function (ele, index) {
                    return $(ele).html();
                });
                var spId = $(this).data("id");
                if ($.inArray(spId + "", spIds) < 0) {
                    $.ajax({
                        url: "/products/skuValue/" + spId,
                        type: "GET",
                        dataType: "html",
                        success: function (result) {
                            $("#sp_div").append(result);
                        }
                    });
                }
            });

            $("#btn_skuGen").click(function () {
                var spIds = $.map($("#sp_div span"), function (ele, index) {
                    var val = $(ele).html();
                    if (val != 1) {
                        return val;
                    }
                });
                console.log(spIds);

                var svIds = $.map($("#svTable tbody tr"), function (ele, index) {
                    var svId = $(($(ele).find("td"))[1]).text();
                    return svId;
                });


                console.log(svIds);

                var spIdsStr = JSON.stringify({spIds: spIds, svIds: svIds});

                console.log(spIdsStr);
                $.ajax({
                    url: "/products/skuGen",
                    data: {
                        spIds: JSON.stringify(spIds),
                        svIds: JSON.stringify(svIds)
                    },
                    type: "POST",
                    success: function (result) {
                        $("#sp_div").append(result);
                        $("#btn_save_skuGen").show();
                    }
                })
            });

        })
    </script>
</head>
<body>
<#--<input type="hidden" id="productIdHidden"/>-->
<div class="container">
<#include "../common/top.ftl"/>
    <div class="row">
        <div class="col-sm-3">
        <#assign currentMenu="product_list" />
				<#include "../common/menu.ftl" />
        </div>
        <div class="col-sm-9">
            <div class="page-header">
                <h3>生成sku</h3>
                <span id="pid" class="hide">${product.id}</span>
            </div>
            <div class="row">

                <div id="sp_div">
                    <h1>${product.name}</h1>
                <#if skuPs??>
                    <#list skuPs as item>
                        <a href="#" class="hide" id="spId">${item.id}</a>
                        <button type="button" class="btn btn-primary btn-lg btn-warning proSkuPs"
                                data-id="${item.id}">${item.name}</button>
                    </#list>
                </#if>
                </div>
                <div align="left" id="div_skuGen">
                    <button type="button" class="btn btn-primary btn-lg  btn-danger" id="btn_skuGen">生成Sku</button>
                </div>


            </div>
            <div class="panel panel-default">
                <div align="right" id="div_save_skuGen">
                    <button type="button" class="btn btn-primary btn-lg btn-danger" id="btn_save_skuGen">保存Sku</button>
                </div>
            </div>
        </div>
    </div>
    <!-- 模态框（Modal） -->
    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">

    </div>

</div>
</body>
</html>