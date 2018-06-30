<div class="col-sm-9">
    <div class="page-header">
        <h4>3)订单备注</h4>
    </div>
    <div class="panel panel-default">
        <table class="table">
            <thead>
            <tr>
                <th>该订单商品所属的订单UID</th>
                <th>添加人</th>
                <th>内容</th>
                <th>时间</th>
            </tr>
            </thead>

            <tbody id="gridBody">
            <tr>
                <td>${orderAction.id}</td>
                <td>${orderAction.actionUser}</td>
                <td id="${orderAction.id}">${orderAction.actionNote}<h5 style="background-color: aqua">修改内容</h5></td>
                <td>${orderAction.actionTime?string("yyyy-MM-dd HH:mm:ss")}</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>



