using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace hotelreservation
{
    public class BookingControl
    {
         String r1;
        public String search(DateTime find,DateTime find1, String temp)
        {
          
            int[] remaining = new int[30];
           
            int i = 0;
            //int diff= Convert.ToInt16(find1-find);
            if (find < find1)
            {
                using (HotelReservationEntities3 hr = new HotelReservationEntities3())
                {
                    for (DateTime check = find; check < find1; check = check.AddDays(1))
                    {

                        var book = (from b in hr.bookings
                                    where b.roomid == temp && b.datecheckin == find
                                    select b).ToList();
                        // booking bbb = book.FirstOrDefault<booking>();
                        if ((book.Count == 0) && (temp.Equals("s")) || (book.Count == 0) && (temp.Equals("su")) || (book.Count == 0) && (temp.Equals("du")))
                        {
                            remaining[i] = 20;
                            i++;
                            availablity aa = new availablity();
                            var check1 = (from x in hr.availablities
                                         select x.availablityid).ToList();
                            List<int> listid = new List<int>();
                            foreach (String strbookingid in check1)
                            {
                                int x = Convert.ToInt32(strbookingid.Substring(2));
                                listid.Add(x);

                            }
                            int maxid = listid.Max();
                            maxid++;
                            aa.availablityid = "av" +maxid;
                            aa.dateofavailablity = find;
                            aa.roomid = "s";
                            aa.roomsavailable = 19;
                            hr.availablities.Add(aa);
                            hr.SaveChanges();
                            

                        }
                        else if ((book.Count == 0) && (temp.Equals("d")))
                        {
                            remaining[i] = 60;
                            i++;
                            availablity aa = new availablity();
                            var check1 = (from x in hr.availablities
                                          select x.availablityid).ToList();
                            List<int> listid = new List<int>();
                            foreach (String strbookingid in check1)
                            {
                                int x = Convert.ToInt32(strbookingid.Substring(2));
                                listid.Add(x);

                            }
                            int maxid = listid.Max();
                            maxid++;
                            aa.availablityid = "av" + maxid;
                            aa.dateofavailablity = find;
                            aa.roomid = "s";
                            aa.roomsavailable = 19;
                            hr.availablities.Add(aa);
                            hr.SaveChanges();
                        }
                        else if ((book.Count > 0) && (temp.Equals("d")))
                        {

                            remaining[i] = 60 - book.Count;
                            // String r= remaining.ToString();
                            // Label7.Text= r;

                            //var avi =( from a in hr.availablities
                            //          where a.roomid == temp && a.dateofavailablity == find
                            //          select a).ToList();
                            //   if((avi.Count>0)&&(temp.Equals("d")))
                            //{

                            //}
                            //    availablity aa = avi.FirstOrDefault<availablity>();
                            //    String r = aa.roomsavailable.ToString();
                            //    Label7.Text = r;
                            i++;
                        }
                        else if ((book.Count > 0) && (temp.Equals("su")) || (book.Count > 0) && (temp.Equals("du")) || (book.Count > 0) && (temp.Equals("s")))
                        {
                            remaining[i] = 20 - book.Count;
                            // String r1 = remaining.ToString();
                            i++;
                            // Label7.Text = r1;
                        }
                        else
                        r1 = "Coun't find the search";
              

                    }
                    //passing = Convert.ToInt16(remaining.Max());
                    r1 = Convert.ToString(remaining.Max());
                   

                }
            }
            return r1;   
        }
        
    }




     
}