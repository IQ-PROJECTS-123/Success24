using System;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Success24v2
{
    public partial class GIT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string query = "INSERT INTO GIT(Name, Email, Phone, Message) VALUES ('"
                   + txtName.Text + "', '"
                   + txtEmail.Text + "', '"
                   + txtMobile.Text + "', '"
                   + txtMessage.Text + "')";

            Utility.ExecuteQuery(query); // Utility class used

            txtName.Text = txtEmail.Text = txtMobile.Text = txtMessage.Text = ""; // clear inputs

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Message Saved Successfully!');", true);
        }
    }
}