using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditDB : System.Web.UI.Page
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
        if (Session["user"] == null)
            Response.Redirect("Home.aspx");
    }

    protected void submitEntry_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("INSERT INTO Books (ISBN, Author, Title, Availability) VALUES (" + isbnBox.Text + ",'" + authorBox.Text + "','" + titleBox.Text + "'," + 1 + ")");
            cmd.Connection = connection;
            connection.Open();
            cmd.ExecuteNonQuery();
            connection.Close();
        }catch(Exception ex)
        {
            Label4.Text = ex.Message;
        }
    }
}