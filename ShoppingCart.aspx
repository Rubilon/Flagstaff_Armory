<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" MasterPageFile="~/masterPage.master" Inherits="ShoppingCart" %>
<asp:Content ID="DefaultTitle" ContentPlaceHolderID="pagetitle" runat="server">
       <%-- Place title here no tags required.--%>
 Shopping Cart
</asp:Content>
<asp:Content ID="DefaultHeader" ContentPlaceHolderID="head" runat="server">
      <%--  Any extra header links go here--%>
</asp:Content>
<asp:Content ID="DefaultContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="jumbotron">
                <h1 runat="server" id="Cart"></h1>
            </div>
</asp:Content>
