<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductList.aspx.cs" MasterPageFile="~/masterPage.master" Inherits="ProductList" %>
<asp:Content ID="DefaultTitle" ContentPlaceHolderID="pagetitle" runat="server">
       <%-- Place title here no tags required.--%>
 Product List
</asp:Content>
<asp:Content ID="DefaultHeader" ContentPlaceHolderID="head" runat="server">
      <%--  Any extra header links go here--%>
</asp:Content>

<asp:Content ID="DefaultContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
         img {
            height: 250px;
            width: 250px;
        }

    </style>
     <div class="jumbotron">
                <h1 runat="server" id="Cart">Browse Our Products</h1>
                
            </div>
    
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-condensed" AutoGenerateColumns="False" DataSourceID="AccessDataSource1" AllowSorting="True">
                    <Columns>
                        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                        <asp:BoundField DataField="Material" HeaderText="Material" SortExpression="Material" />
                        <asp:BoundField DataField="Detail" HeaderText="Detail" SortExpression="Detail" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" ItemStyle-CssClass="t-cost" DataFormatString="{0:c}" HtmlEncode="False" >
                        <ItemStyle CssClass="t-cost" />
                        </asp:BoundField>
                        <asp:HyperLinkField DataNavigateUrlFields="ImgLink"  DataNavigateUrlFormatString="{0}" NavigateUrl="javascript:show()" Text="View Product" />
                    </Columns>
                </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/FlagstaffArmory.mdb" SelectCommand="SELECT [Type], [Material], [Detail], [Price], [ImgLink] FROM [Products]"></asp:AccessDataSource>
    <div id="myModal" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
          <div style="text-align: center">
          <img id="picture" src="" />
              </div>
      </div>
      
    </div>
  </div>
</div>
    <script>
        $("td").children("a").click(function (event) {
            event.preventDefault();
            var url = this.getAttribute("href");
            $(picture).attr('src', url)
            $('#myModal').modal('show');
        });

        function show() {


            $('#myModal').modal('show');
        };

    </script>
</asp:Content>
