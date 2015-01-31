<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EditBooking.ascx.cs" Inherits="hotelreservation.EditBooking" %>
<asp:Panel ID="Panel1" runat="server" Height="626px" Width="346px" BackImageUrl="~/Images/greywood2.gif">
    <pre>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</pre>
    <pre>&nbsp;</pre>
    <pre>    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Label ID="Label3" runat="server" Text="BookingID" Font-Size="Larger" style="font-weight: 700" ForeColor="WhiteSmoke"></asp:Label>

           <asp:TextBox ID="txtBookingID" runat="server"></asp:TextBox></pre>
    <pre>       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtBookingID" ErrorMessage="*Pleas Enter a VALID BookingID " ForeColor="#660066" ValidationExpression="^bk[\d]{1,2}"></asp:RegularExpressionValidator>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Please fill in your BookingID" ControlToValidate="txtBookingID" ForeColor="#660066"></asp:RequiredFieldValidator>
</pre>
<pre>            <asp:Label ID="Label2" runat="server" Text="Email Address" Font-Size="Larger" style="font-weight: 700" ForeColor="WhiteSmoke"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></pre>
    <pre>        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Please Enter a VALID Email" ForeColor="#660066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Please fill in your Email" ForeColor="#660066"></asp:RequiredFieldValidator></pre>
    <br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnRetrieve" runat="server" Text="Retrieve" style="text-align: center" OnClick="btnRetrieve_Click" />
    <br />
    &nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="message" runat="server" ForeColor="#660066"></asp:Label>
</asp:Panel>








