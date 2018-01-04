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
                    <form action="#" method="post" name="orderForm" id="order_submit">
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
                                    <a href="javascript:;" class="ticketTit-link">${sessionScope.jingdianinfo.get(0).jd_name}-门票<span
                                            class="icon_arrownew"><i>◆</i><b>◆</b></span></a>
                                    <span class="tagsback"><i>随时退</i></span>
                                </div>

                                <dl class="orderDl">
                                    <dt>日&emsp;&emsp;期：</dt>
                                    <dd>
                                        <div class="ticket-dataSelect">
                                            <input type="hidden" id="visitTimeInput" type="text" maxlength="10"
                                                   name="visitTime" data="2018-01-05" value="2018-01-05"
                                                   autocomplete="off" readonly="readonly" placeholder="请选择游玩日期">
                                            <input id="showVisitTimeInput" class="input js_yz J_calendar yz_error"
                                                   type_name="text" type="text" readonly="readonly"
                                                   placeholder="请选择游玩日期">
                                            <i class="orderIcon orderIcon-time"></i>
                                            <span class="error_text"><i
                                                    class="tip-icon tip-icon-error"></i>请选择游玩日期。</span>
                                        </div>
                                    </dd>
                                </dl>
                                <dl class="orderDl">
                                    <dt>数&emsp;&emsp;量：</dt>
                                    <dd class="orderNumBox clearfix">
                                        <!-- 不可再增加或减少时，给 orderReduce 加num_stop-->
                                        <a href="javascript:;" class="orderContro orderReduce num_stop">-</a>
                                        <input type="text" class="ordeRoomNum js_input" name="itemMap[8123245].quantity"
                                               value="1" goodsId="8123245"
                                               adult="1" child="0" maxQuantity="99" minQuantity="1"
                                               goodsType="NOTICETYPE_DISPLAY" mainItem="true" autocomplete="off"
                                               stockQuantity="999" ticketType="" ticketDisneyNum="1"
                                               suppGoodsName="虎园-成人票" price="7800">
                                        <a href="javascript:;" class="orderContro orderAdd">+</a>
                                    </dd>
                                </dl>
                                <!-- 买赠开始 -->
                                <!-- 不符合规范  order_dl 加class: order_dlNo-->
                                <div class="gift" style="display:none">
                                    <span class="gift-tit">赠 品：</span>
                                    <ul class="gift-list">
                                    </ul>
                                </div>
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
                                <span class="red">*</span> 手机号码：<input type="text" name="phone" placeholder="请输入手机号码">
                                <span class="red">*</span>证件类型：<input type="text" name="shenfenzheng"
                                                                      placeholder="请输入身份证号码">
                            </div>
                        </div>

                        <!--验证码-->
                        <input type="hidden" id="login_user" value="0" status="0"/>
                        <div id="picCodeContainer">
                            <div id="picCodeDiv">
                                <input type="hidden" id="checkCodeValid" value="0"/>
                                <dl class="orderDl">
                                    <dt><span class="red">*</span>验证码：</dt>
                                    <dd>
                                        <input type="hidden" name="checkCode2" id="checkCode2"/>
                                        <input type="text" name="pic_checkCode" id="pic_checkCode"
                                               onfocus="javascript:showPicImg();" class="input js_yz" maxlength="10"
                                               placeholder="请输入计算结果"/>
                                        <img src="" id="createCheckCode" class="vertical_t" align="middle"
                                             onclick="javascript:reloadPicCode();"
                                             style="width:100px;height:34px;cursor:pointer;display:none">
                                        <a href="javascript:reloadPicCode();" class="orderLinkBtn"
                                           id="createCheckCodeHref" style="display:none">&nbsp;看不清,换一个.</a>
                                    </dd>
                                </dl>
                            </div>

                        </div>

                        <!-- 配送方式 结束 -->

                    </form>
                    <div class="orderFoot">
                        <div class="payBox">
                            <a class="btn btn-xl btn-orange js_tijiao btn-forbidden" href="javascript:;"
                               id="submitCreateOrder">
                                立即付款
                            </a>
                            <p class="payBox-contract"><a href="javascript:;" class="check checked"><span
                                    class="checkbox"></span></a>已阅读并同意 <a href="javascript:;"
                                                                          class="orderLinkBtn js_xieyiBtn">驴妈妈旅游网预订条款</a>
                            </p>
                        </div>
                    </div>
                </div><!-- //orderMain -->
            </div>

        </div>
    </div><!-- //warp -->
</div><!-- //mainBox -->

</body>
</html>
