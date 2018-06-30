<h1>${skuProperty.name!""}</h1>
<#if skuValues??>
<div>
    <span id="spIdSpan" class="hide">${skuProperty.id}</span>
    <table id="svTable" class="table table-bordered" border="1">
        <thead>
        <tr>
            <td>操作</td>
            <td>属性</td>
            <td>上传图片</td>
        </tr>
        </thead>
        <#list skuValues as item>
            <tbody>
            <tr>
                <td><a href="javascript:" class="btn btn-primary">删除</a></td>
                <td class="hide" id="svId">${item.id}</td>
                <td>${item.value}</td>
                <td>操作</td>
            </tr>
            </tbody>
        </#list>
    </table>
</div>
</#if>

<script type="text/javascript">
    $("#svTable a").click(function () {
        $(this).closest("tr").remove();
    })
</script>