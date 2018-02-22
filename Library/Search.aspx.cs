using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            this.Page.MasterPageFile = "~/LibraryMaster2.master";
        }
        else
        {
            this.Page.MasterPageFile = "~/LibraryMaster.master";
        }

    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

}