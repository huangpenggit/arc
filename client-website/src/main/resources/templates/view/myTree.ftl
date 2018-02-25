<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>myTree</title>
    <link rel="stylesheet" href="/static/js/plugins/zTree_v3/css/metroStyle/metroStyle.css" type="text/css">
    <script type="text/javascript" src="/static/js/plugins/jquery/jQuery.js"></script>
    <script type="text/javascript" src="/static/js/plugins/zTree_v3/js/jquery.ztree.core.js"></script>

</head>
<body>
<h2>myTree测试</h2>
<br>
<br>


<table border=0 height=600px align=left>

    <tr>
        <td width=260px align=left valign=top style="border-right: #999999 1px dashed">
            <ul id="tree1" class="ztree" style="width:260px; overflow:auto;"></ul>
        </td>
        <td width=770px align=left valign=top>
            <iframe id="testIframe1" Name="testIframe" frameborder=0 scrolling=AUTO
                    width=100% height=700
                    SRC="/static/upload/IMG_20160711_120609314.jpg"></iframe>
        </td>
    </tr>
</table>


<script type="text/javascript">
    //        alert($ == jQuery);

    var zTree= $("#tree1");
    // zTree 的参数配置，深入使用请参考 API 文档（setting 配置详解）
    var setting1 = {
        edit: {
            enable: true,
            drag: {
                isMove: true,
                prev: true,
                autoOpenTime: 0
            },
            editNameSelectAll: true,
            showRemoveBtn: true,
            removeTitle: "删除节点",
            renameTitle: "编辑节点名称",
            showRenameBtn: true
        },
        data: {
            simpleData: {
                enable: true,//？2
                idKey: "id",//当前条目id
                pIdKey: "pId",//父级id
                rootPId: "",//？3
                nameKey: "name"
            }
        }
    };

    //  然后在通过ajax获取菜单以后，进行初始化

    //-------第二个tree
    $(document).ready(function () {
        var url = "/tree/json";
        $.ajax({
            url: url,
            type: "get",
            dataType: "json",
            success: function (data) {
                //树形菜单初始化
                console.log(typeof  data);
                //var tem = $.parseJSON(data);
                console.table(data);

                zTree = $.fn.zTree.init($("#tree1"), setting1, data);
            },
            error: function (xhr) {
                alert(xhr.status);
            }
        });
    });

    //$.fn.zTree.init($("#tree"), setting, nodes);


    /*    function onClick(e, treeId, treeNode) {
            if (treeNode.isParent) //如果不是叶子结点，结束
                return;
            alert(treeNode.name); //获取当前结点上的相关属性数据，执行相关逻辑
        };*/
</script>
</body>
</html>