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
        System.out.println("1.创建过滤器对象");
    }

    public void init(FilterConfig config) throws ServletException
    {
        System.out.println("2.初始化");
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException
    {
        System.out.println("3.执行操作");
        //编写处理代码
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html; charset=utf-8");

        //将数据再次放入到过滤器链
        chain.doFilter(req, resp);
    }

    public void destroy()
    {
        System.out.println("5.销毁过滤器");
    }

}
