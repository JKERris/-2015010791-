using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class XGPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = " ";
        TextBox2.Text = " ";
        TextBox3.Text = " ";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strCon = "Data Source=.;Initial Catalog =managetelep;uid=sa;pwd=sa";
        SqlConnection sqlconn = new SqlConnection(strCon);
        SqlCommand sqlcommand = new SqlCommand();
        sqlcommand.Connection = sqlconn;

        string strsql = "select * from userss where Upsd ='" + TextBox1.Text + "'and Uname='"+TextBox4 .Text +"'";
       
        SqlDataAdapter da = new SqlDataAdapter(strsql, sqlconn);
        DataSet ds = new DataSet();
        int count = da.Fill(ds, "userss");
        if (count > 0)
        {
            TextBox1.Text = ds.Tables["userss"].Rows[0]["Upsd"].ToString();
            Label1.Text = "";
            sqlcommand.CommandText = "update userss set Upsd=@Upsd where Uname=@Uname";
            sqlcommand.Parameters.AddWithValue("@Uname", TextBox4.Text);
            sqlcommand.Parameters.AddWithValue("@Upsd", TextBox2.Text);
            try
            {
                sqlconn.Open();
                sqlcommand.ExecuteNonQuery();
                Label2.Text = "已更改该用户的密码！";
                Label3.Text = "";
                Label1.Text = "";
            }
            catch (Exception ex)
            {
                Label2.Text = "错误原因：" + ex.Message;
            }
            finally
            {
                sqlcommand = null;
                sqlconn.Close();
                sqlconn = null;
            }
        }
        else
        {
            Label1.Text = "原密码输入不正确";
        }
        if (count > 0)
        {
            TextBox4.Text = ds.Tables["userss"].Rows[0]["Uname"].ToString();
            TextBox1.Text = ds.Tables["userss"].Rows[0]["Upsd"].ToString();
            Label3.Text = " ";
            Label1 .Text ="";
        }
        else  
        {
          
            Label1.Text = "用户名与密码不匹配";
            Label2.Text = "用户名与密码不匹配,请确认您的密码与用户名一致";
        }


     

        

    }
}