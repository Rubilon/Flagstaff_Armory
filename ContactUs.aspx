<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" MasterPageFile="~/masterPage.master" Inherits="_Default" %>

<%--!!!!!Place content inside content placeholder tags to override masterpage.--%>
<asp:Content ID="DefaultTitle" ContentPlaceHolderID="pagetitle" runat="server">
       <%-- Place title here no tags required.--%>
    Flagstaff Armory
</asp:Content>
<asp:Content ID="DefaultHeader" ContentPlaceHolderID="head" runat="server">
      <%--  Any extra header links go here--%>
</asp:Content>
<asp:Content ID="DefaultContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
    <h1>Flagstaff Armory Contact</h1>
    </div>   
    <img src="Images/EMAIL.jpg" /><br />
    <p>The best way to get hold of Flagstaff Armory is by email. If you have a problem with an order, a custom work request or just want to chat please drop us an email at:<br /><br /><a href="mailto:Raymond@flagstaffArmory.com">Raymond@flagstaffArmory.com</a></p>
    <br />
    <img src="Images/PHONE.jpg" /><br />
    <p>If you need to get in immediate contact we will answer calls Monday through Friday 12 pm to 7 pm.<br /><br /><font color="Blue">Phone: (816)500-5555</font></p>
    <br />
    <img src="Images/SHIPPING%20ADDRESS.png" /><br />
    <p>If for some reason you need to send to Flagstaff Armory, our workshop is located at:</p>
    <p><font color="Blue">Flagstaff Armory <br /> 925 S Knoles Dr <br /> Flagstaff, AZ 86001</font></p>
    <p>To return an item please contact us first to receive a shipping label and to work out the details of the return, otherwise you may never receive a return product or refund.</p>
</asp:Content>