using System;
using System.Configuration;
using System.Data.SqlClient;

namespace FruitCity
{
    public partial class customer : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            // CreateID();
        }

        [Obsolete]
        public void checkUser()
        {
            Response.Redirect("RegForm1.aspx");
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                string Command = "SELECT Id FROM user WHERE Username = @Username AND Password = @Password;";
                using (SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    myConnection.Open();
                    using (SqlCommand myCommand = new SqlCommand(Command, myConnection))
                    {
                        myCommand.Parameters.Add("@Username", TextBox1.Text);
                        myCommand.Parameters.Add("@Password", TextBox2.Text);
                        // return myCommand.ExecuteScalar() != null;
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            checkUser();
        }
    }
}

    
    