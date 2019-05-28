using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class yonghuliuyan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["cookie"];
        if (cookie != null)
        {
            Response.Redirect("Mlogin.aspx");
        }

        Label4.Text = DateTime.Now.ToString();
        TextBox1.Text = Session["Friendname"].ToString();
        Label2.Text = Session["Friendpsd"].ToString();
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox2.Text = " ";
        TextBox3.Text = " ";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Mlogin.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strCon = "Data Source=.;Initial Catalog =managetelep;uid=sa;pwd=sa";
        SqlConnection sqlconn = new SqlConnection(strCon);
        SqlCommand sqlcommand = new SqlCommand();
        sqlcommand.Connection = sqlconn;

        string strsql = "select * from userss where Uname ='" + TextBox3.Text + "'";
        SqlDataAdapter da = new SqlDataAdapter(strsql, sqlconn);
        DataSet ds = new DataSet();
        int count = da.Fill(ds, "userss");
       // 
       
        if (count > 0)
        {
            

                if (TextBox3.Text == ds.Tables["userss"].Rows[0]["Uname"].ToString())
                {
                   
                    sqlcommand.CommandText = "insert into Friendliuyan3 (Friendname1,Fnum,Fliuyanneitong,Uname,liuyantime)values(@Friendname1,@Fnum,@Fliuyanneitong,@Uname,@liuyantime)";
                    sqlcommand.Parameters.AddWithValue("Friendname1", TextBox1.Text);
                    sqlcommand.Parameters.AddWithValue("Fnum", Label2.Text);
                    sqlcommand.Parameters.AddWithValue("Fliuyanneitong", TextBox2.Text);
                    sqlcommand.Parameters.AddWithValue("liuyantime", DateTime.Now.ToString());
                    sqlcommand.Parameters.AddWithValue("Uname", TextBox3.Text);
                    try
                    {
                        sqlconn.Open();
                        sqlcommand.ExecuteNonQuery();
                        Label3.Text = "留言成功";

                    }
                    catch (Exception ex)
                    {
                        Label3.Text = "错误原因:" + ex.Message;

                    }
                    finally
                    {
                        sqlcommand = null;
                        sqlconn.Close();
                        sqlconn = null;
                    }

                }
            
            
           
        }
        else
        {
            Label1.Text = "您的留言对象有误，请确定你留言的对象..";
        }
        

        

       

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        string strCon = "Data Source=.;Initial Catalog =managetelep;uid=sa;pwd=sa";
        SqlConnection sqlconn = new SqlConnection(strCon);
        SqlCommand sqlcommand = new SqlCommand();
        sqlcommand.Connection = sqlconn;

        string strsql = "select * from userss where Uname ='" + TextBox3.Text +  "'";
        SqlDataAdapter da = new SqlDataAdapter(strsql, sqlconn);
        DataSet ds = new DataSet();
        int count = da.Fill(ds, "userss");
        if (count > 0)
        {
            TextBox3.Text = ds.Tables["userss"].Rows[0]["Uname"].ToString();
            Label1.Text = " ";
        }
        else
        {
            Label1.Text = "请确定你留言的对象..";
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
      
        
    }
}