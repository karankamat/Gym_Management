﻿using System;
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
    public partial class WebForm3 : System.Web.UI.Page
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

            tb4.Text = "";

            rbtnFemale.Checked = false;

            rbtnMale.Checked = true;

            rbtnTrainer.Checked = false;

            rbtnFloorManager.Checked = false;

            rbtnCleaningStaff.Checked = false;

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

            string Designation = "";

            if (rbtnTrainer.Checked == true)

            {

                Designation = "Trainer";

            }

            if (rbtnFloorManager.Checked == true)

            {

                Designation = "Floor Manager";

            }
            if (rbtnCleaningStaff.Checked == true)

            {

                Designation = "Cleaning Staff";

            }

            SqlCommand cmd = new SqlCommand("insert into Employee(FirstName,LastName,Email,Contact,Gender,Designation) values('" + tb1.Text + "','" + tb2.Text + "','" + tb3.Text + "','" + tb4.Text + "','" + Gender + "','" + Designation + "')", con)
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