/**
 * 模板适配器管理
 */
$(function () {
    $("#tempIndiAdapList").datagrid({
        idField: "id",
        rownumbers: true,
        pagination: true,
        method: "POST",
        checkOnSelect: true,
        singleSelect: true,
        pageSize: 30,
        fit: true,   //自适应大小
        border: false,
        url: "../../tempIndiAdaps/listByName",
        title: "适配器列表",
        nowrap: false,
        columns: [[
            {
                field: 'ids',
                title: '复选框',
                checkbox: true,
                //hidden: true,
                width: 10
            },
            /*{            
                field : 'id',
                title : '适配器编号',
                halign : 'center',
                align : 'center',
                width : 300 ,
                formatter : function(value, rows, index) {
                    return "<a href='javascript:;' style=\"text-decoration:none;color:blue;\" onclick=\"OpenFrame('"+rows.id+"')\">"+rows.id+"</a>";
                }
            },  */
            {
                field: 'name',
                title: '适配器名称',
                halign: 'center',
                align: 'center',
                width: 300,
                formatter: function (value, rows, index) {
                    if (!rows.name) {
                        return "无";
                    } else {
                        return "<a href='javascript:;' style=\"text-decoration:none;color:blue;\" onclick=\"OpenFrame('" + rows.id + "')\">" + rows.name + "</a>";
                    }

                }
            },
            {
                field: 'templateName',
                title: '模板名称',
                halign: 'center',
                align: 'center',
                width: 300,
                formatter: function (value, rows, index) {
                    if (!rows.templateName) {
                        return "无";
                    } else {
                        return "<a href='javascript:;' style=\"text-decoration:none;color:blue;\" onclick=\"OpenTemplateFrame('" + rows.templateId + "')\">" + rows.templateName + "</a>";
                    }

                }
            },
            {
                field: 'indicatorName',
                title: '指标接口名称',
                halign: 'center',
                align: 'center',
                width: 300,
                formatter: function (value, rows, index) {
                    if (!rows.indicatorName) {
                        return "无";
                    } else {
                        return "<a href='javascript:;' style=\"text-decoration:none;color:blue;\" onclick=\"OpenIndiFrame('" + rows.indicatorId + "')\">" + rows.indicatorName + "</a>";
                    }

                }
            }

        ]]
    });

});

//执行搜索
function searchData() {
    var name = $("#name").val();
    $('#tempIndiAdapList').datagrid('load', {
        name: name
    });
}

//新增窗口的弹出层
function openInputWin() {
    var data = '';
    //1.点击新增的时候弹出编辑框
    $("#inputDiv").dialog("open", true);
    //2.设置标题
    $("#inputDiv").dialog("setTitle", "适配器信息新增");
    //3.清空弹框的数据
    $("#inputForm").form("clear");
    //加载模板信息
    $("#templateId").combobox({
        url: '../../templates/listAllTemplates',
        valueField: 'id',
        textField: 'title',
        onSelect: function (current) {
            $("#indicatorId").combobox('clear');
            var templateId = current.id;
            var url = '../../indicators/listIndByTemPlateId?templateId=' + templateId;
            $("#indicatorId").combobox('reload', url);
        }
    })
};

//修改窗口
function openUpdateWin2() {
    //清除表单 数据
    $("#updateForm").form("clear");
    //获取到当前选中的行
    var current = $("#tempIndiAdapList").datagrid("getSelected");
    console.debug(current);
    if (!current) {
        $.messager.alert("提示", "请选择要修改的数据", "info");
        return;
    }
    var templateName = current.templateName;
    var indicatorName = current.indicatorName;
    //弹出对话框
    $("#updateDiv").dialog("open", true);
    //页面回显
    $("#updateForm").form("load", current);
    //加载下拉列表并回显
    $("#updateTemplateId").combobox({
        url: '../../templates/listAllTemplates',
        valueField: 'id',
        textField: 'title',
        onSelect: function (current) {
            $("#updateIndicatorId").combobox('clear');
            var templateId = current.id;
            var url = '../../indicators/listIndByTemPlateId?templateId=' + templateId;
            $("#updateIndicatorId").combobox('reload', url);
        }
    })
    //下拉列表的回显
    $('#updateTemplateId').combobox('setValue', templateName);
    $('#updateIndicatorId').combobox('setValue', indicatorName);

    //设置标题
    $("#updateDiv").dialog("setTitle", "适配器信息修改");

}

