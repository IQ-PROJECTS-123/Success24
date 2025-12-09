using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Success24v2
{
    public partial class GDV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindGrid();
        }

        void BindGrid()
        {
            Utility._BindGridView(gdv, "SELECT * FROM RegistrationTable");
        }

        protected void btnedit_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;      // jis button ko click kiya
            string id = btn.CommandArgument;  // us row ki ID
            Response.Redirect("Register.aspx?id=" + id);
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            Utility.ExecuteQuery("DELETE FROM RegistrationTable WHERE ID=" + ((Button)sender).CommandArgument);
        }
    }
}
