using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotelreservation
{
    public partial class HotelChanging : System.Web.UI.Page
    {
        protected void Page_Load(object sender,EventArgs e)
        {
            EditBooking2.Message = string.Empty;
            EditBooking2.Submit+=new EventHandler(EditBooking1_RetrieveButton);
            
        }
       

        void EditBooking1_RetrieveButton(object sender,EventArgs e)
        {

            if (showBookingInformation())
            {
                //lblAfterChange.Visible = false;
               // lblHasBooking.Visible = false;
                EditBooking2.Message = string.Empty;
            }
            else EditBooking2.Message = "No record has been found !";

        }      
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible == true)
                Calendar1.Visible = false;
            else Calendar1.Visible = true;      
        }

        //protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        //{
        //    txtCheckInDate.Text = Calendar1.SelectedDate.ToShortDateString();
        //    Calendar1.Visible = false;
        //    checkDateAvailability();
        //}

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar2.Visible == true)
                Calendar2.Visible = false;
            else Calendar2.Visible = true;
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            txtCheckOutDate.Text = Calendar2.SelectedDate.ToShortDateString();
            Calendar2.Visible = false;
            checkDateAvailability();
        }
        protected void cancelButton_Click(object sender, EventArgs e)
        {
            showBookingInformation();
            Calendar1.Visible = false;
            Calendar2.Visible = false;
            testLabel.Visible = false;
            confirmChangeButton.Enabled = true;
        }
        protected void confirmChangeButton_Click1(object sender, EventArgs e)
        {
            changeBooking();
            infoPanel.Visible = false;
           // lblAfterChange.Visible = true;
            EditBooking2.Message = "Record changed Successfully !";
            testLabel.Visible = false;
            EditBooking2.TBookingID = string.Empty;
            EditBooking2.TEmail = string.Empty;
        }  
        private Boolean showBookingInformation()
        {

            lblBookingId.Text = EditBooking2.TBookingID;
            txtPhoneNo.Text = EditBooking2.TEmail;
            HotelReservationEntities3 h = new HotelReservationEntities3();
     
            var book = from x in h.bookings
                       where x.bookingid == EditBooking2.TBookingID && x.email == EditBooking2.TEmail
                       select x;
            booking b1 = book.FirstOrDefault();
            if(book.FirstOrDefault()!=null)
            {
                RegularExpressionValidator2.Visible = false;
                 txtName.Text = b1.name;
            txtPassportNo.Text = b1.passportno;
            txtEmail.Text = b1.email;
            txtPhoneNo.Text = b1.Phone;
            txtCheckInDate.Text = b1.datecheckin.ToShortDateString();
            txtCheckOutDate.Text = b1.datecheckout.ToShortDateString();
            int range = b1.datecheckout.DayOfYear - b1.datecheckin.DayOfYear + 1;
            if (range >= 0)
                lblDurantionOut.Text = range.ToString();
            else lblDurantionOut.Text = "0";
            string roomType = "";
            switch (b1.roomid)
            {
                case "s": roomType = "Single";
                    break;
                case "d": roomType = "Double";
                    break;
                case "du": roomType = "Deluxe";
                    break;
                case "su":roomType="Superior";
                    break;
            }
            lblRoomType.Text = roomType;
            lblNumberOfRoom.Text = b1.roomno.ToString();
            var room = from x in h.roomfacilities
                       where x.roomid == b1.roomid
                       select x;
            roomfacility rm = room.FirstOrDefault();
            lblPrice.Text = "$" + rm.roomrent.ToString() + " per room";
            lblTotal.Text = "$" + (rm.roomrent *range).ToString();
            infoPanel.Visible = true;
            return true;
            }
            else
            {

                return false;
            }
           
        }
        private void checkDateAvailability()
        {
            DateTime checkIn = Convert.ToDateTime( txtCheckInDate.Text);
            DateTime checkOut = Convert.ToDateTime(txtCheckOutDate.Text);//Calendar2.SelectedDate;
            String roomtypr = lblRoomType.Text;
            int roomAmounts = 1;
            HotelReservationEntities3 h = new HotelReservationEntities3();
            string roomType = "";
            switch (lblRoomType.Text)
            {
                case "Single": roomType = "s";
                    break;
                case "Double": roomType = "d";
                    break;
                case "Deluxe": roomType = "du";
                    break;
                case "Superior": roomType = "su";
                    break;
            }
            var avail = from x in h.availablities
                        where x.dateofavailablity >= checkIn && x.dateofavailablity <= checkOut && x.roomsavailable >= roomAmounts
                        && x.roomid==roomType
                        select x; 
           
            int range = checkOut.DayOfYear - checkIn.DayOfYear+1;
           // int range = checkOut.Date.Day - checkIn.Date.Day+1;
            if (avail.FirstOrDefault() == null || avail.ToArray().Length != range)
            {
                confirmChangeButton.Enabled = false;
                var notAvail = from x in h.availablities
                               where x.dateofavailablity >= checkIn && x.dateofavailablity <= checkOut && x.roomsavailable < roomAmounts
                               && x.roomid == roomType
                               select x;
                string message = "";

                foreach (availablity a in notAvail)
                {
                    message += a.dateofavailablity.ToShortDateString()+" ";
                }
                if (range >= 1)
                    testLabel.Text = "Sorry! " + message + " is not available ";
                else testLabel.Text = "Please choose vaild date !";
                testLabel.Visible = true;       
            }
            else
            {
                confirmChangeButton.Enabled = true;
                testLabel.Text = "It is available ! ";
                testLabel.Visible = true;
              
            }
            if (range >= 1)
            {
                lblDurantionOut.Text = range.ToString();
                calculateCost(range);
            }
            else lblDurantionOut.Text = "0";
           
        }
       
        private void changeBooking()
        {
            lblBookingId.Text = EditBooking2.TBookingID;

            HotelReservationEntities3 h = new HotelReservationEntities3();
            var book = from x in h.bookings
                       where x.bookingid == EditBooking2.TBookingID && x.email == EditBooking2.TEmail
                       select x;
            booking b1 = book.FirstOrDefault();
            string roomType = "";
            switch (lblRoomType.Text)
            {
                case "Single": roomType = "s";
                    break;
                case "Double": roomType = "d";
                    break;
                case "Deluxe": roomType = "du";
                    break;
                case "Superior": roomType = "su";
                    break;
            }
            
           // int beforeRoomAmounts = Convert.ToInt32(lblNumberOfRoom.Text);
            var avail = from x in h.availablities
                        where x.dateofavailablity >= b1.datecheckin && x.dateofavailablity <= b1.datecheckout //&& x.roomsavailable >= beforeRoomAmounts
                        && x.roomid == roomType
                        select x;
            foreach (availablity a in avail)
            {
                a.roomsavailable +=1;
            }
            b1.name = txtName.Text;
            b1.passportno = txtPassportNo.Text;
            b1.email = txtEmail.Text;          
            b1.Phone = txtPhoneNo.Text;
           // lblAfterChange.Text = txtPhoneNo.Text;
            b1.datecheckin = Convert.ToDateTime(txtCheckInDate.Text);
            b1.datecheckout = Convert.ToDateTime(txtCheckOutDate.Text);
           
            b1.roomid = roomType;
            lblNumberOfRoom.Text = "1";
            var room = from x in h.roomfacilities
                       where x.roomid == b1.roomid
                       select x;
            roomfacility rm = room.FirstOrDefault();
            lblPrice.Text = "$" + rm.roomrent.ToString() + " per room";
            lblTotal.Text = "$" + (rm.roomrent ).ToString();
            //int afterRoomAmounts = Convert.ToInt32(lblNumberOfRoom.Text);
            var avail2 = from x in h.availablities
                        where x.dateofavailablity >= b1.datecheckin && x.dateofavailablity <= b1.datecheckout //&& x.roomsavailable >= afterRoomAmounts
                        && x.roomid == roomType
                        select x; 
            foreach(availablity a in avail2)
            {
                a.roomsavailable -= 1;
            }
            h.SaveChanges();
        }
        private void calculateCost(int range)
        {
            lblBookingId.Text = EditBooking2.TBookingID;

            HotelReservationEntities3 h = new HotelReservationEntities3();
            var book = from x in h.bookings
                       where x.bookingid == EditBooking2.TBookingID && x.email == EditBooking2.TEmail
                       select x;
            booking b1 = book.FirstOrDefault();
            string roomType = "";
            switch (lblRoomType.Text)
            {
                case "Single": roomType = "s";
                    break;
                case "Double": roomType = "d";
                    break;
                case "Deluxe": roomType = "du";
                    break;
                case "Superior": roomType = "su";
                    break;
            }
            b1.roomid = roomType;
            lblNumberOfRoom.Text ="1";
            var room = from x in h.roomfacilities
                       where x.roomid == b1.roomid
                       select x;
            roomfacility rm = room.FirstOrDefault();
            lblPrice.Text = "$" + rm.roomrent.ToString() + " per room";
            lblTotal.Text = "$" + (rm.roomrent *range).ToString();
        }

        protected void backButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/");
        }

        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {
            txtCheckInDate.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
            checkDateAvailability();
        }
    }
}