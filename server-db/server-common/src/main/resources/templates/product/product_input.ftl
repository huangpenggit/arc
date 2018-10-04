<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>小码商城管理平台</title> <#include "../common/header.ftl"/>
    <link type="text/css" rel="stylesheet" href="/js/plugins/uploadifive/uploadifive.css"/>
    <script type="text/javascript" src="/js/plugins/jquery.form.js"></script>
    <script type="text/javascript" src="/js/plugins/jquery.twbsPagination.min.js"></script>
    <script type="text/javascript" src="/js/plugins/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" src="/js/plugins/ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="/js/plugins/uploadifive/jquery.uploadifive.min.js"></script>
    <script type="text/javascript">
        $(function () {
            var num;
            $("button").click(function () {
                var num = $(this).data("id");
            });
            $(".js-upload").each(function () {
                var $this = $(this);

                $this.uploadifive({
                    buttonText: "选择图片",
                    fileObjName: "systemFile",
                    fileType: "image",
                    uploadScript: "/productUpload",
                    overrideEvents: ["onUploadSuccess", "onUploadProgress",
                        "onSelect"],
                    onInit: function () {
                        $(".uploadifive-queue").hide();
                        num = $(this).val();
                    },
                    onUploadComplete: function (systemFile, data) {
                        var parent = $this.parent('div').parent('div');
                        var num = $this.data("id");
                        var inputNum = $this.data("input");
                        console.log(num);
                        console.log(inputNum);
                        $("#" + num).prop("src", data);
                        $("#" + inputNum).val(data);
                    }
                });
            });
        });
        $(function () {

            var editor = CKEDITOR.replace('desc');

            $('#myTabs a').click(function (e) {
                e.preventDefault();
                $(this).tab('show')
            });

            $("#saveButton").click(function () {
                $("#desc").html(editor.getData());
                $("#productSaveForm").ajaxSubmit(function (data) {
                    if (data.success) {
                        $.messager.confirm("提示", "保存成功", function () {
                            window.location.href = "/product/get";
                        })
                    } else {
                        $messager.alert("提示", data.msg);
                    }
                })
            });

        });

        function changeCatalog(obj) {
            var catalogId = $(obj).val();
            if (catalogId) {
                $.post("/catalogPropertyByCatalogId", {catalogId: catalogId}, function (data) {
                    $('#productPropertyPanel').html(data);
                }, "html");
                //重新加载商品的属性面板
//                $('#productPropertyPanel').load(
//                        '/catalogPropertyByCatalogId'
//                        + catalogId);
                //重新加载商品sku
                /* $('#productSkuPanel').load(
                    '/getSkuPropertyPanel.do?catalogId='
                            + catalogId); */
            }
            else {
                //商品属性面板
                $('#productPropertyPanel').empty();
                //sku面板
                $('#productSkuPanel').empty();
            }
        }
    </script>
</head>
<body>
<div class="container">
<#include "../common/top.ftl"/>
    <div class="row">
        <div class="col-sm-3">
        <#assign currentMenu="add_product" />
			<#include "../common/menu.ftl" /></div>
        <div class="col-sm-9">
            <div class="page-header">
                <h3>商品录入</h3>
            </div>
            <div class="panel panel-default">
                <div id="myTabs">
                    <!-- 提交商品保存表单 -->
                    <form action="/productSave" method="post" id="productSaveForm">
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="base">

                                <!-- 基本信息的页面 -->
                                <div style="padding-bottom: 10px;padding-left: 10px;padding-right: 10px;padding-top: 10px;">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>商品名称</label> <input class="form-control" name="name">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>商品编号</label> <input class="form-control" name="code">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>所属品牌</label> <select class="form-control" name="brand.id">
                                                <option>请选择</option>
                                            <#list brands as brand>
                                                <option value="${brand.id}">${brand.chineseName}</option>
                                            </#list>
                                            </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>所属分类</label> <select class="form-control" id="catalogId" name="catalog.id"
                                                                            onchange="changeCatalog(this)">
                                                <option value="">请选择</option>
                                            <#list catalogs as catalog>
                                                <option value="${catalog.id}">${catalog.name}</option>
                                            </#list>
                                            </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>市场售价</label> <input class="form-control" name="marketPrice">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>基础售价</label> <input class="form-control" name="basePrice">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>是否上架</label>
                                                <div>
                                                    <label class="radio-inline"> <input type="radio" name="shelves" value="true" checked>是
                                                    </label> <label class="radio-inline"> <input type="radio" name="shelves" value="false">否
                                                </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>是否推荐</label>
                                                <div>
                                                    <label class="radio-inline"> <input type="radio" name="recommended" value="true" checked>是
                                                    </label> <label class="radio-inline"> <input type="radio" name="recommended" value="false">否
                                                </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label>商品关键字</label> <input class="form-control" placeholder="以逗号分隔" name="keyword">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label>商品标签</label>
                                                <textarea class="form-control" rows="3" placeholder="以逗号分隔" name="impressions"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div style="padding-bottom: 10px; padding-left: 10px; padding-right: 10px; padding-top: 10px;">
                                <table class="table table-bordered catalog-property-table">
                                    <thead>
                                    <tr>
                                        <th>名称</th>
                                        <th>值</th>
                                    </tr>
                                    </thead>
                                    <tbody id="productPropertyPanel">

                                    </tbody>
                                </table>
                            </div>

                            <!-- 商品Description -->
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <textarea id="desc" name="productDesc.details" class="ckeditor" rows="10"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div style="padding-bottom: 10px; padding-left: 10px; padding-right: 10px; padding-top: 10px;">
                            <#macro productImage number>
                                <div class="col-lg-3 col-md-6">
                                    <div class="image-div">
                                        <div>
                                            <a href="javascript:;" value="${number}" data-id='uploadImg${number}' data-input="uploadImage${number}"
                                               id="uploadImage-btn${number}"
                                               class="js-upload">上传</a>
                                        </div>
                                        <img id="uploadImg${number}" class="uploadImg">
                                        <input id="uploadImage${number}" type="hidden" name="productImages[${number}].imagePath">
                                    <#-- <input type="hidden" name="productImages[${number}].id"> -->
                                    </div>
                                    <div class="input-group">
                                        <select class="form-control" name="productImages[${number}].sequence">
                                            <#list 1..8 as index>
                                                <option value="${index}">${index}</option>
                                            </#list>
                                        </select>
                                        <span class="input-group-addon">
												<label> 
													<input type="radio" class="productImageCover" name="productImages[${number}].cover" value="0"> 
													<span>封面</span>
												</label>
												</span>
                                    </div>
                                </div>
                            </#macro>
                                <div class="row"><#list 0..7 as number> <@productImage number/> </#list></div>
                            </div>

                            <!-- <div role="tabpanel" class="tab-pane" id="sku">
                                <div id="productSkuPanel" style="padding-bottom: 10px; padding-left: 10px; padding-right: 10px; padding-top: 10px;">

                                </div>
                            </div> -->
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" id="saveButton">保存</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>