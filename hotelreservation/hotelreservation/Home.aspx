<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="hotelreservation.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
     <style>
        #head1{
            align-content:center;
            font-size:25px;
        }
          #head2{
            font-size:25px;
            font-family:Gabriola;
            height: 42px;
            width: 269px;
        }

      
        .auto-style1 {
            width: 93%;
             margin-top: 0px;
         }
        .auto-style2 {
            width: 665px;
        }

         .auto-style11 {
             width: 741px;
         }

         .auto-style12 {
             width: 2834px;
         }

    .auto-style14 {
        width: 445px;
    }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <p id="head1" >
      <b><u>Welcome To Hotel Luxury</u></b>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style14">
                    <div class="divspace marginl20" style="margin: 0px 0px 0px 0px; padding: 0px; color:black; font-family: Roboto, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: 100; letter-spacing: normal; line-height: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                        <p style="font-size: 18px;"> Arrive To Escape
     </p>
                            <p class="margint2" style="margin: 11.625px 0px 15px; padding: 0px;">
                                Our hotel provides the right blend of service, luxury and quiet efficiency.
                                It has unparalleled levels of service, and has&nbsp; received innumerable awards and accolades.</p>
                            <p style="margin: 0px 0px 15px; padding: 0px;">
                                A distinctive feature of the hotel is their highly motivated and
                       well trained staff who provide exceptionally attentive, personalised and warm service. The hotel has established a reputation for redefining the paradigm of luxury and excellence in service amongst leisure hotels around the world.</p>
                            <p style="margin: 0px; padding: 0px;">
                                Our hotel has established a reputation for excellence and is acknowledged for offering quality and value and also combine state of the art facilities with dependable service in a caring environment, presenting the ideal choice for business and leisure travellers.</p>
                        </div>
                        </div>
                    </div>
                </td>
                <td class="auto-style11">
                    <asp:ScriptManager ID="ScriptManager1" runat="server"> </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Timer runat="server" Interval="2000" OnTick="Unnamed1_Tick"></asp:Timer>
                            <asp:Image ID="Image1" runat="server" Height="352px" style="margin-left: 75px; margin-top: -50px;margin-right:50px" Width="646px" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                   
                </td>
            </tr>
        </table>
        <br />
    </p>
</asp:Content>
