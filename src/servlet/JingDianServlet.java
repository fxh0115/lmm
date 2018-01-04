package servlet;

import com.alibaba.fastjson.JSON;
import pojo.JingDianInfo;
import service.JingDianService;
import serviceImpl.JingDianServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ttc on 17-12-29.
 */
@WebServlet(name = "JingDianServlet", urlPatterns = "/JingDianServlet")
public class JingDianServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        //查询景点数据

        //获取查询参数
        HttpSession session = request.getSession();
        String city_name = (String) session.getAttribute("city_name");
        String jd_type = request.getParameter("jd_type");

        //调用查询方法
        JingDianService jingDianService = new JingDianServiceImpl();
        List<JingDianInfo> list = jingDianService.selectJingDianInfo(city_name, jd_type);

        //将集合转变成Json字符串
        if(list.size() != 0){
            String listJson = JSON.toJSONString(list);
            //将Json返回到页面
            response.getWriter().write(listJson);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request, response);
    }
}
