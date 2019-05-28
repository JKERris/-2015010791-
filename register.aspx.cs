using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = " ";
        TextBox2.Text = " ";
        TextBox3.Text = " ";
        TextBox4.Text = " ";
        TextBox5.Text = " ";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strCon = "Data Source=.;Initial Catalog =managetelep;uid=sa;pwd=sa";
        SqlConnection sqlconn = new SqlConnection(strCon);
        SqlCommand sqlcommand = new SqlCommand();
        sqlcommand.Connection = sqlconn;

        string strsql = "select * from userss where Uname='" + TextBox1.Text + "'";
        SqlDataAdapter da = new SqlDataAdapter(strsql, sqlconn);
        DataSet ds = new DataSet();
        int count = da.Fill(ds, "userss");
        
        if (count > 0)
        {
            TextBox1.Text = ds.Tables["userss"].Rows[0]["Uname"].ToString();
            Label2.Text = "该用户已经存在 "; 

        }
        else
        {

           

            sqlcommand.CommandText = "insert into userss (Uname,Upsd,Uproblem,Uanswer)values(@Uname,@Upsd,@Uproblem,@Uanswer)";

            sqlcommand.Parameters.AddWithValue("@Uname", TextBox1.Text);
            sqlcommand.Parameters.AddWithValue("@Upsd", TextBox2.Text);
            sqlcommand.Parameters.AddWithValue("@Uproblem", TextBox4.Text);
            sqlcommand.Parameters.AddWithValue("@Uanswer", TextBox5.Text);

            try
            {
                sqlconn.Open();
                sqlcommand.ExecuteNonQuery();
                Label1.Text = "注册成功";
                Session["预留问题"] = TextBox4.Text;
            }
            catch (Exception ex)
            {
                Label1.Text = "错误原因" + ex.Message;

            }
            finally
            {
                sqlcommand = null;
                sqlconn.Close();
                sqlconn = null;
            }
        }

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}