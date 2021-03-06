using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;
using System.Windows.Forms;

namespace Courseowork
{
    public partial class Fee : Page
    {
        string connectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            connectionString = " Data Source = XE; User ID = ADCoursework; Password = coursework; Unicode = True";


            using (OracleConnection con = new OracleConnection(connectionString))
            {
                try
                {
                    con.Open();
                    OracleCommand cmd = new OracleCommand("Insert into fee values('" + feeIdTB.Text + "','" + particularsTB.Text + "','" + amountTB.Text + "','" + academicYearTB.Text + "')", con);
                    cmd.ExecuteNonQuery();
                    feeIdTB.Text = "";
                    particularsTB.Text = "";
                    amountTB.Text = "";
                    academicYearTB.Text = "";

                    MessageBox.Show("Successfully Added!!!", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    Response.Redirect("Fee.aspx");

                }

                catch (OracleException)
                {
                    MessageBox.Show("Please Insert Correct Data !", "Wrong", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    feeIdTB.Text = "";
                    particularsTB.Text = "";
                    amountTB.Text = "";
                    academicYearTB.Text = "";

                }

            }
        }
    }
}