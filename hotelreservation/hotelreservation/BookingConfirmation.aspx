<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="BookingConfirmation.aspx.cs" Inherits="hotelreservation.BookingConfirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
    <style type="text/css">
        .auto-style11 {
            width: 1251px;
        }
        .auto-style12 {
            width: 768px;
        }
        </style>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Registred user"></asp:Label>
                </td>
                <td class="auto-style5"></td>
                <td class="auto-style7">
                    <asp:Label ID="Label2" runat="server" Text="Guest Enter here"></asp:Label>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" Text="User id"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:Label ID="Label6" runat="server" Text="Guest Name"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" textMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:Label ID="Label7" runat="server" Text="Passport No"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Sign-Up</asp:LinkButton>
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button3" runat="server" Text="Log-In" OnClick="Button3_Click" />
                </td>
                <td class="auto-style11">
                    <asp:Label ID="Label8" runat="server" Text="Email  id"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox5" runat="server" Height="22px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label17" runat="server" ForeColor="Red" Text="Wrong User ID or Password !!" Visible="False"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Label ID="Label10" runat="server" Text="Check in date"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Checkin" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style7">
                    <asp:Label ID="Label12" runat="server" Text="Check out date"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Checkout" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="Label14" runat="server" Text="Room type"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Roomtype" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style7">
                    <asp:Label ID="Label15" runat="server" Text="No of Rooms"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Noofrooms" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style7">
                    <asp:Label ID="Label13" runat="server" Text="No of people"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label16" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" />
                </td>
            </tr>
        </table>



        



</asp:Content>
