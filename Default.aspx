<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" MasterPageFile="~/masterPage.master" Inherits="_Default" %>

<%--!!!!!Place content inside content placeholder tags to override masterpage.--%>
<asp:Content ID="DefaultTitle" ContentPlaceHolderID="pagetitle" runat="server">
       <%-- Place title here no tags required.--%>
    Flagstaff Armory
</asp:Content>
<asp:Content ID="DefaultHeader" ContentPlaceHolderID="head" runat="server">
      <%--  Any extra header links go here--%>
      <style type="text/css">
          .auto-style1 {
              width: 230px;
              height: 145px;
          }
          </style>
</asp:Content>
<asp:Content ID="DefaultContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
        <h1>Slide show of weapons and armors will be added here later...</h1>
    </div>   
    <h3>Online Store</h3>
    <p>Check out our <asp:HyperLink ID="HyperLink1" runat="server" Text="online store" NavigateUrl="~/Products.aspx"></asp:HyperLink> for our full line of weapons.</p>
    <h3>Contact Us</h3>
    <p>Whether you are interested in wholesale pricing for your game shop, have a question about Flagstaff Armory products, or custom gear requests you can find our <br /> <asp:HyperLink ID="HyperLink2" runat="server" Text="contact information" NavigateUrl="~/ContactUs.aspx"></asp:HyperLink> here</p>
    <br />
    <br />
    <img src="Images/FEATURED%20PRODUCTS.jpg" />&nbsp;
    <br />
    <h5>
        <div class="container-fluid col-xs-12">
            <div class="col-xs-3">
                <img class="auto-style1 text-center" src="Images/1Hand.jpg" /><br />
                <asp:HyperLink CssClass="text-center col-xs-12 imgbutton img-rounded" ID="HyperLink3" runat="server">add to cart</asp:HyperLink>
            </div>
            <div class="col-xs-3">
                <img class="auto-style1" src="Images/FoamArmor.jpg" /><br />
                <asp:HyperLink CssClass="text-center col-xs-12 imgbutton img-rounded" ID="HyperLink4" runat="server">add to cart</asp:HyperLink>
            </div>
            <div class="col-xs-3">
                <img class="auto-style1" src="Images/FoamShield.jpg" /><br />
                <asp:HyperLink CssClass="text-center col-xs-12 imgbutton img-rounded" ID="HyperLink6" runat="server">add to cart</asp:HyperLink>
            </div>
            <div class="col-xs-3">
                <img class="auto-style1" src="Images/PvCArmor.jpg" /><br />
                <asp:HyperLink CssClass="text-center col-xs-12 imgbutton img-rounded" ID="HyperLink5" runat="server">add to cart</asp:HyperLink>
            </div>
         </div>
    </h5>
    </asp:Content>

