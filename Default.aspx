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
        <div class="container">
            <div class="jumbotron">
                <h1>The best simple boffer weapons over 6,900 feet</h1>
            </div>
       </div>   
</asp:Content>

