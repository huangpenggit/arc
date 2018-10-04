<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Tree</title>

    <link rel="stylesheet" href="/js/plugins/ztree/css/zTreeStyle/zTreeStyle.css" type="text/css">
    <link rel="stylesheet" href="/js/plugins/treeview/screen.css" type="text/css">

    <script type="text/javascript" src="/js/plugins/ztree/js/jquery.ztree.core.js"></script>
    <script type="text/javascript" src="/js/plugins/treeview/jquery.cookie.js"></script>
    <script type="text/javascript" src="/js/plugins/treeview/test.js"></script>

    <script type="text/javascript" src="/js/plugins/jquery.form.js"></script>

</head>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>jQuery树形插件</title>
    <link rel="stylesheet" href="jquery.treeview.css" />
    <script type="text/javascript" src="jquery-1.8.3.js"></script>
    <script type="text/javascript" src="jquery.treeview.js"></script>
</head>
<body>
<ul id="tree" class="filetree" style="font-size:12px">
    <li>
        <span class="folder">条目1</span>
        <ul>
            <li>
                <span class="systemFile"><a href="javascript:alert('项1')">项1</a></span>
            </li>
        </ul>
    </li>
    <li class="closed">
        <span class="folder">初始关闭的条目2</span>
        <ul>
            <li>
                <span class="systemFile"><a href="javascript:alert('项2')">项2</a></span>
            </li>
        </ul>
    </li>
</ul>
</body>
<script type="text/javascript">
    $("#tree").treeview();
</script>

<script type="text/javascript">



</script>


</html>







