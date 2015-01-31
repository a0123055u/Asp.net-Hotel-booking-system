<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="HotelCancelling.aspx.cs" Inherits="hotelreservation.HotelCancelling" %>
<%@ Register src="EditBooking.ascx" tagname="EditBooking" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 414px;
        }
        .auto-style1 {
            height: 599px;
        }
        .auto-style14 {
            width: 266px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="auto-style1">
    <tr>
        <td class="auto-style2" style="background-color: #FFFFFF" >
            <uc1:EditBooking ID="EditBooking1" runat="server" />
        </td>
        <td class="auto-style3">
            <asp:Panel ID="PanelInfo" runat="server" Visible="False" Width="842px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="auto-style1">
                <tr>
                    <td class="auto-style14" colspan="2" style="border-bottom-style: groove; color: #99CCFF;font-size:larger"><em><strong>Guest Information</strong></em></td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label11" runat="server" Text="Name:"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:Label ID="labName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Passport No:"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:Label ID="labPss" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:Label ID="labEmail" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="Phone Number:"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:Label ID="labTel" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2" style="border-bottom-style: groove; color: #99CCFF;font-size:larger"><em><strong>Booking Information
                        </strong></em></td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="Check-In Date:"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:Label ID="labIN" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text="Check-Out Date:"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:Label ID="labOUT" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;&nbsp; Duration:&nbsp;</td>
                    <td class="auto-style11">
                        <asp:Label ID="labDuration" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text="Room Type:"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:Label ID="labRoomT" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label10" runat="server" Text="Number of Rooms:"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:Label ID="labRoomNo" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td class="auto-style11">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td class="auto-style11">
                        <asp:Button ID="btnDelete" runat="server" Text="Confirm Delete" style="text-align: right" OnClick="btnDelete_Click" OnClientClick="return confirm('Are you sure you want to delete?')"/>
                        &nbsp;&nbsp;&nbsp;<asp:Button ID="btnBack" runat="server" Text="Back" style="text-align: right" OnClick="btnBack_Click" />
                    </td>
                </tr>
            </table>
    </asp:Panel>
       </td>
    </tr>
</table>


</asp:Content>
