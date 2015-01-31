using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotelreservation
{
    public partial class HotelCancelling : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EditBooking1.Message = string.Empty;
            EditBooking1.Submit += new EventHandler(Retrieve_Submit);
        }

        void Retrieve_Submit(object sender, EventArgs e)
        {    
            HotelReservationEntities3 h = new HotelReservationEntities3();
            var book = from x in h.bookings
                       where x.bookingid ==EditBooking1.TBookingID
                       && x.email ==EditBooking1.TEmail
                       select x;
            if (book.FirstOrDefault()!=null)
            {
                booking b = book.FirstOrDefault();
                PanelInfo.Visible = true;
                labName.Text = b.name;
                labPss.Text = b.passportno;
                labEmail.Text = b.email;
                labTel.Text = b.Phone;
                labIN.Text = b.name;
                labOUT.Text = b.datecheckin.ToString("dd/MM/yyyy");
                labIN.Text = b.datecheckout.ToString("dd/MM/yyyy");
                labDuration.Text = (b.datecheckout.Date.Day - b.datecheckin.Date.Day).ToString();
                if (b.roomid == "s")
                    labRoomT.Text = "Single room";
                else if (b.roomid == "d")
                    labRoomT.Text = "Double room";
                else if (b.roomid == "su")
                    labRoomT.Text = "Superior";
                else if (b.roomid == "du")
                    labRoomT.Text = "Deluxe";
                labRoomNo.Text = "1";
            }
            else
            {
                EditBooking1.Message = "No Record has been found";
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (HotelReservationEntities3 dele = new HotelReservationEntities3())
            {
                var Delebook = (from x in dele.bookings
                                where x.bookingid == EditBooking1.TBookingID
                                && x.email == EditBooking1.TEmail
                                select x).First();
                if (Delebook != null)
                {
                    dele.bookings.Remove(Delebook);
                    dele.SaveChanges();
                    Clear();
                    EditBooking1.Message = "Record Deleted Successfully";
                }
            } 
        }

        public void Clear()
        {
            labName.Text = string.Empty;
            labPss.Text = string.Empty;
            labEmail.Text = string.Empty;
            labTel.Text = string.Empty;
            labIN.Text = string.Empty;
            labOUT.Text = string.Empty;
            labIN.Text = string.Empty;
            labDuration.Text = string.Empty;
            labRoomT.Text = string.Empty;
            labRoomNo.Text = string.Empty;
            EditBooking1.TBookingID = string.Empty;
            EditBooking1.TEmail = string.Empty;
            PanelInfo.Visible = false;
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/homepage.html");
        }

       

     
    
    
    }
}