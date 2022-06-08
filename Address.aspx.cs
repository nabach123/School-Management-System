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
    public partial class Address : Page
    {
        string connectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        [Obsolete]
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            connectionString = " Data Source = XE; User ID = ADCoursework; Password = coursework; Unicode = True";


            using (OracleConnection con = new OracleConnection(connectionString))
            {
                try
                {
                    con.Open();
                    OracleCommand cmd = new OracleCommand("Insert into address values('" + addressIdTB.Text + "','" + countryTB.Text + "','" + cityTB.Text + "','" + streetNumberTB.Text + "', '" + streetNameTB.Text + "')", con);
                    cmd.ExecuteNonQuery();
                    addressIdTB.Text = "";
                    countryTB.Text = "";
                    cityTB.Text = "";
                    streetNumberTB.Text = "";
                    streetNameTB.Text = "";
                   
                    MessageBox.Show("Successfully Added!!!", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    Response.Redirect("Address.aspx");

                }

                catch (OracleException)
                {
                    MessageBox.Show("Please Insert Correct Data !", "Wrong", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    addressIdTB.Text = "";
                    countryTB.Text = "";
                    cityTB.Text = "";
                    streetNumberTB.Text = "";
                    streetNameTB.Text = "";


                }


            }
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}