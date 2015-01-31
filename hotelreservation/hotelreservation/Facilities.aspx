<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Facilities.aspx.cs" Inherits="hotelreservation.Facilities" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        #fac {
            position:relative;
            left:229px;
            top:-132px;
            width: 500px;
            height: 59px;
          
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick">
        </asp:Timer>
         
   
        <asp:Image ID="Image4" runat="server" Height="300px" style="margin-top: 0px; margin-left: 1px;" Width="871px" />   
        
               </ContentTemplate>
    </asp:UpdatePanel>
        </p>
      &nbsp;&nbsp;<br class="Apple-interchange-newline" />
            <span style="color: black; font-family: 'Didot W01 Roman'; font-size: 25px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: 0.600000023841858px; line-height: 36px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; "><u>Facilities:</u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
            </span></br></br>
     <div>
        <asp:Image ID="Image1" runat="server" Height="139px"  ImageUrl="~/Images/facilitytype/pool.jpg" Width="219px" />
         <div id="fac">
           <p style="margin: 8px 0px; font-family: Arial; font-size: 15px; line-height: 18px; color: black; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; ">
          Guests at the hotel can enjoy and relax at the roof-top pool which has a luxurious bar nearby.
           </p>
               </div>
             </div>
     <p>
         &nbsp;</p>

     <div>
        <asp:Image ID="Image2" runat="server" Height="139px" ImageUrl="~/Images/facilitytype/gym.jpg" Width="219px" />
         <div id="fac">
          <p style="margin: 8px 0px; font-family: Arial; font-size: 15px; line-height: 18px; color: black; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; ">
          Our hotel provides a state-of-the-art gym that helps the guests to do their</br>daily workouts
          and maintain fitness even when they away from their home.
          </p>
      </div>
             </div>
     <p>
        &nbsp;</p>

    <div>
        <asp:Image ID="Image3" runat="server" Height="139px" ImageUrl="~/Images/facilitytype/spa.jpg" Width="219px" />
         <div id="fac">
             <p style="margin: 8px 0px; font-family: Arial; font-size: 15px; line-height: 18px; color: black; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; ">
           The spa at our hotel  features rejuvenating massage and facial services,</br>
           along with our signature body treatments, refresh and relax your mind and body.
                 </p>
      </div>
             </div>
     <p>
        &nbsp;</p>
</asp:Content>
