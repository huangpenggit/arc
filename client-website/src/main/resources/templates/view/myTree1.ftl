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
            <ul id="tree" class="ztree" style="width:260px; overflow:auto;"></ul>
        </td>
        <td width=770px align=left valign=top>
            <iframe id="testIframe" Name="testIframe" frameborder=0 scrolling=AUTO
                    width=100% height=600
                    SRC="/static/upload/IMG_20160711_120609314.jpg"></iframe>
        </td>
    </tr>
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
    $(function () {
//        alert($ == jQuery);

        var zTree1=$("#tree1");
// zTree 的参数配置，深入使用请参考 API 文档（setting 配置详解）
        var setting1 = {
            edit:{
                enable: true,
                drag:{
                    isMove:true,
                    prev:true,
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
                    enable: true,
                    idKey: "id",
                    nameKey: "name"
                }
            }
        };

      //  然后在通过ajax获取菜单以后，进行初始化
        $(document).ready(function(){
            $.ajax({
                url:'tree.json',
                type: "get",
                dataType: "json",
                success:function(data){
                    //树形菜单初始化
                    zTreeObj = $.fn.zTree.init($("#treeDemo"), setting,data);
                },
                error:function(xhr){
                    alert(xhr.status);
                }
            });
        });
    })

</script>
<script type="text/javascript">

    var setting = {
        view: {
            dblClickExpand: false,///？1
            showLine: true,//线条
            selectedMulti: false//多选
        },
        data: {
            simpleData: {//简单数据
                enable: true,//？2
                idKey: "id",//当前条目id
                pIdKey: "pId",//父级id
                rootPId: ""//？3
            }
        },
        callback: {
            beforeClick: function (treeId, treeNode) {
                var zTree = $.fn.zTree.getZTreeObj("tree");
                if (treeNode.isParent) {
                    zTree.expandNode(treeNode);
                    return false;
                } else {
                    alert("点击节点事件");
                    console.log(this);
//                    demoIframe.attr("src",treeNode.file + ".html");
                    return true;
                }
            }
        }
    };

    var zNodes = [
        {id: 1, pId: 0, name: "根节点1", open: false},
        {id: 2, pId: 0, name: "根节点2", open: false},
        {id: 3, pId: 0, name: "根节点3", open: false},
        {id: 4, pId: 0, name: "根节点4"},
        {id: 5, pId: 0, name: "根节点5", open: true, url: "/static/upload/IMG_1.jpg"},
        {id: 6, pId: 1, name: "保持展开单一路径"},
        {id: 7, pId: 1, name: "添加 自定义控件"},
        {id: 8, pId: 2, name: "有说明吧"},
        {id: 9, pId: 2, name: "左侧菜单"},
        {id: 10, pId: 3, name: "OutLook 风格"},
        {id: 11, pId: 3, name: "Awesome 风格"},
        {id: 12, pId: 3, name: "Metro 风格"},
        {id: 13, pId: 4, name: "下拉菜单"},
        {id: 14, pId: 4, name: "带 checkbox 的多选下拉菜单"},
        {id: 15, pId: 5, name: "带 radio 的单选下拉菜单", open: true},
        {id: 16, pId: 5, name: "右键菜单 的 实现"},
        {id: 17, pId: 15, name: "与其他 DOM 拖拽互动"},
        {id: 18, pId: 15, name: "异步加载模式下全部展开", url: "www.jd.com"}
    ];

    $(document).ready(function () {
        var t = $("#tree");
        t = $.fn.zTree.init(t, setting, zNodes);
//        demoIframe = $("#testIframe");
//        demoIframe.bind("load", loadReady);

    });

    //fun
    function loadReady() {
        alert(101);
        var bodyH = demoIframe.contents().find("body").get(0).scrollHeight,
                htmlH = demoIframe.contents().find("html").get(0).scrollHeight,
                maxH = Math.max(bodyH, htmlH), minH = Math.min(bodyH, htmlH),
                h = demoIframe.height() >= maxH ? minH : maxH;
        if (h < 530) h = 530;
        demoIframe.height(h);
    }
</script>

<script type="application/ecmascript">
    //-------第二个tree
    $(document).ready(function(){
        $.ajax({
            url:'/tree/json',
            type: "get",
            dataType: "json",
            success:function(data){
            //树形菜单初始化
                zTree1 = $.fn.zTree.init($("#tree1"), setting,data);
            },
            error:function(xhr){
                alert(xhr.status);
            }
        });
    });


/*    function onClick(e, treeId, treeNode) {
        if (treeNode.isParent) //如果不是叶子结点，结束
            return;
        alert(treeNode.name); //获取当前结点上的相关属性数据，执行相关逻辑
    };*/
</script>
</body>
</html>