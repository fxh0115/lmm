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
    <title>景点信息</title>
</head>
<body>
<div>${sessionScope.jingdianinfo.get(0).jd_introduction}</div>
<!--组装面包屑和天气-->
<div class="crumbs clearfix">
    <!--面包屑导航、天气-->
    <div class="crumbs-link">
        <a href="http://ticket.lvmama.com" target="_blank">景点门票</a> &gt;
        <a class="current">${sessionScope.jingdianinfo.get(0).jd_name}</a>
    </div>
</div>

<div class="overview">
    <div class="dtitle clearfix">
			<span class="xorder">
				    <span class="price"><dfn>&yen;<i>${sessionScope.jingdianinfo.get(0).jd_price}</i></dfn>起</span>
                    <a href="zhifu.jsp" class="btn btn-large btn-reision"><span class="btn-text">立即预订</span></a>
			</span>
        <div class="titbox">
            <h1 class="tit" title="沈阳怪坡园风景区">${sessionScope.jingdianinfo.get(0).jd_name}</h1><span
                class="mp_star"><i>${sessionScope.jingdianinfo.get(0).jd_rank}</i>级景区</span>
        </div>
    </div>
    <div class="dcontent clearfix">
        <!--组装产品图片-->
        <div class="ticket_img_scroll">

            <div class="datu fl">
                <a href="javascript:;" class="datu_prev"></a>
                <a href="javascript:;" class="datu_next"></a>
                <ul class="pic_mod_ul">
                    <li><img
                            src="/images/${sessionScope.jingdianinfo.get(0).jd_photoname}.jpg"
                            width="462" height="308"></li>
                    <%--  <li><img
                              src="http://pic.lvmama.com//uploads/pc/place2/2014-11-27/6c5c204c-8828-4a38-bd75-294802156148_480_320.jpg"
                              width="462" height="308"></li>
                      <li><img src="http://pic.lvmama.com//uploads/pc/place2/109861/1407737746616_480_320.jpg" width="462"
                               height="308"></li>
                      <li><img
                              src="http://pic.lvmama.com//uploads/pc/place2/2016-11-07/0da917b8-bafa-448b-a6f3-3e9b8c88caea_480_320.jpg"
                              width="462" height="308"></li>--%>
                </ul>
            </div>
            <%--  <div class="xtu fr">

                  <dl class="pic_tab_dl">
                      <dd><img
                              src="http://pic.lvmama.com//uploads/pc/place2/2014-11-27/a0140aaa-dcf5-4104-911a-fca9e2acdace_180_120.jpg"
                              width="95" height="64">
                          <div class="ticket_meng"></div>
                      </dd>
                      <dd><img
                              src="http://pic.lvmama.com//uploads/pc/place2/2014-11-27/6c5c204c-8828-4a38-bd75-294802156148_180_120.jpg"
                              width="95" height="64">
                          <div class="ticket_meng"></div>
                      </dd>
                      <dd><img src="http://pic.lvmama.com//uploads/pc/place2/109861/1407737746616_180_120.jpg" width="95"
                               height="64">
                          <div class="ticket_meng"></div>
                      </dd>
                      <dd><img
                              src="http://pic.lvmama.com//uploads/pc/place2/2016-11-07/0da917b8-bafa-448b-a6f3-3e9b8c88caea_180_120.jpg"
                              width="95" height="64">
                          <div class="ticket_meng"></div>
                      </dd>
                  </dl>
              </div>--%>
            <span class="pic_left"></span>
            <span class="pic_right"></span>
        </div>
        <div class="dinfo">
            <div class="sec-info">
                <div class="sec-inner">
                  <%--  <p class="btn_collect clearfix">
                        <span class="icon icon_collectXin"></span>
                        <span class="collectText">收藏</span>
                        <span class="collectedText">已收藏</span>
                        <span class="cancelText">取消收藏</span>
                    </p>--%>
                    <dl class="dl-hor">
                        <dt>景点地址：</dt>
                        <dd>
                            <p class="linetext" <%--title="辽宁省沈阳市沈北新区清水镇"--%>>${sessionScope.jingdianinfo.get(0).jd_address}</p>
                        </dd>
                    </dl>
                    <dl class="dl-hor index3">
                        <dt>营业时间：</dt>
                        <dd>
                            <p>
                                ${sessionScope.jingdianinfo.get(0).jd_date}
                            </p>
                        </dd>
                    </dl>

                    <dl class="dl-hor service_list">
                        <dt>服务保障：</dt>
                        <dd>
                            <a href="javascript:;" class="service_poptip" tip-content='顺利入园，快速服务'><i
                                    class="icon_bz1"></i>入园保障</a>

                            <a href="javascript:;" class="service_poptip" tip-content='信息可靠，如实描述'><i
                                    class="icon_bz6"></i>如实描述</a>
                            <a href="javascript:;" class="service_poptip" tip-content='同类低价，买贵就赔'><i
                                    class="icon_bz4"></i>贵就赔</a>
                        </dd>
                    </dl>

                    <!--领红包-->
                </div>
            </div>
            <!--有精华点评显示下面的div-->
            <div class="comment-info">

                <div class="pj_t">

                    <div class="pj_tab">
                    </div>

                    <div class="c_09c"><i class="icon"></i>
                        <span><i data-mark="dynamicNum" data-level="90.5">90.5</i>%</span>
                        <i class="good_recon">好评</i>
                        <i class="verticle_line"></i>
                        <a href="#yhdp" hidefocus="false"> 查看 41人点评</a></div>
                </div>
                <div class="quote">
                    <i class="qstart">"</i>
                    ${sessionScope.jingdianinfo.get(0).jd_introduction}
                    <i class="qend">"</i>
                    <ul class="pj_list">
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>
