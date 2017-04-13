using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class calendar : System.Web.UI.Page
{
    string[,] Events = new string[5, 2];

    protected void Page_Load(object sender, EventArgs e)
    {

        Events[0, 0] = "4/13/2017";
        Events[0, 1] = "Doctor Appointment";
        Events[1, 0] = "4/15/2017";
        Events[1, 1] = "Meeting with Advisor";
        Events[2, 0] = "5/5/2017";
        Events[2, 1] = "BirthDay Party ";
        Events[3, 0] = "5/5/2017";
        Events[3, 1] = "Call Addisu";
        Events[4, 0] = "5/15/2017";
        Events[4, 1] = "Register for Summer class";
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label.Text = "";
        
        string myDate = Calendar1.SelectedDate.ToShortDateString();

        for (int i = 0; i < 5; i++)
        {

            if (Events[i, 0].Equals(myDate))


            {

                Label.Text += Events[i, 1] + "<br />";
            }

        }

        if (Label.Text.Equals(""))
        {
            Label.Text = Calendar1.SelectedDate.ToShortDateString();
        }
    }
}