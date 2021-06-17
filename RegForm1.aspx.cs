using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace FruitCity
{
    public partial class RegForm1 : System.Web.UI.Page
    {
        private String ProductDate;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        private Random randomly;
        private String getID;

      
        protected void Page_Load(object sender, EventArgs e)
        {

            con.Open();
            CreateID();
            ProductDate = TextBox5.Text = DateTime.Now.ToString();



        }
        public void CreateID()
        {
            randomly = new Random();
            for (int i = 0; i < 1000; i++)
            {
                TextBox1.Text = "" + randomly.Next(1, 10000);
            }
        }
        public void AddItems()
        {

            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" & TextBox4.Text != "")
            {
                SqlCommand cmd = new SqlCommand("insert into register values('" + TextBox1.Text + "', '" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "' ,'" + ProductDate + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Label2.Text = "Data has been inserted";
                // ScriptManager.RegisterStartupScript(this.GetType(), "script", "alert('Successfully Inserted ')");
                GridView1.DataBind();
                CreateID();
                ClearText2();

            }
            else
            {
                CreateID();
                ClearText2();

            }


        }
        public void Update()
        {

            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" & TextBox4.Text != "")
            {
                SqlCommand cmd = new SqlCommand("update  register set FruitName='" + TextBox2.Text + "', FruitPrice='" + TextBox3.Text + "', Quantity='" + TextBox4.Text + "' where Id ='" + getID + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Label2.Text = "Data has been Updated";

                GridView1.DataBind();

                CreateID();
            }
            else
            {
                CreateID();
                ClearText2();

            }

        }

        public void ClearText()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            // LoadRecord();
        }
        public void ClearText2()
        {

            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";



        }
        public void LoadRecord()
        {
            SqlCommand cmd = new SqlCommand("Select * from register", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            //  GridView1.DataBind();

        }


        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text != " " && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "")
            {

                AddItems();

            }

            else
            {
                Label2.Text = "The Fields Are Empty ! ";
                CreateID();
                ClearText2();

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Update();
            //GridView1.DataBind();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public void CheckID()
        {
            if (TextBox1.Text != "")
            {
                TextBox1.Text = getID;
                Update();
                GridView1.DataBind();

            }
            else

            {
            }
        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

    }
}

