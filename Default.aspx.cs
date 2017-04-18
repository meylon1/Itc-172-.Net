using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void loginbutton_Click(object sender, EventArgs e)
    {

        int key = 0;
        BookReviewDbEntities db = new BookReviewDbEntities();
        int success = db.usp_ReviewerLogin(usertextbox.Text, passwordtextbox.Text);
        if (success != -1)


        {
            var uKey = (from K in db.Reviewers
                        where K.ReviewerUserName.Equals(usertextbox.Text)
                        select K.ReviewerKey).FirstOrDefault();

            key = (int)uKey;
            Session["userkey"] = key;
            ResultLabel.Text = " Helloooo" + key.ToString();


        }

        else {


            ResultLabel.Text = " Errrrr";
                
                
                }


        }
    }