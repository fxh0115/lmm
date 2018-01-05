package servlet;

import com.alibaba.fastjson.JSON;
import pojo.MENPIAO_JINGDIAN;
import service.MenPiao_JingDianService;
import serviceImpl.MenPiao_JingDianServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SelectMenPiao_JingDian", urlPatterns = "/SelectMenPiao_JingDian")
public class SelectMenPiao_JingDian extends HttpServlet
{
    //查询该用户的门票订单信息
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        //不需要参数直接查询所有景点信息
        MenPiao_JingDianService menPiao_jingDianService = new MenPiao_JingDianServiceImpl();
        List<MENPIAO_JINGDIAN> menpiao_jingdienList = menPiao_jingDianService.selectMENPIAO_JINGDIAN();
        //转换成Json字符串
        String Jsonstr = JSON.toJSONString(menpiao_jingdienList);

        response.getWriter().write(Jsonstr);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request, response);
    }
}
