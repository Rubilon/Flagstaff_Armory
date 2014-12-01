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
          .carousel-inner > .item > img {
    margin: 0 auto;
    margin-top: auto;
}
          .size {
              height :300px !important;
          }
      
          </style>
</asp:Content>
<asp:Content ID="DefaultContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="carousel-example-generic" style="height: 300px" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img class="img-responsive img-rounded size" src="Images/PvCArmor.jpg" alt="...">
      <div class="carousel-caption">
      
      </div>
    </div>
    <div class="item">
      <img class="img-responsive img-rounded size" src="Images/FoamArmor.jpg" alt="...">
      <div class="carousel-caption">
        
      </div>
    </div>
      <div class="item">
      <img class="img-responsive img-rounded size" src="Images/FoamShield.jpg" alt="...">
      <div class="carousel-caption">
        
      </div>
    </div>
    
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>  
    <h3>Online Store</h3>
    <p>Check out our <asp:HyperLink ID="HyperLink1" runat="server" Text="online store" NavigateUrl="~/Products.aspx"></asp:HyperLink> for our full line of weapons.</p>
    
    <h3>Contact Us</h3>
    <p>Whether you are interested in wholesale pricing for your game shop, have a question about Flagstaff Armory products, or custom gear requests you can find our <br /> <asp:HyperLink ID="HyperLink2" runat="server" Text="contact information" NavigateUrl="~/ContactUs.aspx"></asp:HyperLink> here.</p>
    
    <img src="Images/FEATURED%20PRODUCTS.jpg" />
        <div class="">
            <div class="col-xs-3">
                <img class="auto-style1 text-center img-rounded img-responsive" src="Images/1Hand.jpg" /><br />
                <asp:HyperLink CssClass="text-center col-xs-12" ID="HyperLink3" runat="server" NavigateUrl="~/ProductList.aspx">View Details</asp:HyperLink>
            </div>
            <div class="col-xs-3">
                <img class="auto-style1 img-rounded img-responsive" src="Images/FoamArmor.jpg" /><br />
                <asp:HyperLink CssClass="text-center col-xs-12" ID="HyperLink4" runat="server" NavigateUrl="~/ProductList.aspx">View Details</asp:HyperLink>
            </div>
            <div class="col-xs-3">
                <img class="auto-style1 img-rounded img-responsive" src="Images/FoamShield.jpg" /><br />
                <asp:HyperLink CssClass="text-center col-xs-12" ID="HyperLink6" runat="server" NavigateUrl="~/ProductList.aspx">View Details</asp:HyperLink>
            </div>
            <div class="col-xs-3">
                <img class="auto-style1 img-rounded img-responsive" src="Images/PvCArmor.jpg" /><br />
                <asp:HyperLink CssClass="text-center col-xs-12" ID="HyperLink5" runat="server" NavigateUrl="~/ProductList.aspx">View Details</asp:HyperLink>
            </div>
         </div>

</asp:Content>

