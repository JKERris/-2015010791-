using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Threading;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
        
    }
    public void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";

        Label4.Text = "";

    }

    //static void Main(String[] args)
    //{
    //    Console.WriteLine("kljkkhkhjk");
    //}
    protected void Button1_Click(object sender, EventArgs e)
    {
         
        

        string strCon = "Data Source=.;Initial Catalog =managetelep;uid=sa;pwd=sa";
        SqlConnection sqlconn = new SqlConnection(strCon);
        SqlCommand sqlcommand = new SqlCommand();
        sqlcommand.Connection = sqlconn;

        string strsql = "select * from userss where Uname ='" + TextBox1.Text + "' and Upsd = '" + TextBox2.Text + "'";
        SqlDataAdapter da = new SqlDataAdapter(strsql, sqlconn);
        DataSet ds = new DataSet();

        int count = da.Fill(ds,"userss");
            if (count > 0)
            {

               
                
                
                Session["Uname"] = TextBox1.Text;
                Session["Upsd"] = TextBox2.Text;

                HttpCookie cookie1 = new HttpCookie("cookie1");
                cookie1.Value = TextBox2.Text;
                cookie1.Expires = DateTime.Now.AddDays(5);
                Response.AppendCookie(cookie1);

                
                
                
                //TextBox2.Text = ds.Tables["userss"].Rows[0]["Upsd"].ToString();
                //Label4.Text = " ";
                

                Response.Redirect("登录首页.aspx");


            }










        if (count > 0)
        {
            TextBox2.Text = ds.Tables["uerss"].Rows[0]["Upsd"].ToString();
            Label4.Text = "";
        }
        
         else  //if (!string.IsNullOrEmpty(TextBox2.Text.Trim()))
            {
                Label4.Text = "用户名或密码不正确";
            }
            
        


    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    
    
}