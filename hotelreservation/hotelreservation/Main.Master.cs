using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotelreservation
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                welcome.Text = "Welcome  " + Convert.ToString(Session["MainName"])+"!";
            }
            else
            {
                welcome.Text = "Welcome Guest!!";
                welcome.Visible = false;
            }
        }
    }
}