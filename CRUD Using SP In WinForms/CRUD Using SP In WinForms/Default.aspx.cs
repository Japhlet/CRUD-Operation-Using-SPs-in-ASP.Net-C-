using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD_Using_SP_In_WinForms
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conn = "";
            conn = ConfigurationManager.ConnectionStrings["Conn"].ToString();
            SqlConnection objSqlConnection = new SqlConnection(conn);

            try
            {
                objSqlConnection.Open();

                DataSet ds = new DataSet();

                SqlCommand objSqlCmd = new SqlCommand("usp_ListProperties", objSqlConnection);
                objSqlCmd.CommandType = CommandType.StoredProcedure;

                SqlParameter property_id = objSqlCmd.Parameters.Add("@PropertyID", SqlDbType.Int);
                property_id.Value = 0;

                SqlDataAdapter objAdapter = new SqlDataAdapter(objSqlCmd);
                objAdapter.Fill(ds);

                GridRetrieveProperties.DataSource = ds;
                GridRetrieveProperties.DataBind();

            } catch(Exception ex)
            {
                Response.Write(ex.Message.ToString());
            } finally
            {
                objSqlConnection.Close();
            }
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void BtnInsert_Click(object sender, EventArgs e)
        {
            string conn = "";
            conn = ConfigurationManager.ConnectionStrings["Conn"].ToString();
            SqlConnection objSqlConnection = new SqlConnection(conn);

            try
            {
                if(TxtPropertyName.Text != "")
                {
                    objSqlConnection.Open();
                    SqlCommand objSqlCmd = new SqlCommand("usp_AddPropertyListing", objSqlConnection);
                    objSqlCmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter property_id = objSqlCmd.Parameters.Add("@PropertyID", SqlDbType.Int);
                    property_id.Direction = ParameterDirection.Output;

                    SqlParameter property_name = objSqlCmd.Parameters.Add("@PropertyName", SqlDbType.NVarChar);
                    property_name.Value = TxtPropertyName.Text;

                    SqlParameter property_address = objSqlCmd.Parameters.Add("@PropertyAddress", SqlDbType.NVarChar);
                    property_address.Value = TxtPropertyAddress.Text;

                    SqlParameter property_price = objSqlCmd.Parameters.Add("@PropertyPrice", SqlDbType.Money);
                    property_price.Value = TxtPropertyPrice.Text;

                    SqlParameter available_units = objSqlCmd.Parameters.Add("@AvailableUnits", SqlDbType.NVarChar);
                    available_units.Value = TxtAvailableUnits.Text;

                    objSqlCmd.ExecuteNonQuery();

                    //ClearAll();
                    Response.Redirect("Default.aspx");

                    OutputLabel.Text = "Record saved successfully. ID = " + property_id.Value.ToString();
                }
            } catch(Exception ex)
            {
                Response.Write(ex.Message.ToString());
            } finally
            {
                objSqlConnection.Close();
            }
        }
    }
}