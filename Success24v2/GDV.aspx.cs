using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

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
            Utility._BindGridView(gdv, "SELECT * FROM RegistrationTable ORDER BY ID DESC");
        }

        protected void btnedit_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string id = btn.CommandArgument;
            Response.Redirect("Register.aspx?id=" + id);
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string id = btn.CommandArgument;

            Utility.ExecuteQuery("DELETE FROM RegistrationTable WHERE ID=" + id);

            BindGrid(); // refresh after delete
        }
    }
}
