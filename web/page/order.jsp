<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 18-1-4
  Time: 下午4:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单</title>
</head>
<body>

<!-- 主体部分开始-->
<div class="newmember_main">
    <!-- 会员中心左侧菜单栏 -->
    <div class="newmember_leftside">
        <dl>
            <dt><i class="user_icon"></i>个人中心<i class="downarr"></i></dt>
            <dd><a href="#" id="lvnav_grow">我的成长</a></dd>
            <dd><a href="#" id="lvnav_collection">我的收藏</a></dd>
            <dd><a href="#" id="lvnav_comment">我的点评<span id="waittingCommentNumber"></span></a>
            </dd>
            <dd><a href="#" id="lvnav_travel">我的游记<i class="write_yj"></i></a></dd>
            <dd><a href="#" id="lvnav_raiders">我的攻略</a></dd>
            <dd><a href="#" id="lvnav_community_ask">我的问答</a></dd>
            <dd>
                <a href="#" id="lvnav_courtesy">推荐有礼
                    <i class="new-icon"></i>
                </a>
            </dd>
            <dd>
                <a href="#" id="lvnav_information">站内消息<span id="myspace_message_count_id"></span></a>
            </dd>
        </dl>
        <dl>
            <dt><i class="order_icon"></i>订单中心<i class="downarr"></i></dt>
            <dd><a href="#" id="lvnav_order">我的订单</a></dd>
            <dd><a href="#" id="lvnav_flight">我的出行</a></dd>
            <dd><a href="#" id="lvnav_if_order">国际机票</a></dd>
            <dd><a href="#" id="lvnav_intent">我的意向单</a></dd>
            <dd><a href="#" id="lvnav_presaleorder">我的预售券</a></dd>
            <dd><a href="#" id="lvnav_order_temp">我的暂存订单</a></dd>
        </dl>
        <dl>
            <dt><i class="cash_icon"></i>资产中心<i class="downarr"></i></dt>
            <dd><a href="#" id="lvnav_balance">账户余额</a></dd>
            <dd><a href="#" id="lvnav_bonus">奖金</a></dd>
            <dd><a href="#" id="lvnav_coupons">优惠券 - 红包</a></dd>
            <dd><a href="#" id="lvnav_integral">积分</a></dd>
            <dd><a href="#" id="lvnav_gift">礼品卡</a></dd>
            <dd><a href="#" id="lvnav_growUp">会员等级礼品<i class='' id="myspace_growUp_hasNewCoupon"></i></a>
            </dd>
        </dl>
        <dl>
            <dt><i class="finance_icon"></i>金融中心<i class="downarr"></i></dt>
            <dd><a href="#" id="lvnav_ious">小驴白条</a></dd>
            <dd><a href="#" id="lvnav_exchange">外币兑换</a></dd>
            <dd><a href="#" id="lvnav_guarantee">保证金存款证明</a></dd>
            <dd><a href="#" id="lvnav_funds">金驴宝</a></dd>
        </dl>
        <dl>
            <dt><i class="server_icon"></i>服务中心<i class="downarr"></i></dt>
            <dd><a href="#" id="lvnav_help" target="_blank">帮助中心</a></dd>
            <dd><a href="#" id="lvnav_feedback" target="_blank">用户反馈</a>
            </dd>
        </dl>
    </div>


    <!--  右边部分开始 -->
    <div class="newmember_rightside">
        <div class="mod_box">
            <div class="mod_title">
                <h3 class="h3_title">我的订单<span class="mod_tips"><i></i>退款申请只支持未游玩、可退改的订单。</span></h3>
            </div>

            <!-- 新的订单列表开始----------------------------------------------------------------------------------------------------- -->
            <div class="mod_tcontent js_con" style="display:block;">
                <table class="order_table">
                    <thead>
                    <tr class="col-name">
                        <th width="400">产品信息</th>
                        <th width="80">订单金额</th>
                        <th width="72">出行时间</th>
                        <th width="70">订单状态</th>
                        <th width="50">合同状态</th>
                        <th width="110">操作</th>
                        <th width="110">其他操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <!-- 近期没有下过订单 -->
                    <tr class="sep-row">
                        <td colspan="7">
                            <div class="no_order">
                                <a href="http://www.lvmama.com" class="noimg"><img
                                        src="http://s1.lvjs.com.cn/img/v6/myspace/noorder.png"/></a>
                                <div class="content">
                                    <p>最近您没有下过订单哦~</p>
                                    <a href="http://www.lvmama.com" class="gohome">去首页看看</a>
                                </div>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <!-- 新的订单列表结束----------------------------------------------------------------------------------------------------- -->

            <div class="cancel_wapper01 order_cancel_t01">
                <h4>取消订单</h4>
                <a class="cancel_bg"><img src="http://s1.lvjs.com.cn/img/myspace/myspace_fapiao/cancel_bt.jpg" alt="关闭"
                                          id="close_btn"/></a>
                <div class="cancel_list">
                    <div class="cancel_ka"><span class="cancel_closed"> 您的订单已取消</span><span
                            style="display: block; margin-top: -2px; margin-left: 20px;">谢谢反馈！</span>
                        <div class="tips_list" id="fleshId"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--  右边部分结束 -->
</div>
<!-- 主体部分结束-->

</body>
</html>
