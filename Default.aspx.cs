using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        user.Text = Session["Uname"].ToString();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Mlogin.aspx");
    }

    protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
    {

    }

    protected void UserName_TextChanged(object sender, EventArgs e)
    {

    }

    protected void LoginStatus1_LoggingOut(object sender, LoginCancelEventArgs e)
    {
        Response.Redirect("Mlogin.aspx");
    }

    protected void PasswordRecovery1_SendingMail(object sender, MailMessageEventArgs e)
    {

    }

    protected void UserName_TextChanged1(object sender, EventArgs e)
    {
        
    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        
    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        
    }

    protected void UserName_TextChanged2(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        if (Uname.Text=="user"&&Upsd.Text=="psd")
        {
            Session["Uname"] = Uname.Text;
            Session["Upsd"] = Upsd.Text;
            Response.Redirect("login.aspx");
        }
    }
}