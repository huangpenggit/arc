<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>小码商城管理平台</title>
<#include "../common/header.ftl"/>
    <link type="text/css" rel="stylesheet" href="/js/plugins/uploadifive/uploadifive.css"/>
<#--bootstrap下拉框多选插件-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
<#--bootstrap下拉框多选-->

    <script type="text/javascript" src="/js/plugins/jquery.form.js"></script>
    <script type="text/javascript" src="/js/plugins/jquery.twbsPagination.min.js"></script>
    <script type="text/javascript" src="/js/plugins/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" src="/js/plugins/uploadifive/jquery.uploadifive.min.js"></script>
    <script type="text/css">
        .logoImg {
            width: 20px;
            height: 20px;
        }

        .modal-body {
            overflow-y: scroll;
            position: absolute;
            top: 305px;
            bottom: 65px;
            width: 100%;
        }
    </script>

    <script type="text/javascript">
        //console.error("Hello World")
        $(function () {
            $("#query").click(function () {
                $("#currentPage").val(1);
                $("#searchForm").submit();
            });

            $("#pagination_container").twbsPagination({
                totalPages:${pageResult.totalPage},
                visiblePages: 5,
                startPage:${pageResult.currentPage},
                first: "首页",
                prev: "上一页",
                next: "下一页",
                last: "末页",
                onPageClick: function (event, page) {
                    $("#currentPage").val(page);
                    $("#searchForm").submit();
                }
            });
            //删除按钮
            $(".btn_delete").click(function () {
                var rowId = $(this).closest("tr").data("id");
                $.messager.confirm("温馨提示", "你确定要删除吗", function (r) {
                    $.get("/brand/delete", {id: rowId}, function (data) {
                        if (data.success) {
                            $.messager.popup("删除成功");
                            window.location.href = "/brand/get";
                        } else {
                            $.messager.popup(data.errorMsg);
                            window.location.href = "/brand/get";
                        }
                    }, "json");
                })

            })
            //编辑按钮
            $(".btn_edit").click(function () {
                var jsonString = $(this).data("jsonstring");
                //打开编辑框
                $("#editModal").modal("show");
                $("#editform").clearForm(true);
                $("#catalogIds").selectpicker('val', '');
                $("#logoImg").prop("src", "");//清空logo图片
                //id
                $("#id").val(jsonString.id);
                $("#chineseName").val(jsonString.chineseName);
                $("#englishName").val(jsonString.englishName);
                $("#url").val(jsonString.url);
                $("#logoImgPath").val(jsonString.logo)
                $("#logoImg").prop("src", jsonString.logo);
                $("#sequence").val(jsonString.sequence);
                $("#description").val(jsonString.description);
                //商品分类回显
                $("#catalogIds").selectpicker('val', jsonString.catalogs);
            })
            //添加按钮
            $("#save").click(function () {
                $("#editform").clearForm(true);
                $("#catalogIds").selectpicker('val', '');
                $("#logoImg").prop("src", "");//清空logo图片

                $("#editModal").modal("show");

            })
            //保存按钮
            $("#submitForm").click(function () {
                $("#editform").ajaxSubmit(function (data) {
                    if (data.success) {
                        $.messager.popup("操作成功");
                        window.location.href = "/brand/get";
                    } else {
                        $.messager.popup("操作失败");
                        window.location.href = "/brand/get";
                    }
                });
            })

            //上传logo
            $("#uploadLogo").uploadifive({
                buttonText: "上传logo",
                uploadScript: "/brand/uploadLogo",
                fileType: "image",
                fileObjName: "image",
                multi: false,
                onInit: function () {
                    $(".uploadifive-queue").hide();
                },
                onUploadComplete: function (file, data) {
                    //设置图片上传后的回显
                    $("#logoImg").prop("src", "/" + data);
                    //设置提交资料时的图片路径
                    $("#logoImgPath").val("/" + data);
                }
            })
            //
        });
    </script>

</head>
<body>
<input type="hidden" id="productIdHidden"/>
<div class="container">
<#include "../common/top.ftl"/>
    <div class="row">
        <div class="col-sm-3">
        <#assign currentMenu="brand_list" />
				<#include "../common/menu.ftl" />
        </div>
        <div class="col-sm-9">
            <div class="page-header">
                <h3>品牌管理</h3>
            </div>
            <div class="row">
                <!-- 提交分页的表单 -->
                <form id="searchForm" class="form-inline" method="post" action="/brand/get">
                    <input type="hidden" name="currentPage" id="currentPage" value=""/>
                <#-- <div class="form-group">
                 </div>-->
                    <div class="form-group">
                        <label>关键字</label>
                        <input class="form-control" type="text" name="keyword" value="${(qo.keyword)!''}">
                    </div>
                    <div class="form-group">
                        <button id="query" type="button" class="btn btn-success"><i class="icon-search"></i> 查询</button>
                    </div>
                    <div class="form-group">
                        <button id="save" type="button" class="btn btn-success">
                            <span class="glyphicon glyphicon-plus"></span>添加
                        </button>
                    </div>
                </form>
            </div>
            <div class="panel panel-default">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>品牌中文名称</th>
                        <th>品牌英文名称</th>
                        <th>品牌网址</th>
                        <th>品牌简述</th>
                        <th>排序</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody id="tbody">
                    <#list pageResult.listData as data>
                    <tr data-id="${data.id}">
                        <td>${(data.chineseName)!""}</td>
                        <td>${(data.englishName)!""}</td>
                        <td><a href="${(data.url)!'javascript;'}" target="_Blank">${(data.url)!""}</a></td>
                        <td>${(data.description)!""}</td>
                        <td>${(data.sequence)!""}</td>
                        <td>
                            <button class="btn btn-primary btn_edit" data-jsonString='${data.jsonString}'>编辑</button>
                            <button class="btn btn-primary btn_delete">删除</button>
                        </td>
                    </tr>
                    </#list>
                    </tbody>
                </table>
                <div style="text-align: center;" id="pagination_container">
                </div>
            </div>
        </div>
    </div>
    <!-- 模态框（Modal） -->
    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">品牌编辑</h4>
                </div>
                <div class="modal-body">
                <#--品牌编辑表单-->
                    <form class="form-horizontal" id="editform" method="post" action="/brand/post">
                        <fieldset>
                            <input type="hidden" name="id" id="id" value=""/>
                            <div class="form-group">
                                <label class="col-sm-4 control-label" for="chineseName">品牌中文名称</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" name="chineseName" id="chineseName">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label" for="englishName">品牌英文名称</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" name="englishName" id="englishName">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-4 control-label" for="catalogIds">商品分类</label>
                                <div class="col-sm-6">
                                    <select class="selectpicker form-control" multiple title="选择商品分类" name="catalogIds" id="catalogIds">
                                    <#list catalogs as data>
                                        <option value="${data.id}">${data.name}</option>
                                    </#list>
                                    </select>

                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-4 control-label" for="url">品牌网址</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" name="url" id="url">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label" for="url">品牌Logo</label>
                                <div class="col-sm-2">
                                    <a href="javascript:;" id="uploadLogo">上传logo</a>
                                </div>
                                <div class="col-sm-4">
                                    <img alt="" src="" id="logoImg" style="height: 60px;width: 60px"/>
                                    <input type="hidden" name="logo" id="logoImgPath"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label" for="sequence">排序</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" name="sequence" id="sequence">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label" for="description">品牌简述</label>
                                <div class="col-sm-6">
                                    <textarea class="form-control" name="description" id="description" rows="4" cols="34"></textarea>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            <#--品牌表单-->
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary" id="submitForm">提交更改</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>
</div>
</body>
</html>