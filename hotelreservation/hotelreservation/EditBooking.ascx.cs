using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotelreservation
{
    public partial class EditBooking : System.Web.UI.UserControl
    {
        public string TBookingID
        {
            get { return txtBookingID.Text ; }
            set { txtBookingID.Text=value;}
        }
         
        public string TEmail
        {
            get { return txtEmail.Text; }
            set { txtEmail.Text = value; }
        }

        public string Message {
            get { return message.Text; }
            set { message.Text = value; }
        }

        public event EventHandler Submit;
        protected void btnRetrieve_Click(object sender, EventArgs e)
        {
            Submit(this, e);   
        }
       

       
    }
}