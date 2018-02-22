using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_PreInit(object sender,EventArgs e)
    {
        if (Session["user"] != null)
        {
            this.Page.MasterPageFile = "~/LibraryMaster2.master";
            //Master.FindControl("welcomeLabel").


        }
        else
        {
            this.Page.MasterPageFile = "~/LibraryMaster.master";
        }

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie context = Request.Cookies["UserSetting"];
        if(context != null)
        {
            Label1.Text = "The user's favorite book is " + context["Name"];
        }
        else
        {
            Label1.Text = "No Cookie is found.";
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        HttpCookie context = Request.Cookies["UserSetting"];
        if(context == null)
        {
            context = new HttpCookie("UserSetting");
        }
        context["Name"] = DropDownList1.SelectedValue.ToString();
        context.Expires = DateTime.Now.AddDays(1d);
        Response.Cookies.Add(context);
    }
}