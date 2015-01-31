<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Food.aspx.cs" Inherits="hotelreservation.Food" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
           <style>
  #food {
            
            position:relative;
            left:120px;
            top:-10px;
            width: 702px;
            height: 246px;
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
        
    
    <p>
    </p>
    <p>
    </p>
 
    &nbsp;&nbsp;
            &nbsp;
    </div>
     <div>
     <div id="food">    
    
        
            &nbsp;&nbsp;<span style="color: darkred; font-family: 'Didot W01 Roman'; font-size: 25px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: 0.600000023841858px; line-height: 36px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; "><br />
            <u>Food & Dining:</u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
            </span>
            <p style="margin: 8px 0px; font-family: Arial; font-size: 15px; line-height: 18px; color: darkred; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Our hotel offers delicious food and drinks and the guests will be spoilt for wine-and-dine options.
                We have multicuisine restaurants that provides variety of dishes.</br></br>                          
                    Chinese</br> 
                    French</br> 
                    Indian</br> 
                    Western</br> 
            </p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
     
        &nbsp;&nbsp;&nbsp;</div>
        </div>      
    <p>
        &nbsp;</p>

</asp:Content>
