<#if genedSkus??>
<div id="skusGened_div">
    <h1>生成Sku列表</h1>
    <table class="table table-bordered">
        <thead>
        <tr>
            <td></td>
            <td>code</td>
            <#list spList as sp>
                <td>${sp.name}<span class="hide">${sp.id}</span></td>
            </#list>
            <td>价格</td>
        </tr>
        </thead>
        <tbody>
            <#list genedSkus as item>
            <tr>
                <td><a href="javascript:" class="text text-danger">移除</a></td>
                <td>${codeList[item_index]}</td>
                <#list 0..spIds as t>
                    <td>${item["v"+t]}</td>
                </#list>
                <td><input type="text" name="price"></td>
            </tr>
            </#list>
        </tbody>
    </table>
</div>

</#if>

<script type="text/javascript">
    $("#btn_save_skuGen").click(function () {
        var trs = $("#skusGened_div tbody tr");
        var tds1 = $("#skusGened_div thead tr td");
        bootbox.confirm({
            message: "确定生成到ProductSku?",
            callback: function (result) {
                if (result) {
                    if (trs.length <1) {
                        bootbox.alert({title:"温馨提示",message:"当前无选择"});
                    } else {
                        var arrs = "[";
                        $(trs).each(function (index, ele) {
                            var tds = $(ele).find("td");
                            var arr = "{";
                            $(tds).each(function (index, ele) {
                                if (index == 0) {
                                    arr += "productId:" + $("#pid").text() + ",";
                                }else if (index == 1) {
                                    arr += "code:'" + $(ele).text() + "',";
                                }else if (index == tds.length - 1) {
                                    var num = $(ele).find(":input").val();
                                    arr += "price:" + (num ? num : 0.0) + "}";
                                }else{
                                    td = $("#skusGened_div thead td")[index];
                                    arr+= "'sp"+$(td).find("span").text()+"':'"+$(ele).text()+"',";
                                }
                            });
                            if (index == trs.length - 1) {
                                arrs += arr + "]";
                            } else {
                                arrs += arr + ",";
                            }
                        });
                        var tds = $("#skusGened_div thead td");
                        var spIds = $.map(tds, function (ele,index) {
                            if (index!=0&&index!=1&&index!=(tds.length-1)) {
                                return $(ele).find("span").text();
                            }
                        });
                        $.post("/saveSkuGen", {arrs: arrs,spIds:JSON.stringify(spIds)}, function (data) {
                            if (!data.success) {
                                $.popover("温馨提示", data.msg);
                            }
                        });
                    }
                }
            }
        });

    });
    $(function () {
        $("#skusGened_div a").click(function () {
            console.log($(this).html());
            $(this).closest("tr").remove();
        });
    })
</script>