using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotelreservation
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            using (var db = new HotelReservationEntities3())
            {
                login login = new login();
                login.userid = txtuname.Text;
                login.passsword = txtpassword.Text;

                userdetail user = new userdetail();
                user.userid = txtuname.Text;
                user.name = txtname.Text;
                user.passportno = txtnirc.Text;
                user.email_phoneno = txtemail.Text;

                db.logins.Add(login);
                db.SaveChanges();
                db.userdetails.Add(user);
                db.SaveChanges();

                Session["user"] = login;
                Session["userdetail"] = user;

                Response.Redirect("BookingConfirmation.aspx");
            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookingConfirmation.aspx");
        }
    }
}