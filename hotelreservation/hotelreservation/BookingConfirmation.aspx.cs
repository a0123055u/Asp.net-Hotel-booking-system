using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Web.Configuration;

namespace hotelreservation
{
    public partial class BookingConfirmation : System.Web.UI.Page
    {
        int numgen;
        String x1;
        int noofroom;
        int []avai=new int[30];
        int non;
        protected void Page_Load(object sender, EventArgs e)
        {
            Noofrooms.Text = Convert.ToString(Session["noofrooms"]);
            noofroom = Convert.ToInt16(Noofrooms.Text);
            Checkin.Text = Convert.ToString(Session["checkindate"]);
            Checkout.Text = Convert.ToString(Session["checkout"]);
            Roomtype.Text = Convert.ToString(Session["roomtype"]);
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

            login login = (login)Session["user"];
            if(login!=null)
            {
                userdetail detail = (userdetail)Session["userdetail"];
                TextBox3.Text = detail.name;
                TextBox4.Text = detail.passportno;
                TextBox5.Text = detail.email_phoneno;
                
                Label2.Text = "Member Infromation";
                Label6.Text = "Member Name";

                Label17.Visible = false;
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

       
            public void sendemail(string toEmail, string Subject, string Body)
            {
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("team8hotel@gmail.com");
                msg.To.Add(new MailAddress(toEmail));
                msg.Subject = Subject;
                msg.Body = Body;

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 25;
                //	    smtp.Port = 587;
                smtp.Credentials = new NetworkCredential("team8hotel@gmail.com", "hotelreservation");
                smtp.EnableSsl = true;

                try
                {
                    smtp.Send(msg);
                }
                catch (SmtpException err)
                {
                    System.Web.HttpContext.Current.Response.Write(err.Message);
                }
            }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (HotelReservationEntities3 hr = new HotelReservationEntities3())
            {
                for (int i = 0; i < noofroom; i++)
                {
                    if (noofroom < numgen)
                    {
                        var booking1 = (from a in hr.bookings
                                        select a).ToList();
                        int idgen = booking1.Count;
                        booking bk = new booking();
                        int no = idgen;
                        //no++;
                        //bk.bookingid = "bk" + no;
                        var check = (from x in hr.bookings
                                     select x.bookingid).ToList();
                        List<int> listid = new List<int>();
                        foreach (String strbookingid in check)
                        {
                            int x = Convert.ToInt32(strbookingid.Substring(2));
                            listid.Add(x);

                        }
                        int maxid = listid.Max();
                        maxid++;
                        bk.bookingid = "bk" + maxid;
                        bk.name = TextBox3.Text;
                        //bk.Phone = TextBox6.Text;
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
                            bk.noofpeople = 2;
                            hr.bookings.Add(bk);
                            hr.SaveChanges();
                           //updating availablity table
                          
                            avai[i] = numgen;
                                                       
                            numgen--;
                            
                        }
                            
                        else if(type.Equals("s"))
                        {

                            int temp2 = 20 - numgen;
                            temp2++;
                            bk.roomno = Roomtype.Text + temp2;
                            bk.noofpeople = 1;
                            hr.bookings.Add(bk);
                            hr.SaveChanges();

                            avai[i] = numgen;
                            numgen--;
                           
                        }
                        else if (type.Equals("du"))
                        {
                            int temp2 = 20 - numgen;
                            temp2++;
                            bk.roomno = Roomtype.Text + temp2;
                            bk.noofpeople = 3;
                            hr.bookings.Add(bk);
                            hr.SaveChanges();
                            avai[i] = numgen;
                            numgen--;
                           
                        }
                        else if (type.Equals("su"))
                        {
                            int temp2 = 20 - numgen;
                            temp2++;
                            bk.roomno = Roomtype.Text + temp2;
                            bk.noofpeople = 5;
                            hr.bookings.Add(bk);
                            hr.SaveChanges();
                            avai[i] = numgen;
                            numgen--;

                        }
                        else { }


                        //Jade

                        var avail2 = from x in hr.availablities
                                     where x.dateofavailablity >= bk.datecheckin && x.dateofavailablity <= bk.datecheckout //&& x.roomsavailable >= afterRoomAmounts
                                     && x.roomid == Roomtype.Text
                                     select x;
                        foreach (availablity a in avail2)
                        {
                            a.roomsavailable -= 1;
                        }
                        hr.SaveChanges();

                        //Thiru
                        //var availablity1 = (from a in hr.availablities
                        //                    select a).ToList();
                        //int idgen1 = availablity1.Count;

                        //int avgen = idgen1;
                        //avgen++;
                        //non = avai.Min();
                        //if (type.Equals("s"))
                        //{
                           
                            
                        //    availablity av = new availablity();
                           
                        //    av.roomsavailable = non;
                        //    av.availablityid = "av"+avgen;
                        //    av.dateofavailablity = Convert.ToDateTime(Checkin.Text);
                        //    av.roomid = "s";
                        //    hr.availablities.Add(av);
                        //    hr.SaveChanges();
                        //}
                        //else if (type.Equals("d"))
                        //{
                           
                        //    availablity av = new availablity();
                           
                        //    av.roomsavailable = non;
                        //    av.availablityid = "av" + avgen;
                        //    av.dateofavailablity = Convert.ToDateTime(Checkin.Text);
                        //    av.roomid = "d";
                        //    hr.availablities.Add(av);
                        //    hr.SaveChanges();
                        //}
                        //else if (type.Equals("du"))
                        //{
                            
                        //    availablity av = new availablity();
                           
                        //    av.roomsavailable = non;
                        //    av.availablityid = "av"+avgen;
                        //    av.dateofavailablity = Convert.ToDateTime(Checkin.Text);
                        //    av.roomid = "s";
                        //    hr.availablities.Add(av);
                        //    hr.SaveChanges();
                        //}
                        //else if (type.Equals("su"))
                        //{
                          
                        //    availablity av = new availablity();
                           
                        //    av.roomsavailable = non;
                        //    av.availablityid = "av"+avgen;
                        //    av.dateofavailablity = Convert.ToDateTime(Checkin.Text);
                        //    av.roomid = "su";
                        //    hr.availablities.Add(av);
                        //    hr.SaveChanges();
                        //}
                        if (numgen == 0)
                            break;
                        String display ="Successfully Booked !!! Thank you for booking at our hotel. You will receive mail about the confirmation." ;

                        ClientScript.RegisterStartupScript(this.GetType(),"Message" , "alert('" + display + "')", true);

                        String toEmail=TextBox5.Text;

                        String subject="Booking Confirmation.";

                        String body="Successfully booked.";

                        sendemail(toEmail, subject, body);
                    }

                }

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            using (HotelReservationEntities3 db = new HotelReservationEntities3())
            {
                var login = db.logins.Find(TextBox1.Text);
                if (login != null)
                {
                    if (login.passsword.Trim() == TextBox2.Text.Trim())
                    {
                        Session["user"] = login;

                        HotelReservationEntities3 context= new HotelReservationEntities3();

                        var query= from x in context.userdetails
                                   where x.userid==login.userid
                                   select x;


                        userdetail detail = query.First(); 
                        TextBox3.Text = detail.name;
                        Session["MainName"] = detail.name;
                        TextBox4.Text = detail.passportno;
                        TextBox5.Text = detail.email_phoneno;

                        Session["userdetail"] = detail;
                        Label2.Text = "Member Infromation";
                        Label6.Text = "Member Name";
                        
                        Label17.Visible = false;
                        //Response.Redirect("");
                    }
                    else
                    {
                        Label17.Visible = true;
                    }

                }
                else
                    Label17.Visible = true;
            }

            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistrationForm.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["MainName"] = "Welcome Guest !!";
        }
    }
}