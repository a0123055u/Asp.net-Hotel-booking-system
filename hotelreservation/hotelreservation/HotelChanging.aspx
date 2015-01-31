<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="HotelChanging.aspx.cs" Inherits="hotelreservation.HotelChanging" %>
<%@ Register src="EditBooking.ascx" tagname="EditBooking" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
        width: 116%;
            height: 663px;
            margin-left: 0px;
        }
        .auto-style59 {
            height: 2px;
            font-weight: 700;
            color: #660066;
        }
        .auto-style60 {
            width: 208px;
            height: 11px;
        }
        .auto-style62 {
            height: 11px;
            width: 277px;
        }
        .auto-style23 {
            width: 208px;
            height: 24px;
        }
        .auto-style25 {
            height: 24px;
            width: 277px;
        }
        .auto-style33 {
            width: 208px;
            height: 13px;
        }
        .auto-style35 {
            height: 13px;
            width: 277px;
        }
        .auto-style12 {
            height: 23px;
            font-weight: 700;
            color: #660066;
        }
        .auto-style13 {
            width: 208px;
            height: 14px;
        }
        .auto-style46 {
            height: 14px;
            width: 277px;
        }
        .auto-style27 {
            width: 208px;
            height: 16px;
        }
        .auto-style29 {
            height: 16px;
            width: 277px;
        }
        .auto-style49 {
            width: 208px;
            height: 2px;
        }
        .auto-style51 {
            height: 2px;
            width: 277px;
        }
        .auto-style52 {
            width: 208px;
            height: 8px;
            font-weight: 700;
            color: #660066;
        }
        .auto-style53 {
            width: 248px;
            height: 8px;
        }
        .auto-style54 {
            height: 8px;
            width: 277px;
        }
        .auto-style55 {
            width: 208px;
            height: 6px;
            font-weight: 700;
            color: #660066;
        }
        .auto-style56 {
            width: 248px;
            height: 6px;
        }
        .auto-style57 {
            height: 6px;
            width: 200px;
        }
        .auto-style63 {
            width: 248px;
            height: 11px;
        }
        .auto-style65 {
            width: 248px;
            height: 24px;
        }
        .auto-style66 {
            width: 248px;
            height: 13px;
        }
        .auto-style67 {
            width: 248px;
            height: 14px;
        }
        .auto-style70 {
            width: 248px;
            height: 16px;
        }
        .auto-style71 {
            width: 248px;
            height: 2px;
        }
        .auto-style72 {
            height: 45px;
            font-weight: 700;
            color: #660066;
        }
        /*.usecontrol{
            position:relative;
            top:0px;
            left:0px;
            width: 300px;
            height: 600px;

        }
        .guest{
            position:absolute;
            top:500px;
            left:600px;
            height:851px;
            width: 630px;
            
        }*/
        .auto-style73 {
            width: 208px;
            height: 29px;
        }
        .auto-style74 {
            width: 205px;
            height: 29px;
        }
        .auto-style76 {
            width: 208px;
            height: 15px;
        }
        .auto-style77 {
            width: 248px;
            height: 15px;
        }
        .auto-style78 {
            width: 277px;
        }
        /*.content{
            position:relative;
        }*/
        .auto-style85 {
            height: 29px;
            width: 277px;
        }
        .auto-style86 {
            width: 700px;
        }
        .auto-style87 {
            width: 208px;
        }
        .auto-style88 {
            width: 248px;
        }
        .auto-style89 {
            width: 277px;
        }
        .auto-style90 {
            width: 369px;
        }
        .c1{
            position:fixed;
            top:650px;
            left:1100px;
        }
        .auto-style91 {
        width: 248px;
        height: 29px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2"  ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="height: 840px; width: 1222px">
        
    <tr>
        <td class="auto-style90">
                                <uc1:EditBooking ID="EditBooking2" runat="server" />
       
                                <br />
                                <br />
                                &nbsp;&nbsp;&nbsp;
                                <br />                                    
            <%-- </div>--%>
        </td>
        <td class="auto-style86">
            <%-- <div class="guest">--%>
          <asp:Panel ID="infoPanel" runat="server" Height="773px" Visible="False">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style59" colspan="3">
                            <h2>
                                <asp:Label ID="Label1" runat="server" Text="Guest Information"></asp:Label>
                            </h2>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style60">
                            <asp:Label ID="nameLabel" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td class="auto-style63">
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style62">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Please enter your name!" ForeColor="#CC6699"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style87">
                            <asp:Label ID="passportLabel" runat="server" Text="Passport No"></asp:Label>
                        </td>
                        <td class="auto-style88">
                            <asp:TextBox ID="txtPassportNo" runat="server" Width="84px"></asp:TextBox>
                        </td>
                        <td class="auto-style89">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassportNo" ErrorMessage="Please enter Passport Numbe" ForeColor="#CC6699"></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Please enter your email" ForeColor="#CC6699"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <asp:Label ID="emailLabel" runat="server" Text="Email"></asp:Label>
                        </td>
                        <td class="auto-style65">
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style25">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter a valid email!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#CC6699"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style33">
                            <asp:Label ID="phoneNumberLabel" runat="server" Text="Phone No"></asp:Label>
                        </td>
                        <td class="auto-style66">
                            <asp:TextBox ID="txtPhoneNo" runat="server" Width="69px"></asp:TextBox>
                        </td>
                        <td class="auto-style35">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhoneNo" ErrorMessage="please enter your phone number" ValidationExpression="^\d+$" ForeColor="#CC6699"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12" colspan="3">
                            <h2>
                                <asp:Label ID="Label14" runat="server" Text="Booking Information"></asp:Label>
                            </h2>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="bookingIdLabel" runat="server" Text="Booking ID"></asp:Label>
                        </td>
                        <td class="auto-style67">
                            <asp:Label ID="lblBookingId" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style46"></td>
                    </tr>
                    <tr>
                        <td class="auto-style76">
                            <asp:Label ID="checkinDateLabel" runat="server" Text="Check-in Date"></asp:Label>
                        </td>
                        <td class="auto-style77">
                            <asp:TextBox ID="txtCheckInDate" runat="server" Height="18px"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" ImageUrl="~/Images/Calendar-128.png" OnClick="ImageButton1_Click"  ToolTip="Calendar" Width="29px" />
                            <br />
                            <br />
                        </td>
                        <td class="auto-style78" rowspan="2">
                            <asp:Calendar ID="Calendar1"  runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" OnSelectionChanged="Calendar1_SelectionChanged1" Visible="False">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                            <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar2_SelectionChanged" Visible="False" Width="200px">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style73">
                            <asp:Label ID="checkoutDateLabel" runat="server" Text="Check-out Date"></asp:Label>
                        </td>
                        <td class="auto-style91">
                            <br />
                            <asp:TextBox ID="txtCheckOutDate" runat="server"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="25px" ImageUrl="~/Images/Calendar-128.png" OnClick="ImageButton2_Click" ToolTip="Calendar" Width="28px" />
                            <br />
                            <asp:Label ID="testLabel" runat="server" ForeColor="#CC6699"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style73">
                            <asp:Label ID="lblDuration" runat="server" Text="Durations"></asp:Label>
                        </td>
                        <td class="auto-style91">
                            <asp:Label ID="lblDurantionOut" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style85">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style27">
                            <asp:Label ID="roomTypeLabel" runat="server" Text="Room Type"></asp:Label>
                        </td>
                        <td class="auto-style70">
                            <asp:Label ID="lblRoomType" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style29"></td>
                    </tr>
                    <tr>
                        <td class="auto-style49">
                            <asp:Label ID="roomAmountsLabel" runat="server" Text="Number Of rooms"></asp:Label>
                        </td>
                        <td class="auto-style71">
                            <asp:Label ID="lblNumberOfRoom" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style51"></td>
                    </tr>
                    <tr>
                        <td class="auto-style52">
                            <asp:Label ID="priceLabel" runat="server" Text="Price"></asp:Label>
                        </td>
                        <td class="auto-style53">
                            <asp:Label ID="lblPrice" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style54"></td>
                    </tr>
                    <tr>
                        <td class="auto-style55">
                            <asp:Label ID="totalLabel" runat="server" Text="Total"></asp:Label>
                        </td>
                        <td class="auto-style56">
                            <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style57">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td class="auto-style72" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="confirmChangeButton" runat="server" OnClick="confirmChangeButton_Click1" OnClientClick="return confirm('Are you sure you want to change this booking?')" Text="Confirm Change" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="cancelButton" runat="server" OnClick="cancelButton_Click" Text="Cancel" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="backButton" runat="server" Text="Back" OnClick="backButton_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    </tr>
                </table>
            </asp:Panel>
            <%-- </div>--%>
        </td>
    </tr>
     
       
    
        </table>
     </asp:Content>
 