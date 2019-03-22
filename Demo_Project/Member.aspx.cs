using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Demo_Project
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Sem_ProjectConnectionString1"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)

        {

        }

        public void Refress()

        {

            tb1.Text = "";

            tb2.Text = "";

            tb3.Text = "";

            tb6.Text = "";

            rbtnFemale.Checked = false;

            rbtnMale.Checked = true;

        }

        protected void BtnSave_Click(object sender, EventArgs e)

        {
            string Gender = "";

            if (rbtnFemale.Checked == true)

            {

                Gender = "Female";

            }

            if (rbtnMale.Checked == true)

            {

                Gender = "Male";

            }

            SqlCommand cmd = new SqlCommand("insert into Member(FirstName,LastName,Email,Gender,Contact) values('" + tb1.Text + "','" + tb2.Text + "','" + tb3.Text + "','" + Gender + "','" + tb6.Text + "')", con)
            {
                CommandType = CommandType.Text
            };

            try

            {

                con.Open();

                cmd.ExecuteNonQuery();

                l1.Text = "Data Inserted successfully";

                con.Close();

                Refress();

            }

            catch (Exception ex)

            {

                l1.Text = ex.Message;

            }

        }

        protected void Button1_Click(object sender, EventArgs e)

        {
            Refress();

            l1.Text = "";

        }


    }
}