//删除操作
function deleteObj() {
    var current = $("#tempIndiAdapList").datagrid("getSelected");
    if (!current) {
        $.messager.alert("提示", "请选择要删除的数据", "info");
        return
    }
    $.messager.confirm("提示", "你确定要删除该数据吗?", function (r) {
        if (r) {
            $.post("../../tempIndiAdaps/deleteTempIndiAdap", {id: current.id}, function (data) {
                if (data.code == 20001) {
                    $.messager.alert("提示", "删除成功", "info");
                    $("#tempIndiAdapList").datagrid("reload");

                } else {
                    $.messager.alert("提示", "删除失败" + data.desc, "warning");
                }
            })
        }
    })
}

//新增保存操作
function saveAdapter() {
    $.messager.confirm("提示", "你确定要保存该条数据吗?", function (r) {
        if (r) {
            //提交表单
            $("#inputForm").form("submit", {
                url: "../../tempIndiAdaps/saveTempIndiAdap",
                success: function (data) {
                    if (data.code = 20001) {
                        $.messager.alert("提示", "保存成功", "info");
                        $("#inputDiv").dialog("close");
                        $("#tempIndiAdapList").datagrid("reload");
                    } else {
                        $.messager.alert("提示", "保存失败" + data.desc, "warning");
                        $("#inputDiv").dialog("close");
                    }

                }
            })
        }
    })

}

//更新保存
function updateAdapter() {
    $.messager.confirm("提示", "你确定要修改该条数据吗?", function (r) {
        if (r) {
            //提交表单
            $("#updateForm").form("submit", {
                url: "../../tempIndiAdaps/updateTempIndiAdap",
                success: function (data) {
                    if (data.code = 20001) {
                        $.messager.alert("提示", "更新成功", "info");
                        $("#updateDiv").dialog("close");
                        $("#tempIndiAdapList").datagrid("reload");
                    } else {
                        $.messager.alert("提示", "更新失败" + data.desc, "warning");
                        $("#updateDiv").dialog("close");
                    }

                }
            })
        }
    })

}

//新增取消按钮
function cancelSaveAdapter() {
    $("#inputDiv").dialog("close");
}

//编辑取消按钮
function cancelUpdateAdapter() {
    $("#updateDiv").dialog("close");
}

//适配器明细管理
function OpenFrame(id) {
    queryTempindiadapItem("../tempindiadap/tempindiadapItem-manage.jsp?tempIndiAdapId=" + id, "适配器明细管理", "700px", "500px", true);
}

function queryTempindiadapItem(url, title, width, height, shadow) {
    var content = '<iframe src="' + url + '" width="100%" height="99%" frameborder="0" scrolling="no"></iframe>';
    var boarddiv = '<div id="queryTempindiadapItem" title="' + title + '"></div>'//style="overflow:hidden;"可以去掉滚动条  
    $(document.body).append(boarddiv);
    var win = $('#queryTempindiadapItem').dialog({
        content: content,
        width: width,
        height: height,
        modal: shadow,
        title: title,
        onClose: function () {
            $(this).dialog('destroy');//后面可以关闭后的事件  
            $('#objList').datagrid('reload');
        }
    });
    win.dialog('open');
}

//占位符明细管理
function OpenTemplateFrame(id) {
    queryPlaceholder("../template/placeholder.jsp?templateId=" + id, "占位符管理", "700px", "500px", true);
}

function queryPlaceholder(url, title, width, height, shadow) {
    var content = '<iframe src="' + url + '" width="100%" height="99%" frameborder="0" scrolling="no"></iframe>';
    var boarddiv = '<div id="queryPlaceholder" title="' + title + '"></div>'//style="overflow:hidden;"可以去掉滚动条  
    $(document.body).append(boarddiv);
    var win = $('#queryPlaceholder').dialog({
        content: content,
        width: width,
        height: height,
        modal: shadow,
        title: title,
        onClose: function () {
            $(this).dialog('destroy');//后面可以关闭后的事件  
            $('#objList').datagrid('reload');
        }
    });
    win.dialog('open');
}

//指标项管理
function OpenIndiFrame(id) {
    queryIndItemInfo("../indicator/indiItem-manage.jsp?id=" + id, "指标项信息", "700px", "500px", true);
}

function queryIndItemInfo(url, title, width, height, shadow) {
    var content = '<iframe src="' + url + '" width="100%" height="99%" frameborder="0" scrolling="no"></iframe>';
    var boarddiv = '<div id="queryIndItemInfo" title="' + title + '"></div>'//style="overflow:hidden;"可以去掉滚动条  
    $(document.body).append(boarddiv);
    var win = $('#queryIndItemInfo').dialog({
        content: content,
        width: width,
        height: height,
        modal: shadow,
        title: title,
        onClose: function () {
            $(this).dialog('destroy');//后面可以关闭后的事件  
            $('#objList').datagrid('reload');
        }
    });
    win.dialog('open');
}















