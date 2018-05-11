using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
namespace Void_Inc
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Email"] != null)
            {
                LoadUserType();
                btnLogOut.Visible = true;
            }
        }
      
        public void LoadUserType()
        {
            if (Session["Teacher"].ToString() == "Yes")
            {
                lnkManageUser.Visible = true;
                lnkStudentInfo.Visible = true;
               
            }
            else if (Session["Teacher"].ToString() == "No")
            {
                lnkStudentInfo.Visible = true;
            }
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            FormsAuthentication.SignOut();
            Response.Redirect("Login.aspx");
        }
    }
}