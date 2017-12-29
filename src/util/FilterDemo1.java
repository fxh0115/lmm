package util;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * Created by ttc on 17-12-20.
 */
@WebFilter(filterName = "FilterDemo1", urlPatterns = "/*")
public class FilterDemo1 implements Filter
{
    public FilterDemo1()
    {
        System.out.println("1.��������������");
    }

    public void init(FilterConfig config) throws ServletException
    {
        System.out.println("2.��ʼ��");
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException
    {
        System.out.println("3.ִ�в���");
        //��д�������
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html; charset=utf-8");

        //�������ٴη��뵽��������
        chain.doFilter(req, resp);
    }

    public void destroy()
    {
        System.out.println("5.���ٹ�����");
    }

}
