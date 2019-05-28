using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class CXfriendxinxi1 : System.Web.UI.Page
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

        string str1 = "select * from Friendtelephone1 where Friendname='" + TextBox1.Text + "'";
        sqlcommand.CommandText = "select * from Friendtelephone1 where Friendname=@Friendname";
        sqlcommand.Parameters.AddWithValue("@Friendname", TextBox1 .Text );

        SqlDataAdapter da1 = new SqlDataAdapter(str1, sqlconn);
        DataSet ds1 = new DataSet();
        int count = da1.Fill(ds1, "Friendtelephone1");
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = sqlcommand;
        DataSet ds = new DataSet();

        try
        {
            sqlconn.Open();
            da.Fill(ds, "Friendtelephone1");
            GridView1.DataSource = ds.Tables["Friendtelephone1"].DefaultView;
            GridView1.DataBind();
            Label1.Text = "查询成功";
        }
        catch
        {
            Label1.Text = "不符合输入条件，或者没有您输入的信息";
        }
        finally
        {
            sqlcommand = null;
            sqlconn.Close();
            sqlconn = null;
        }
        
        
       
        if (count > 0)
        {
            TextBox1.Text = ds1.Tables["Friendtelephone1"].Rows[0]["Friendname"].ToString();
            Label1.Text = "";

        }
        else
        {
            Label1.Text = "没有该朋友的姓名信息，请添加";
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        
    }
}