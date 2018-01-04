<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 18-1-2
  Time: 下午6:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>订单支付</title>
    <script src="../js/zhifu.js"></script>

</head>
<body>

<div class="order-header wrap">
    <div class="header-inner">
        <span class="logo">自助天下游 就找驴妈妈</span>
        <p class="welcome" name="topWelcome">
        </p>
        <p class="info">24小时服务热线：<strong>xxxx-xxxx</strong></p>
    </div>
</div>

<div class="mainBox">
    <div class="wrap">

        <ol class="ui-step ui-step-3">
            <li class="ui-step1 ui-step-start ui-step-active">
                <div class="ui-step-arrow">
                    <i class="arrow_r1"></i> <i class="arrow_r2"></i>
                </div>
                <span class="ui-step-text">填写订单</span>
            </li>
            <li class="ui-step2 ">
                <div class="ui-step-arrow">
                    <i class="arrow_r1"></i> <i class="arrow_r2"></i>
                </div>
                <span class="ui-step-text">在线支付</span>
            </li>
            <li class="ui-step3 ui-step-end ">
                <div class="ui-step-arrow">
                    <i class="arrow_r1"></i> <i class="arrow_r2"></i>
                </div>
                <span class="ui-step-text">预订成功</span>
            </li>
        </ol>
        <!-- 操作步骤 -->
        <!-- 未登录提示 -->
        <div class="tiptext tip-info order_login">
            <span class="tip-icon tip-icon-info"></span>您当前未登录，如您是驴妈妈会员，<a class="order_login_btn" href="javascript:;">登录</a>后可使用账户中优惠券，奖金以及存款。
        </div>
        <div class="orderTicket clearfix">
            <!--订单明细-->
            <div class="orderInfo orderTicketInfo">
                <div class="orderTicketInfo-list">
                    <h3>费用明细</h3>
                    <ul class="nobd">
                        <li class="primary"><em>门票价格</em><dfn><i>¥</i>--</dfn></li>
                    </ul>
                    <ul class="last">
                    </ul>
                </div>
                <div class="ticketPriceTotal">
                    <em>应付金额</em>
                    <div class="priceCount">
                        <dfn></dfn>
                    </div>
                </div>
            </div>
            <div class="orderMainLeft">
                <div class="orderMain">
                    <form method="post" name="orderForm" id="order_submit" enctype="multipart/form-data">
                        <!-- 预订信息 开始 -->
                        <div class="orderBox">
                            <div class="orderTit">
                                <span class="iconBg"><b class="orderIcon orderIcon-viewpoint"></b></span>
                                <h3>${sessionScope.jingdianinfo.get(0).jd_name}</h3>
                                <span class="orderTit-subTit">在线支付</span>
                            </div>

                            <!--商品信息-->
                            <div class="ticketLi last main">
                                <div class="ticketTit">
                                    <a href="" class="ticketTit-link">${sessionScope.jingdianinfo.get(0).jd_name}-门票</a>
                                    <span class="tagsback"><i>随时退</i></span>
                                </div>

                                <dl class="orderDl">
                                    <dt>日&emsp;&emsp;期：</dt>
                                    <dd>
                                        <div class="ticket-dataSelect">
                                            <input id="showVisitTimeInput" class="input js_yz J_calendar yz_error"
                                                   name="date"
                                                   type="date" placeholder="请选择游玩日期">
                                            <i class="orderIcon orderIcon-time"></i>
                                            <span class="error_text"><i
                                                    class="tip-icon tip-icon-error"></i>请选择游玩日期。</span>
                                        </div>
                                    </dd>
                                </dl>
                                <dl class="orderDl">
                                    <dt>数&emsp;&emsp;量：</dt>
                                    <dd class="orderNumBox clearfix">
                                        <input type="number" class="ordeRoomNum js_input" name="count"
                                               id="menpiao_count"
                                               value="1" min="1" max="99">
                                    </dd>
                                </dl>
                            </div>
                        </div>
                        <!-- 预订信息 结束 -->

                        <!--关联销售开始-->
                        <!--关联销售结束-->
                        <div class="orderBox order_box">
                            <div class="orderTit">
                                <span class="iconBg"><b class="orderIcon orderIcon-checkIn"></b></span>
                                <h3>用户信息 </h3>
                                <span class="orderTit-info">您需填写1个游玩人信息</span>
                            </div>
                            <div id="userinfoDiv">
                                <span class="red">*</span>中文姓名：<input type="text" name="qupiaoname" placeholder="请输入姓名">
                                <span class="red">*</span> 手机号码：<input type="text" name="phonenumber"
                                                                       placeholder="请输入手机号码">
                                <span class="red">*</span>证件类型：<input type="text" name="shenfenzheng"
                                                                      placeholder="请输入身份证号码">
                            </div>
                        </div>
                        <!-- 配送方式 结束 -->

                    </form>
                    <div class="orderFoot">
                        <div class="payBox">
                            <span class="btn btn-xl btn-orange js_tijiao btn-forbidden"
                               id="submitCreateOrder">
                                立即付款
                            </span>
                            <div id="errmess"></div>
                            <p class="payBox-contract"><a href="javascript:;" class="check checked"><span
                                    class="checkbox"></span></a>已阅读并同意 <a href="javascript:;"
                                                                          class="orderLinkBtn js_xieyiBtn">驴妈妈旅游网预订条款</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
