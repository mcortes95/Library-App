using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
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

    protected void LonginButton_Click(object sender, EventArgs e)
    {
        
        SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("Select password from Users where Username='" + uNameBox.Text + "'");
        cmd.Connection = connection;

        try
        {
            
            connection.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            String password = "";
            while (reader.Read())
            {
                password = reader["password"].ToString().Trim();
            }         
            if (pwordBox.Text == password&&password!="")
            {
                Session["user"] = uNameBox.Text;
                Response.Redirect("EditDB.aspx");
            }
            else
            {
                errorLabel.Text = "Username or password is incorrect.<br/>";
            }
            connection.Close();
        }
        catch(Exception ee)
        {
            Response.Write(ee.Message);
        }
    }
}