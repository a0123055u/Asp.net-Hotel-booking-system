using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotelreservation
{
    public partial class Search : System.Web.UI.Page
    {
        int passing;
        protected void Page_Load(object sender, EventArgs e)
        {

            DropDownList1.Items.Add("s");
            DropDownList1.Items.Add("d");
            DropDownList1.Items.Add("du");
            DropDownList1.Items.Add("su");
            DropDownList2.Items.Add("1");
            DropDownList2.Items.Add("2");
            DropDownList2.Items.Add("3");

            




        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            DateTime find = Convert.ToDateTime(TextBox1.Text);
            DateTime find1 = Convert.ToDateTime(TextBox2.Text);
            String temp = DropDownList1.SelectedItem.ToString();
            BookingControl book = new BookingControl();
            Label7.Visible = true;
            Label7.Text = book.search(find, find1, temp);
            if (Label7.Text ==""||Label7.Text.Equals(null))
            {
                Label7.Text = "Couldn't find the search.Enter proper date ";
                Label7.ForeColor = System.Drawing.Color.Red;
          }
            else
            {
                int checkbooking = Convert.ToInt16(Label7.Text);
                if (checkbooking > 1)
                {
                    Button2.Visible = true;
                    Label7.ForeColor = System.Drawing.Color.Blue;
          
                }

                else
                {
                    Button2.Visible = false;
                }
            }
        }




        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            TextBox2.Text = Calendar2.SelectedDate.ToShortDateString();
            Calendar2.Visible = false;
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Calendar2.Visible = true;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["noofrooms"] = DropDownList2.Text;
            Session["checkindate"] = TextBox1.Text;
            Session["checkout"] = TextBox2.Text;
            Session["roomtype"] = DropDownList1.Text;
            //Session["noofpeople"] =Label9.Text;
            Session["roomnum"] = Label7.Text;
            // Response.Cookies["roomnum"].Value = Label7.Text;
            Response.Redirect("BookingConfirmation.aspx");

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Label7.Text = DropDownList1.Text;
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date.CompareTo(DateTime.Today) < 0)
            {
                e.Day.IsSelectable = false;
            }
        }

        protected void Calendar2_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date.CompareTo(DateTime.Today) < 0)
            {
                e.Day.IsSelectable = false;
            }
        }
    }
}