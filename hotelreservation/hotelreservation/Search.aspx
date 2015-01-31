<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="hotelreservation.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
    <style type="text/css">
    .auto-style10 {
        width: 143px;
        height: 23px;
    }
    .auto-style11 {
        height: 23px;
        width: 1200px;
    }
    .auto-style12 {
        width: 782px;
    }
        .auto-style14 {
            height: 23px;
            width: 124px;
        }
        .auto-style15 {
            width: 175px;
        }
        .auto-style16 {
            height: 23px;
            width: 131px;
        }
        .auto-style17 {
            width: 410px;
        }
        .auto-style18 {
            height: 23px;
            width: 410px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       
        <table class="auto-style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td class="auto-style10">
                    <asp:Label ID="Label1" runat="server" style="text-align: left" Text="Search" Font-Size="Larger" Font-Underline="True"></asp:Label>
                </td>
                <td class="auto-style18">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Check-in"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="23px" ImageUrl="~/Images/calendar_icon1.png" OnClick="ImageButton2_Click" Width="28px" />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" OnDayRender="Calendar1_DayRender"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Check out"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="24px" ImageUrl="~/Images/calendar_icon1.png" OnClick="ImageButton3_Click" Width="29px" />
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged" Visible="False" OnDayRender="Calendar2_DayRender"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Room-Type"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Number of rooms "></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="Rooms Available"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
                </td>
                <td class="auto-style17">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Book" Visible="False" />
                </td>
            </tr>
        </table>

    <table class="auto-style11">
            <tr>
                <td class="auto-style15">


                    <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="If you want to cancel your booking, click here . -&gt;"></asp:Label>


                </td>
                <td class="auto-style16">

                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Blue" NavigateUrl="~/HotelCancelling.aspx">Cancel Booking</asp:HyperLink>

                </td>

                <td class="auto-style14">

                    <asp:Label ID="Label19" runat="server" Font-Bold="True" Text="If you want to change your booking, click here . -&gt;"></asp:Label>

                </td>
                <td>

                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Blue" NavigateUrl="~/HotelChanging.aspx">Change Booking</asp:HyperLink>

                </td>
            </tr>
        </table>

</asp:Content>
