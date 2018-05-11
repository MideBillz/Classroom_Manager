using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Void_Inc
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGrid();
        }

        protected void gvUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            using (VoidModel1Container db = new VoidModel1Container())

            {
                int UserId = Convert.ToInt32(gvUsers.DataKeys[e.RowIndex].Value);
                User user = db.Users.First(x => x.UserId == UserId);
                db.Users.Remove(user);
                db.SaveChanges();
                BindGrid();
            }

        }
        public void BindGrid()
        {

            using (VoidModel1Container db = new VoidModel1Container())
            {
                if (db.Users.Count() > 0)
                {
                    gvUsers.DataSource = (from u in db.Users
                                          select new
                                          {
                                              u.UserId,
                                              u.Name,
                                              u.Email,
                                              u.Subject,
                                              u.Score,
                                              u.Teacher

                                          }).ToList();
                    gvUsers.DataBind();
                }
                else
                {
                    gvUsers.DataSource = null;
                    gvUsers.DataBind();
                }
            }
        }

        protected void gvUsers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            {
                using (VoidModel1Container db = new VoidModel1Container())
                {
                    int UserId = Convert.ToInt32(gvUsers.DataKeys[e.RowIndex].Value);
                    User user = db.Users.First(x => x.UserId == UserId);
                    txtUserId.Text = Convert.ToString(user.UserId);
                    txtName.Text = user.Name;
                    txtEmail.Text = user.Email;
                    ddlSubjects.Text = user.Subject;
                    txtScore.Text= user.Score;
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageUser.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            using (VoidModel1Container db = new VoidModel1Container())
            {
                int UserId = Convert.ToInt32(txtUserId.Text);
                User u = db.Users.First(x => x.UserId == UserId);

                u.Score = txtScore.Text;
                db.SaveChanges();
                BindGrid();
            }
        }
        public void BindSearch()
        {
            using (VoidModel1Container db = new VoidModel1Container())

                if (db.Users.Count() > 0)
            {
                gvUsers.DataSource = (from u in db.Users
                                      where u.Email.Contains(txtSearch.Text) ||
                                      u.Subject.Contains(txtSearch.Text)||
                                      u.Name.Contains(txtSearch.Text)|| u.Teacher.Contains(txtSearch.Text)
                                      select new
                                      {
                                          u.UserId,
                                          u.Name,
                                          u.Email,
                                          u.Subject,
                                          u.Teacher,
                                          u.Score
                                      }).ToList();
                gvUsers.DataBind();

            }
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            BindSearch();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            BindGrid();
            txtSearch.Text = "";
        }

        //protected void gvUsers_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "Score")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);
        //        GridViewRow row = gvUsers.Rows[index];
        //        int UserId = Convert.ToInt32(gvUsers.DataKeys[index].Value);
        //        Response.Redirect("Score.aspx?userId= " + UserId);
        //    }
        }
    }
