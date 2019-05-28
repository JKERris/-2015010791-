using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class forfetPSD : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strCon = "Data Source=.;Initial Catalog =managetelep;uid=sa;pwd=sa";
        SqlConnection sqlconn = new SqlConnection(strCon);
        SqlCommand sqlcommand = new SqlCommand();
        sqlcommand.Connection = sqlconn;

        string strsql = "select * from userss where Uname='"+txtName .Text +"'";
        SqlDataAdapter da = new SqlDataAdapter(strsql, sqlconn);
        DataSet ds = new DataSet();
        int count = da.Fill(ds,"userss");
        
        if (count > 0)
        {
            
            if (txtAnswer.Text != ds.Tables["userss"].Rows[0]["Uanswer"].ToString())
            {
                labAnswer.Text = "提示问题答案出错，请再次输入答案..";
            }
            else
            {
                
                labCode.Text = ds.Tables["userss"].Rows[0]["Upsd"].ToString();
                labAnswer.Text = " ";
            }
        }
        else
        {
            labName.Text = "没有这个用户";

        }



    }
    //protected void TextBox1_TextChanged(object sender, EventArgs e)
    //{
    //    string strCon = "Data Source=.;Initial Catalog =managetelep;uid=sa;pwd=sa";
    //    SqlConnection sqlconn = new SqlConnection(strCon);
    //    SqlCommand sqlcommand = new SqlCommand();
    //    sqlcommand.Connection = sqlconn;

    //    string strsql = "select * from userss where Uname='" + TextBox1.Text + "'";
    //    SqlDataAdapter da = new SqlDataAdapter(strsql, sqlconn);
    //    DataSet ds = new DataSet();
    //    int count = da.Fill(ds, "userss");
    //    if (count > 0)
    //    {
    //        TextBox2.Text = ds.Tables["userss"].Rows[0]["Uproblem"].ToString();
    //        Label2.Text = " ";
    //    }
    //    else
    //    {
    //        Label2.Text = "没有这个用户";
    //    }
    //}
    //protected void TextBox2_TextChanged(object sender, EventArgs e)
    //{

    //    string strCon = "Data Source=.;Initial Catalog =managetelep;uid=sa;pwd=sa";
    //    SqlConnection sqlconn = new SqlConnection(strCon);
    //    SqlCommand sqlcommand = new SqlCommand();
    //    sqlcommand.Connection = sqlconn;

    //    string strsql = "select * from userss where Uname='" + TextBox1.Text + "'";
    //    SqlDataAdapter da = new SqlDataAdapter(strsql, sqlconn);
    //    DataSet ds = new DataSet();
    //    int count = da.Fill(ds, "userss");
    //    if (count > 0)
    //    {
    //        TextBox2.Text = ds.Tables["userss"].Rows[0]["Uproblem"].ToString();

    //        Label5.Text = " ";
    //    }
    //    else
    //    {
    //        Label5.Text = "问题输入有误";
    //    }
    //}





    
}