using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo_Project
{
    public partial class WebForm5 : System.Web.UI.Page
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

            rbtnCardio.Checked = false;

            rbtnWeight.Checked = false;

        }

        protected void BtnSave_Click(object sender, EventArgs e)

        {
            string Type = "";

            if (rbtnCardio.Checked == true)

            {

                Type = "Cardio";

            }

            if (rbtnWeight.Checked == true)

            {

                Type = "Weight";

            }

            SqlCommand cmd = new SqlCommand("insert into Equipment(EquipmentName,Quantity,Type,Weight) values('" + tb1.Text + "','" + tb2.Text + "','" + Type + "','" + tb3.Text + "')", con)
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