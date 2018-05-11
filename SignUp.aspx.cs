using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Void_Inc
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            using (VoidModel1Container db = new VoidModel1Container())
            {

                var option = "";
                if (rdYes.Checked == true)
                {
                    option = "Yes";
                }
                else if (rdNo.Checked == true)
                {
                    option = "No";
                }
                else
                {
                    option = "No";
                }

                var u = new User();
                u.Name = txtName.Text;
                u.Email = txtEmail.Text;
                u.Password = txtPassword.Text;
                u.Confirm = txtConfirm.Text;
                u.Subject= Convert.ToString(ddlSubjects.SelectedValue);
                u.Teacher = option;

                db.Users.Add(u);
                db.SaveChanges();

            }
        }
    }
}