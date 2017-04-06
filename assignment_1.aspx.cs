using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class assignment_1 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            string[] percents = { "10%", "15%", "20%", "other" };
            TipPercentsRadioButtonList.DataSource = percents;
            TipPercentsRadioButtonList.DataBind();

        }
    }
    protected void submitbutton_Click(object sender, EventArgs e)
    {
        GetTotals();
    }

    private void GetTotals()

    {
        double amount;
        Tip tip = null;

        bool goodamount = double.TryParse(MealTextBox.Text, out amount);
        if (goodamount)
        {
            double percent = 0;
            if (TipPercentsRadioButtonList.SelectedItem.Text != " other")
            {

                if (TipPercentsRadioButtonList.SelectedItem.Text.Equals("10%"))
                    percent = .1;
                if (TipPercentsRadioButtonList.SelectedItem.Text.Equals("15%"))
                    percent = .15;
                if (TipPercentsRadioButtonList.SelectedItem.Text.Equals("20%"))
                    percent = .2;
            }
            else
            {
                percent = double.Parse(othertextbox.Text);
                percent /= 100; //percent = percent
            }



            tip = new Tip(amount, percent);
        }

        else
        {
            Response.Write("<script>alert('enter a valid amount ');</script>");

        }


        resultlable.Text = "Amount:"

            + amount.ToString("$ #,##0.00") + " <br/>" + "Tax:"

            + tip.calculateTax().ToString("$ #,##0.00")

            + "<br/>" + "tip:" + tip.calculateTip().ToString("$ #,##0.00") + "<br/>" + "Total:"

              + tip.Total().ToString("$ #,##0.00");
    }
}
