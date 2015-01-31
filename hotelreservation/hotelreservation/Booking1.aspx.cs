using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotelreservation
{
    public partial class Booking1 : System.Web.UI.Page
    {
        int numgen;
        String x1;
         int noofroom;
        protected void Page_Load(object sender, EventArgs e)
        {
           Noofrooms.Text= Convert.ToString(Session["noofrooms"]);
            noofroom = Convert.ToInt16(Noofrooms.Text);
           Checkin.Text=Convert.ToString( Session["checkindate"]);
           Checkout.Text=Convert.ToString( Session["checkout"]);
            Roomtype.Text= Convert.ToString( Session["roomtype"]);
            x1 = Roomtype.Text;
           // Noofpeople.Text = Convert.ToString(Session["noofpeople"]);
          // String x1 = Convert.ToString(Session["roomnum"]);
          // String x2 = x1;
            
           // Label16.Text = Convert.ToString(Session["roomnum"]);
           numgen = Convert.ToInt16(Session["roomnum"]);
          //x1=Request.Cookies["roomnum"].Value;
          //numgen = Convert.ToInt16(x1);
           if (x1.Equals("s"))
           {
               Label16.Text = " 1 person/room";
           }
           else if (x1.Equals("d"))
           {
               Label16.Text = " 2 person/room";
           }
           else if (x1.Equals("du"))
           {
               Label16.Text = " 3 person/room";
           }
           else if (x1.Equals("su"))
           {
               Label16.Text = " 5 person/room";
           }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (HotelReservationEntities3 hr = new HotelReservationEntities3())
            {
                for(int i=0;i<noofroom;i++)
                {
                    if (noofroom < numgen)
                    {
                        var booking1 = (from a in hr.bookings
                                        select a).ToList();
                        int idgen = booking1.Count;
                        booking bk = new booking();
                        int no = idgen;
                        no++;
                        bk.bookingid = "bk" + no;
                        bk.name = TextBox3.Text;
                        bk.Phone = TextBox6.Text;
                        bk.passportno = TextBox4.Text;
                        bk.email = TextBox5.Text;
                        bk.datecheckin = Convert.ToDateTime(Checkin.Text);
                        bk.datecheckout = Convert.ToDateTime(Checkout.Text);
                        //bk.noofpeople = Convert.ToInt16(Noofpeople.Text);
                        bk.roomid = Roomtype.Text;
                        string type = Roomtype.Text;
                        if (type.Equals("d"))
                        {
                            int temp1 = 60 - numgen;
                            temp1++;
                            bk.roomno = Roomtype.Text + temp1;
                            hr.bookings.Add(bk);
                            hr.SaveChanges();
                            numgen--;
                            
                                
                        }
                        else
                        {
                            int temp2 = 20 - numgen;
                            temp2++;
                            bk.roomno = Roomtype.Text + temp2;
                            hr.bookings.Add(bk);
                            hr.SaveChanges();
                            numgen--;
                        }
                        if (numgen == 0)
                            break;
                    }
                   
                }

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}