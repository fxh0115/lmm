<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 17-12-28
  Time: 下午1:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>景点查询</title>
    <link rel="stylesheet" href="../css/jingdian.css">
    <script src="../js/jingdian.js"></script>
</head>
<body>
<!-- 景点推荐 开始 -->
<div class="main_box">
    <h3 class="main_tit">景点推荐<%--<a id="smartShelfUrl" href="javascript:void(0);" >查看更多<span>&gt;</span></a>--%></h3>
    <div class="main_content_box main_recommend clearfix">
        <ul class="recommend_tab_t">
            <li class="city_js" onclick="city(this)">沈阳</li>
            <li class="city_js" onclick="city(this)">大连</li>
            <li class="city_js" onclick="city(this)">抚顺</li>
            <li class="city_js" onclick="city(this)">北京</li>
            <li class="city_js" onclick="city(this)">天津</li>
            <li class="city_js" onclick="city(this)">长春</li>
        </ul>

        <!-- 城市列表 -->
        <div class="recommend_list_content" style="display: block;">
            <div class="main_content_l ticket_icon">
                <ul class="recommend_tab_l" id="jd_type">
                    <li class="subject_js" onclick="jdtype(this)">湖光山色<i class="ticket_icon"></i></li>
                    <li class="subject_js" onclick="jdtype(this)">海滨岛屿<i class="ticket_icon"></i></li>
                    <li class="subject_js" onclick="jdtype(this)">民俗风情<i class="ticket_icon"></i></li>
                    <li class="subject_js" onclick="jdtype(this)">滑雪<i class="ticket_icon"></i></li>
                    <li class="subject_js" onclick="jdtype(this)">温泉<i class="ticket_icon"></i></li>
                    <li class="subject_js" onclick="jdtype(this)">主题乐园<i class="ticket_icon"></i></li>
                    <li class="subject_js" onclick="jdtype(this)">田园度假<i class="ticket_icon"></i></li>
                    <li class="subject_js" onclick="jdtype(this)">登山徒步<i class="ticket_icon"></i></li>
                </ul>
            </div>
            <ul class="promotion_list " id="promotion_list" style="display: block;">
                <%--
                <li>
                    <a href="http://ticket.lvmama.com/scenic-175649" target="_blank"
                       onclick="cmcTag('门票频道页-PC-站点-P4-景点推荐-上海主题乐园-001-上海迪士尼乐园','PC门票频道页景点推荐');">
                        <div class="promotion_img_box">
                            <img src="http://pic.lvmama.com/uploads/pc/place2/2017-12-25/6fdfb952-77a8-4bd8-bed1-e4d5485d3dc6.jpg"
                                 width="222" height="150" alt="">
                        </div>
                        <div class="promotion_footer">
                            <h5 title="上海迪士尼乐园">上海迪士尼乐园</h5>
                            <span class="promotion_comment_b">97.6% 好评</span>
                            <p><span>¥<dfn>259.0</dfn></span><samp>起</samp></p>
                        </div>
                    </a>
                </li>
                <li>
                     <a href="http://ticket.lvmama.com/scenic-120044" target="_blank"
                        onclick="cmcTag('门票频道页-PC-站点-P4-景点推荐-上海主题乐园-002-上海欢乐谷','PC门票频道页景点推荐');">
                         <div class="promotion_img_box">
                             <img src="http://pic.lvmama.com/uploads/pc/place2/2015-04-20/fe199cfc-df55-4674-ad0e-69bb4c75a5c1.jpg"
                                  width="222" height="150" alt="">
                         </div>
                         <div class="promotion_footer">
                             <h5 title="上海欢乐谷">上海欢乐谷</h5>
                             <span class="promotion_comment_b">95.9% 好评</span>
                             <p><span>¥<dfn>69.0</dfn></span><samp>起</samp></p>
                         </div>
                     </a>
                 </li>
                 <li>
                     <a href="http://ticket.lvmama.com/scenic-11318045" target="_blank"
                        onclick="cmcTag('门票频道页-PC-站点-P4-景点推荐-上海主题乐园-003-2018驴悦亲子上海联票','PC门票频道页景点推荐');">
                         <div class="promotion_img_box">
                             <img src="http://pic.lvmama.com/uploads/pc/place2/2017-12-25/0f4f055a-926e-436c-bd69-9723ee5d571d.jpg"
                                  width="222" height="150" alt="">
                         </div>
                         <div class="promotion_footer">
                             <h5 title="2018驴悦亲子上海联票">2018驴悦亲子上海联票</h5>
                             <span class="promotion_comment_b">98.8% 好评</span>
                             <p><span>¥<dfn>179.0</dfn></span><samp>起</samp></p>
                         </div>
                     </a>
                 </li>
                 <li>
                     <a href="http://ticket.lvmama.com/scenic-110109" target="_blank"
                        onclick="cmcTag('门票频道页-PC-站点-P4-景点推荐-上海主题乐园-004-上海杜莎夫人蜡像馆','PC门票频道页景点推荐');">
                         <div class="promotion_img_box">
                             <img src="http://pic.lvmama.com/uploads/pc/place2/2015-07-28/af182ebf-9a1d-4eb9-83d8-db8366fe0662.jpg"
                                  width="222" height="150" alt="">
                         </div>
                         <div class="promotion_footer">
                             <h5 title="上海杜莎夫人蜡像馆">上海杜莎夫人蜡像馆</h5>
                             <span class="promotion_comment_b">94.5% 好评</span>
                             <p><span>¥<dfn>122.0</dfn></span><samp>起</samp></p>
                         </div>
                     </a>
                 </li>
                 <li>
                     <a href="http://ticket.lvmama.com/scenic-105194" target="_blank"
                        onclick="cmcTag('门票频道页-PC-站点-P4-景点推荐-上海主题乐园-005-上海长风海洋世界','PC门票频道页景点推荐');">
                         <div class="promotion_img_box">
                             <img src="http://pic.lvmama.com/uploads/pc/place2/2017-07-10/464cd212-638e-495d-825b-65245476e382.jpg"
                                  width="222" height="150" alt="">
                         </div>
                         <div class="promotion_footer">
                             <h5 title="上海长风海洋世界">上海长风海洋世界</h5>
                             <span class="promotion_comment_b">96.2% 好评</span>
                             <p><span>¥<dfn>79.0</dfn></span><samp>起</samp></p>
                         </div>
                     </a>
                 </li>
                 <li>
                     <a href="http://ticket.lvmama.com/scenic-11318146" target="_blank"
                        onclick="cmcTag('门票频道页-PC-站点-P4-景点推荐-上海主题乐园-006-上海安徒生童话乐园','PC门票频道页景点推荐');">
                         <div class="promotion_img_box">
                             <img src="http://pic.lvmama.com/uploads/pc/place2/2017-07-03/272b41fd-f7c4-485f-bb1a-12448fb4ccde.jpg"
                                  width="222" height="150" alt="">
                         </div>
                         <div class="promotion_footer">
                             <h5 title="上海安徒生童话乐园">上海安徒生童话乐园</h5>
                             <span class="promotion_comment_b">94.2% 好评</span>
                             <p><span>¥<dfn>126.0</dfn></span><samp>起</samp></p>
                         </div>
                     </a>
                 </li>
                 <li>
                     <a href="http://ticket.lvmama.com/scenic-105607" target="_blank"
                        onclick="cmcTag('门票频道页-PC-站点-P4-景点推荐-上海主题乐园-007-上海锦江乐园','PC门票频道页景点推荐');">
                         <div class="promotion_img_box">
                             <img src="http://pic.lvmama.com/uploads/pc/place2/2014-10-11/1413030443068.jpg" width="222"
                                  height="150" alt="">
                         </div>
                         <div class="promotion_footer">
                             <h5 title="上海锦江乐园">上海锦江乐园</h5>
                             <span class="promotion_comment_b">96.0% 好评</span>
                             <p><span>¥<dfn>30.0</dfn></span><samp>起</samp></p>
                         </div>
                     </a>
                 </li>
                 <li>
                     <a href="http://ticket.lvmama.com/scenic-103215" target="_blank"
                        onclick="cmcTag('门票频道页-PC-站点-P4-景点推荐-上海主题乐园-008-上海影视乐园','PC门票频道页景点推荐');">
                         <div class="promotion_img_box">
                             <img src="http://pic.lvmama.com/uploads/pc/place2/2017-11-15/c2b5332c-689b-420c-ac93-b58339f4754a.jpg"
                                  width="222" height="150" alt="">
                         </div>
                         <div class="promotion_footer">
                             <h5 title="上海影视乐园">上海影视乐园</h5>
                             <span class="promotion_comment_b">93.0% 好评</span>
                             <p><span>¥<dfn>61.0</dfn></span><samp>起</samp></p>
                         </div>
                     </a>
                 </li>--%>
            </ul>
        </div>
    </div>
</div>    <!-- 景点推荐  结束 -->

</body>
</html>
