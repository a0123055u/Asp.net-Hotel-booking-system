<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs" Inherits="hotelreservation.Rooms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
           <style>
  #room {
            position:relative;
            left:227px;
            top:-156px;
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
         
   
        <asp:Image ID="Image1" runat="server" Height="300px" style="margin-top: 0px; margin-left: 1px;" Width="887px" />   
        
               </ContentTemplate>
    </asp:UpdatePanel>
        </p>
    <p>
    </p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
     &nbsp;&nbsp;<br class="Apple-interchange-newline" />
            <span style="color: black; font-family: 'Didot W01 Roman'; font-size: 25px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: 0.600000023841858px; line-height: 36px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;"><u>Rooms & Suites</u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
            </span>
    <p></p>
    <p></p>
    <div>    
    <asp:Image ID="Image2" runat="server" Height="153px" ImageUrl="~/Images/type/Single.jpg" Width="226px" />
        <div id="room">
             &nbsp;&nbsp;<br class="Apple-interchange-newline" />
            <span style="color: black; font-family: 'Didot W01 Roman'; font-size: 20px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: 0.600000023841858px; line-height: 36px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;"><u>Single Room</u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
            </span>
            <p style="margin: 8px 0px; font-family: Arial; font-size: 15px; line-height: 18px; color: black; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; ">
            Maximum  : 1 person<br />
           The Single Rooms features a comfortable queen sized bed with a mattress designed to give you restful sleep. 
             </p>
                 </div>
        &nbsp;&nbsp;&nbsp;</div>
              
    <p>
        &nbsp;</p>
    <div>
        <asp:Image ID="Image3" runat="server" Height="139px" ImageUrl="~/Images/type/double.jpg" Width="219px" />
         <div id="room">
              &nbsp;&nbsp;<br class="Apple-interchange-newline" />
            <span style="color: black; font-family: 'Didot W01 Roman'; font-size: 20px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: 0.600000023841858px; line-height: 36px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;"><u>Double Room</u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
            </span>
             <p style="margin: 8px 0px; font-family: Arial; font-size: 15px; line-height: 18px; color: black; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; ">
            Maximum  : 2 persons<br />
            The Double Rooms features a king-sized bed that gives you a feeling of sleep at home away from home. 
             </p>
                 </div>
             </div>
    <p>
        &nbsp;</p>
     <div>
        <asp:Image ID="Image4" runat="server" Height="139px" ImageUrl="~/Images/type/deluxe.jpg" Width="219px" />
         <div id="room">
              &nbsp;&nbsp;<br class="Apple-interchange-newline" />
            <span style="color: black; font-family: 'Didot W01 Roman'; font-size: 20px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: 0.600000023841858px; line-height: 36px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;"><u>Deluxe Suite</u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
            </span>
             <p style="margin: 8px 0px; font-family: Arial; font-size: 15px; line-height: 18px; color: black; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; ">
            Maximum  : 3 persons<br />
            The Deluxe Rooms feature the hotel’s distinctive modern design that cater to your business and
            relaxation needs with two king-sized beds.
                 </p>
      </div>
             </div>
    <p>
        &nbsp;</p>
      <div>
        <asp:Image ID="Image5" runat="server" Height="139px" ImageUrl="~/Images/type/superior.jpg" Width="219px" />
         <div id="room">
              &nbsp;&nbsp;<br class="Apple-interchange-newline" />
            <span style="color: black; font-family: 'Didot W01 Roman'; font-size: 20px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: 0.600000023841858px; line-height: 36px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;"><u>Superior Suite</u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
            </span>
             <p style="margin: 0px 0px 8px 0px; font-family: Arial; font-size: 15px; line-height: 18px; color: black; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; ">
            Maximum  : 5 persons<br />
            The Superior Rooms feature attractive views at 60 square metres with separate bedrooms and living spaces.</br>
            The suites come with both bathtubs and standing showers and guests can enjoy the minibar during their stay.
     </p>
                  </div>
             </div>
      <p>
        &nbsp;</p>
     

    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
  
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
