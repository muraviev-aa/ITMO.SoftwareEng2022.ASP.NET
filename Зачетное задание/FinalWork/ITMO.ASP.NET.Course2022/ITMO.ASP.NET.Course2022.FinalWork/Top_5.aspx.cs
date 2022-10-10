using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;

namespace ITMO.ASP.NET.Course2022.FinalWork
{
    public partial class Top_5 : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnectionStringBuilder bldr = new SqlConnectionStringBuilder();

            bldr.DataSource = @"(LocalDb)\MSSQLLocalDB";
            bldr.AttachDBFilename = @"D:\northwnd.mdf";
            bldr.IntegratedSecurity = true;

            connection.ConnectionString = bldr.ConnectionString;
            connection.Open();

            SqlCommand cmd = new SqlCommand("SELECT Id_user, First_name, Second_name, Average_score\r\nFROM Students\r\nORDER BY Average_score DESC\r\nOFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY", connection);
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);

            connection.Close();

            GridView1.DataSource = dt;
            GridView1.DataBind();

            if (IsPostBack)
            {
                Page.Validate();
                if (!Page.IsValid)
                {
                    return;
                }
            }
        }
    }
}