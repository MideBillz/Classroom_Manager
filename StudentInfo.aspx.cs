using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Void_Inc
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGrid();
        }


        public void BindGrid()
        {

            using (VoidModel1Container db = new VoidModel1Container())
            {
                if (db.Users.Count() > 0)
                {
                    gvUserInfo.DataSource = (from u in db.Users
                                          select new
                                          {
                                              u.UserId,
                                              u.Name,
                                              u.Email

                                          }).ToList();

                    gvUserInfo.DataBind();
                }
                else
                {
                    gvUserInfo.DataSource = null;
                    gvUserInfo.DataBind();
                }
            }
        }

        protected void gvUserInfo_RowCommand(object sender, GridViewCommandEventArgs e)
        {
               if (e.CommandName == "Score")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gvUserInfo.Rows[index];
                int UserInfoId = Convert.ToInt32(gvUserInfo.DataKeys[index].Value);
                Response.Redirect("Score.aspx?userId= " + UserInfoId);
            }
        }
    }
}