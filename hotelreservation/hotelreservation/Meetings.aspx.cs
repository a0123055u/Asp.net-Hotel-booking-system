using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotelreservation
{
    public partial class Meetings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                setImageUrl1();

            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            setImageUrl1();
        }

        private void setImageUrl1()
        {
            if (ViewState["ImageDisplayed"] == null)
            {
                Image1.ImageUrl = "~/Images/meetings/1.jpg";
                ViewState["ImageDisplayed"] = 1;
            }

            else
            {
                int i = (int)ViewState["ImageDisplayed"];
                if (i == 4)
                {
                    Image1.ImageUrl = "~/Images/meetings/1.jpg";
                    ViewState["ImageDisplayed"] = 1;
                }
                else
                {
                    i = i + 1;
                    Image1.ImageUrl = "~/Images/meetings/" + i.ToString() + ".jpg";
                    ViewState["ImageDisplayed"] = i;
                }

            }
        }
    }
}