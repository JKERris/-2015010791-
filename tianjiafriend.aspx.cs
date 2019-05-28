using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class tianjiafriend : System.Web.UI.Page
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
         
        string strsql = "select * from Friendtelephone1 where Friendname='"+TextBox1 .Text+ "'";

        sqlcommand.CommandText = "insert into Friendtelephone1(Friendname,Friendnum,FriendEmail,Friendpsd,FriendSex)values(@Friendname,@Friendnum,@FriendEmail,@Friendpsd,@FriendSex)";
        sqlcommand .Parameters .AddWithValue ("@Friendname",TextBox1 .Text );
        sqlcommand .Parameters .AddWithValue ("@FriendSex",CheckBoxList1 .Text  );

        sqlcommand .Parameters .AddWithValue ("@Friendnum",TextBox2 .Text );
        sqlcommand .Parameters .AddWithValue ("@FriendEmail",TextBox3 .Text );
        sqlcommand.Parameters.AddWithValue("@Friendpsd", TextBox2.Text);

        SqlDataAdapter da = new SqlDataAdapter(strsql, sqlconn);
        DataSet ds = new DataSet();
        int count = da.Fill(ds, "Friendtelephone1");
        if (count > 0)
        {
            TextBox1.Text = ds.Tables["Friendtelephone1"].Rows[0]["Friendname"].ToString();
            
            Label2.Text = "该朋友已经存在，请重新输入名字";
        }
        else
        {
            try
            {
                sqlconn.Open();
                sqlcommand.ExecuteNonQuery();
                Label3.Text = "添加好友成功";
            }
            catch (Exception ex)
            {
                Label3.Text = "错误原因：" + ex.Message;
            }
            finally
            {
                sqlcommand = null;
                sqlconn.Close();
                sqlconn = null;
            }
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("登录首页.aspx");
    }

   
}