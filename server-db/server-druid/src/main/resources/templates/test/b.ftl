<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>链接跳转</title>
    <link rel="stylesheet" href="/static/js/plugins/bootstrap/dist/css/bootstrap.css" type="text/css"/>

</head>
<body>
<div class="jumbotron">
    <div class=" container">
        <h2>我的超链接管理</h2>
        <p><a class="btn btn-primary btn-lg" href="http://localhost/swagger-ui.html" role="button">swagger</a></p>
        <p><a class="btn btn-primary btn-sm" href="http://localhost:9000" role="button">sonar</a></p>
        <p><a class="btn btn-primary btn-xs" href="http://www.jeasyui.net/plugins/182.html" role="button">easyui</a></p>
        <div>未使用css nbsp;&nbsp;<a href="http://www.jeasyui.net/plugins/182.html">easyui</a></div>
    </div>
</div>

<div class="container">
    <div class="row">
        <p>文本内容居中：利用bootstrap自带CSS样式表当中 的 text-center 样式来实现。 </p>
    </div>
</div>

<div class="container">
    <a href="http://blog.csdn.net/u010801439/article/details/71312011" class="btn btn-success btn-sm">说明居中</a><br>
    <a href="http://www.runoob.com/bootstrap/bootstrap-grid-system.html" class="btn btn-info btn-sm">栅格系统</a><br>
    <a href="https://v3.bootcss.com/components/#glyphicons" class="btn btn-warning ">bootcss</a><br>
    <a href="https://v3.bootcss.com/components/#glyphicons" class="btn btn-danger ">bootcss红色</a><br>
    <button  class="btn btn-success">Action</button>
</div>



<br>
<form id="bdfm" target="_blank" name="bdfm" method="get" action="https://www.bing.com/">
    <table>
        <tr>
            <td>
                <a href="http://www.baidu.com">
                    <img src="http://www.baidu.com/img/baidu_jgylogo3.gif"/>&nbsp;&nbsp;&nbsp;
                </a>
            </td>
            <td><input type="text"
                       id="search1" name="word"/></td>
            <td><input type="submit" value="搜索"
            /></td>
        </tr>
    </table>
</form>

</div>

<form action=".">
    <br> <input type="search"/>搜索测试
</form>


</body>
<!--资源引入-->
<script type="text/javascript" src="/static/js/plugins/jquery/jQuery.js"></script>
<script type="text/javascript" src="/static/js/plugins/bootstrap/dist/js/bootstrap.js"></script>
<script type="text/javascript" src="/static/js/plugins/jquery-form/jquery.form.js"></script>

<script type="text/javascript">
    $(function () {
        //alert("页面加载完毕");
        console.log("页面加载完毕");

    });
</script>
</html>