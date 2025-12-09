using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Success24v2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                //DataTable dt = Utility._GetDataTable("Select count(Title) as Total, count( distinct(Batch)) as Batch from [orbexcoi_rpa].Placement");
               // _LiteralSuccess.Text = Convert.ToString(dt.Rows[0][0]);
                //_LiteralBatch.Text = Convert.ToString(dt.Rows[0][1]);
                // _LiteralPrac.Text = Convert.ToString(Utility._GetDataTable("select count(ID) as Active from [orbexcoi_rpa].student where Active=1").Rows[0][0]);
               
            }
        }
    }
}