using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Void_Inc
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (var db = new VoidModel1Container())
            {
                var emailreturn =
                    (from d in db.Users
                     where d.Email == txtEmail.Text
                     select d.Email).SingleOrDefault();
                var passwordreturn =
                    (from r in db.Users
                     where r.Password == txtPassword.Text
                     select r.Password).SingleOrDefault();
                var teacherreturn =
                    (from a in db.Users
                     where a.Email == txtEmail.Text
                     select a.Teacher).SingleOrDefault();

                if (emailreturn != txtEmail.Text)
                {

                }
                else if (passwordreturn != txtPassword.Text)
                {

                }
                else
                {
                    Session["Email"] = txtEmail.Text;
                    Session["Teacher"] = teacherreturn;
                    Response.Redirect("Default.aspx?user=" + txtEmail.Text);
                }
            }
        }

            protected void btnSignUp_Click(object sender, EventArgs e)
            {
                Response.Redirect("SignUp.aspx");
            }
        }
    }
