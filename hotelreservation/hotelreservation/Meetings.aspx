<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Meetings.aspx.cs" Inherits="hotelreservation.Meetings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Content/Style.css" type="text/css" />
      <style>
           #meet {            
            position:relative;
            left:116px;
            top:-43px;
            width: 702px;
            height: 177px;
        }
  body{
      font:bold;
  }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick">
        </asp:Timer>   
        <asp:Image ID="Image1" runat="server" Height="469px" style="margin-top: 0px; margin-left: 1px;" Width="873px" />   
        
               </ContentTemplate>
    </asp:UpdatePanel>
        
    </p>
    <p>
    </p>
    <p>
    </p>
 
    &nbsp;&nbsp;
    </p>
    </div>
     <div>
     <div id="meet">    
    
        
            &nbsp;&nbsp;<br class="Apple-interchange-newline" />
            <span style="color: black; font-family: 'Didot W01 Roman'; font-size: 25px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: 0.600000023841858px; line-height: 36px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;"><u>Business Meetings:</u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
            </span>
            <p style="margin: 8px 0px; font-family: Arial; font-size: 15px; line-height: 18px; color: black; font-style:normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Every aspect of our hotel has been designed to pave the way toward business success. Our hotel offers an exclusive and efficient setting for all manner of meetings and business events.
                We have all manner of technology to make your plans a reality, including extensive audio-visual and projection equipment and superb video-conferencing facilities. And to ensure that everything runs smoothly, we have Techno Butlers on hand to solve all last minute glitches.</p>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
     
        &nbsp;&nbsp;&nbsp;</div>
        </div>      
    <p>
        &nbsp;</p>

    <div>
     <div id="meet">    
    
        
            &nbsp;&nbsp;<br class="Apple-interchange-newline" />
            <span style="color: black; font-family: 'Didot W01 Roman'; font-size: 25px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: 0.600000023841858px; line-height: 36px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; "><u>Weddings and Events :</u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
            </span>
            <p style="margin: 8px 0px; font-family: Arial; font-size: 15px; line-height: 18px; color: black; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; ">
               
             Whether you're hosting an intimate cocktail party or a wonderful wedding reception, we promise to make your day memorable, whatever the occasion.        
             We offer one of the most stunning settings,enhanced by our impeccable service and excellent facilities         
             We have created five special wedding themes that couples can customise for their big day. Relating to all aspects of design including the style of cutlery, the type of flowers used and the linens, these themes offer something to suit every taste.</p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
     
        &nbsp;&nbsp;&nbsp;</div>
        </div>   
</asp:Content>
