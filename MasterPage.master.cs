using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie1 = Request.Cookies["cookie1"];
        if (cookie1 == null)
        {
            Response.Redirect("Mlogin.aspx");
        }
       
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
}
