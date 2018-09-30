<ul id="menu" class="list-group">
    <li class="list-group-item">
        <a href="javascript:;"><span>借贷项目</span></a>
        <ul>
            <li name="bid"><a href="/bid_list"><span>投标明细</span></a></li>
            <li name="receive"><a href="#"><span>收款明细</span></a></li>
            <li name="bidRequest"><a href="/borrow_list"><span>借款项目</span></a></li>
            <li name="borrowBidReturn"><a href="/borrowBidReturn_list"><span>还款明细</span></a></li>
        </ul>
    </li>
    <li class="list-group-item">
        <a href="#"><span class="text-title">我的账户</span></a>
        <ul class="in">
            <li name="personal"><a href="#">账户信息</a></li>
            <li name="realAuth"><a href="/realAuth">实名认证</a></li>
            <li name="userFile"><a href="/userFile">风控资料认证</a></li>
            <li name="bankInfo"><a href="/bankInfo">银行卡管理</a></li>
            <li name="ipLog"><a href="/ipLog">登录记录</a></li>
            <li name="userInfo"><a href="/basicInfo"> <span>个人资料</span></a></li>
        </ul>
    </li>
    <li class="list-group-item">
        <a href="#"><span>资产详情</span></a>
        <ul class="in">
            <li name="accountFlow_list"><a href="">账户流水</a></li>
            <li name="recharge"><a href="/recharge_list">充值明细</a></li>
            <li name="moneyWithdraw"><a href="/moneyWithdraw">提现申请</a></li>
        </ul>
    </li>
    <script type="text/javascript">
        $("li[name=${currentMenu}]").addClass("active");
    </script>
</ul>