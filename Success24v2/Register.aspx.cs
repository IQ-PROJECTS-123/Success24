using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Success24v2
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                // Always set ViewState ID
                ViewState["ID"] = Request.QueryString["id"];
            }

            if (!IsPostBack)
            {
               
                if (ViewState["ID"] != null)
                {
                    LoadData(ViewState["ID"].ToString());
                }
            }
        }

        void LoadData(string id)
        {
            DataTable dt = Utility._GetDataTable("SELECT * FROM RegistrationTable WHERE ID=" + id);

            if (dt.Rows.Count > 0)
            {
                txtname.Text = dt.Rows[0]["Name"].ToString();
                DateTime dob;
                if (DateTime.TryParse(dt.Rows[0]["DOB"].ToString(), out dob))
                {
                    txtdob.Text = dob.ToString("yyyy-MM-dd"); // for input type="date"
                }

                string gYear = dt.Rows[0]["GYear"].ToString();

                if (txtyear.Items.FindByValue(gYear) != null)
                {
                    txtyear.ClearSelection();
                    txtyear.Items.FindByValue(gYear).Selected = true;
                }

                txtgq.Text = dt.Rows[0]["GQualification"].ToString();
                txtmq.Text = dt.Rows[0]["MQualification"].ToString();

                string mgYear = dt.Rows[0]["MGYear"].ToString();

                if (txtmgy.Items.FindByValue(mgYear) != null)
                {
                    txtmgy.ClearSelection();
                    txtmgy.Items.FindByValue(mgYear).Selected = true;
                }

                txtmob.Text = dt.Rows[0]["PMobile"].ToString();
                txtwhtsap.Text = dt.Rows[0]["Whatsapp"].ToString();
                txtmobsec.Text = dt.Rows[0]["SMobile"].ToString();
                txtemail.Text = dt.Rows[0]["Email"].ToString();
                txtfather.Text = dt.Rows[0]["FName"].ToString();
                txtguardian.Text = dt.Rows[0]["GName"].ToString();
                txtrelationship.Text = dt.Rows[0]["GRelation"].ToString();
                txtgcontact.Text = dt.Rows[0]["GCNumber"].ToString();
                txtaddress.Text = dt.Rows[0]["FCAddress"].ToString();
                txtpaddress.Text = dt.Rows[0]["FPAddress"].ToString();

                string knowUs = dt.Rows[0]["KnowUs"].ToString();

                if (ddknow.Items.FindByValue(knowUs) != null)
                {
                    ddknow.ClearSelection();
                    ddknow.Items.FindByValue(knowUs).Selected = true;
                }

                txtreferee.Text = dt.Rows[0]["Referee"].ToString();

                // store ID
                ViewState["ID"] = id;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlParameter[] p = {
        new SqlParameter("@Name", txtname.Text),
        new SqlParameter("@DOB", txtdob.Text),
        new SqlParameter("@GYear", txtyear.SelectedValue),
        new SqlParameter("@GQualification", txtgq.Text),
        new SqlParameter("@MQualification", txtmq.Text),
        new SqlParameter("@MGYear", txtmgy.SelectedValue),
        new SqlParameter("@PMobile", txtmob.Text),
        new SqlParameter("@Whatsapp", txtwhtsap.Text),
        new SqlParameter("@SMobile", txtmobsec.Text),
        new SqlParameter("@Email", txtemail.Text),
        new SqlParameter("@FName", txtfather.Text),
        new SqlParameter("@GName", txtguardian.Text),
        new SqlParameter("@GRelation", txtrelationship.Text),
        new SqlParameter("@GCNumber", txtgcontact.Text),
        new SqlParameter("@FCAddress", txtaddress.Text),
        new SqlParameter("@FPAddress", txtpaddress.Text),
        new SqlParameter("@KnowUs", ddknow.SelectedValue),
        new SqlParameter("@Referee", txtreferee.Text),
        new SqlParameter("@ID", ViewState["ID"])
        };

           
            if (ViewState["ID"] == null)
            {
                // INSERT
                Utility.ExecuteQuery("INSERT INTO RegistrationTable (Name, DOB, GYear, GQualification, MQualification, MGYear, PMobile, Whatsapp, SMobile, Email, FName, GName, GRelation, GCNumber, FCAddress, FPAddress, KnowUs, Referee) " +"VALUES (@Name, @DOB, @GYear, @GQualification, @MQualification, @MGYear, @PMobile, @Whatsapp, @SMobile, @Email, @FName, @GName, @GRelation, @GCNumber, @FCAddress, @FPAddress, @KnowUs, @Referee)",false,p);
            }
            else
            {
                // UPDATE FIXED
                Utility.ExecuteQuery(@"UPDATE RegistrationTable SET Name=@Name, DOB=@DOB, GYear=@GYear, GQualification=@GQualification,MQualification=@MQualification, MGYear=@MGYear, PMobile=@PMobile,Whatsapp=@Whatsapp, SMobile=@SMobile, Email=@Email, FName=@FName,GName=@GName, GRelation=@GRelation, GCNumber=@GCNumber,FCAddress=@FCAddress, FPAddress=@FPAddress, KnowUs=@KnowUs,Referee=@Referee WHERE ID=@ID",false,p);
            }

            Response.Redirect("GDV.aspx");
        }


    }
}
