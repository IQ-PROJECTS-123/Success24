using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Success24v2
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Request.QueryString["id"];

                if (!string.IsNullOrEmpty(id))
                {
                    ViewState["ID"] = id;       // UPDATE MODE
                    LoadData(id);
                }
                else
                {
                    ViewState["ID"] = "";       // INSERT MODE
                }
            }
        }

        void LoadData(string id)
        {
            DataTable dt = Utility._GetDataTable(
                "SELECT * FROM RegistrationTable WHERE ID=" + id);

            if (dt.Rows.Count > 0)
            {
                DataRow r = dt.Rows[0];

                txtname.Text = r["Name"].ToString();

                DateTime dob;
                if (DateTime.TryParse(r["DOB"].ToString(), out dob))
                    txtdob.Text = dob.ToString("yyyy-MM-dd");

                txtyear.SelectedValue = r["GYear"].ToString();
                txtgq.Text = r["GQualification"].ToString();
                txtmq.Text = r["MQualification"].ToString();
                txtmgy.SelectedValue = r["MGYear"].ToString();
                txtmob.Text = r["PMobile"].ToString();
                txtwhtsap.Text = r["Whatsapp"].ToString();
                txtmobsec.Text = r["SMobile"].ToString();
                txtemail.Text = r["Email"].ToString();
                txtfather.Text = r["FName"].ToString();
                txtguardian.Text = r["GName"].ToString();
                txtrelationship.Text = r["GRelation"].ToString();
                txtgcontact.Text = r["GCNumber"].ToString();
                txtaddress.Text = r["FCAddress"].ToString();
                txtpaddress.Text = r["FPAddress"].ToString();
                ddknow.SelectedValue = r["KnowUs"].ToString();
                txtreferee.Text = r["Referee"].ToString();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlParameter[] pCommon = {
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
                new SqlParameter("@Referee", txtreferee.Text)
            };

            // 🟢 INSERT CONDITION
            if (string.IsNullOrEmpty(ViewState["ID"]?.ToString()))
            {
                Utility.ExecuteQuery(@"
                    INSERT INTO RegistrationTable 
                    (Name, DOB, GYear, GQualification, MQualification, MGYear,
                     PMobile, Whatsapp, SMobile, Email, FName, GName, GRelation,
                     GCNumber, FCAddress, FPAddress, KnowUs, Referee)
                    VALUES
                    (@Name, @DOB, @GYear, @GQualification, @MQualification, @MGYear,
                     @PMobile, @Whatsapp, @SMobile, @Email, @FName, @GName, @GRelation,
                     @GCNumber, @FCAddress, @FPAddress, @KnowUs, @Referee)
                ", false, pCommon);
            }
            else
            {
                // 🟢 UPDATE
                SqlParameter[] pUpdate = new SqlParameter[pCommon.Length + 1];
                pCommon.CopyTo(pUpdate, 0);
                pUpdate[pCommon.Length] = new SqlParameter("@ID", ViewState["ID"]);

                Utility.ExecuteQuery(@"
                    UPDATE RegistrationTable SET
                        Name=@Name, DOB=@DOB, GYear=@GYear, GQualification=@GQualification,
                        MQualification=@MQualification, MGYear=@MGYear, PMobile=@PMobile,
                        Whatsapp=@Whatsapp, SMobile=@SMobile, Email=@Email, FName=@FName,
                        GName=@GName, GRelation=@GRelation, GCNumber=@GCNumber,
                        FCAddress=@FCAddress, FPAddress=@FPAddress, KnowUs=@KnowUs,
                        Referee=@Referee
                    WHERE ID=@ID
                ", false, pUpdate);
            }

            Response.Redirect("GDV.aspx");
        }
    }
}
