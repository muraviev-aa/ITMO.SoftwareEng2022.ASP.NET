using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITMO.ASP.NET.Course2022.FinalWork
{
    public partial class Main_Page : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            //The insert button is inactive until the average value of the score has been calculated
            InsertRow.Enabled = false;

            //The maximum number of input digits of ratings is one
            TextBox3.MaxLength = 1;
            TextBox4.MaxLength = 1;

            //Form a connection string
            SqlConnectionStringBuilder bldr = new SqlConnectionStringBuilder();
            bldr.DataSource = @"(LocalDb)\MSSQLLocalDB";
            bldr.AttachDBFilename = @"D:\northwnd.mdf";
            bldr.IntegratedSecurity = true;

            connection.ConnectionString = bldr.ConnectionString;

            connection.Open();

            if (IsPostBack)
            {
                Page.Validate();
                if (!Page.IsValid)
                    return;
            }
        }

        //Calculating the average score
        protected void AverageScore_Click(object sender, EventArgs e)
        {
            int x = Int32.Parse(TextBox3.Text);
            int y = Int32.Parse(TextBox4.Text);
            float a = ((float)x + (float)y) / 2;
            TextBox5.Text = Convert.ToString((a), System.Globalization.CultureInfo.GetCultureInfo("en-US"));
            InsertRow.Enabled = true;
        }

        //Сlearing the TextBox from previously entered values
        public void CleartextBoxes(Control parent)
        {
            foreach (Control c in parent.Controls)
            {
                if ((c.GetType() == typeof(TextBox)))
                {
                    ((TextBox)(c)).Text = "";
                }
                if (c.HasControls())
                {
                    CleartextBoxes(c);
                }
            }
        }

        //Inserting a completed row into a table
        protected void InsertRow_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO Students (First_name, Second_name, ASP_WEB, ASP_MVC, Average_score)"
                + "VALUES(@First_name, @Second_name, @ASP_WEB, @ASP_MVC, @Average_score)", connection);

            cmd.Parameters.AddWithValue("@First_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Second_name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@ASP_WEB", TextBox3.Text);
            cmd.Parameters.AddWithValue("@ASP_MVC", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Average_score", TextBox5.Text);

            cmd.ExecuteNonQuery();
            connection.Close();
            GridView1.DataBind();

            //Сlearing the TextBox
            CleartextBoxes(this);
        }
    }
}