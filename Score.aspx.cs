using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Void_Inc
{
    public partial class Score : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int UserId = Convert.ToInt32(Request["userId"]);
            LoadUserDetail(UserId);
        }
        public void LoadUserDetail(int UserId)
        {
            using (VoidModel1Container db = new VoidModel1Container())
            {
                if (db.Users.Count() > 0)
                {
                    rptUser.DataSource = (from u in db.Users
                                          where u.UserId == UserId
                                          select new { u.Name, u.Email, u.Subject, u.Score }).ToList();
                    rptUser.DataBind();
                }
                else
                {
                    rptUser.DataSource = null; rptUser.DataBind();
                }
            }
        }
    }
}