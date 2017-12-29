package pojo;

/**
 * Created by ttc on 17-12-29.
 */
public class JingDianInfo
{
    private String JD_ID;
    private String JD_NAME;
    private int JD_PRICE;
    private String JD_ADDRESS;
    private String JD_PHOTONAME;
    private String JD_INTRODUCTION;
    private String JD_TYPE;

    public JingDianInfo(String JD_ID, String JD_NAME, int JD_PRICE, String JD_ADDRESS, String JD_PHOTONAME, String JD_INTRODUCTION, String JD_TYPE)
    {
        this.JD_ID = JD_ID;
        this.JD_NAME = JD_NAME;
        this.JD_PRICE = JD_PRICE;
        this.JD_ADDRESS = JD_ADDRESS;
        this.JD_PHOTONAME = JD_PHOTONAME;
        this.JD_INTRODUCTION = JD_INTRODUCTION;
        this.JD_TYPE = JD_TYPE;
    }

    public String getJD_ID()
    {
        return JD_ID;
    }

    public void setJD_ID(String JD_ID)
    {
        this.JD_ID = JD_ID;
    }

    public String getJD_NAME()
    {
        return JD_NAME;
    }

    public void setJD_NAME(String JD_NAME)
    {
        this.JD_NAME = JD_NAME;
    }

    public int getJD_PRICE()
    {
        return JD_PRICE;
    }

    public void setJD_PRICE(int JD_PRICE)
    {
        this.JD_PRICE = JD_PRICE;
    }

    public String getJD_ADDRESS()
    {
        return JD_ADDRESS;
    }

    public void setJD_ADDRESS(String JD_ADDRESS)
    {
        this.JD_ADDRESS = JD_ADDRESS;
    }

    public String getJD_PHOTONAME()
    {
        return JD_PHOTONAME;
    }

    public void setJD_PHOTONAME(String JD_PHOTONAME)
    {
        this.JD_PHOTONAME = JD_PHOTONAME;
    }

    public String getJD_INTRODUCTION()
    {
        return JD_INTRODUCTION;
    }

    public void setJD_INTRODUCTION(String JD_INTRODUCTION)
    {
        this.JD_INTRODUCTION = JD_INTRODUCTION;
    }

    public String getJD_TYPE()
    {
        return JD_TYPE;
    }

    public void setJD_TYPE(String JD_TYPE)
    {
        this.JD_TYPE = JD_TYPE;
    }
}
