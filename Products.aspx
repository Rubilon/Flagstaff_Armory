<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Products.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="Products" %>

<%--!!!!!!To override the masterpage place content inside the asp content tags.--%>

<asp:Content ID="DefaultTitle" ContentPlaceHolderID="pagetitle" runat="server">
   <%-- Place title here no tags required.--%>
    Products
</asp:Content>

<asp:Content ID="ProductHeader" ContentPlaceHolderID="head" runat="server">
    <%--  Any extra header links go here--%>
    <style>
        table {
            width: 100%;
        }
        .tcChoice {
            width: 50%;
            margin-left: auto;
            margin-right: auto;
        }
        img {
            height: 250px;
            width: 250px;
        }
         .imgbutton {
            height: 250px;
            width: 250px;
        }
        .btnBack {
            position: absolute;
        }
    </style>
</asp:Content>

<asp:Content ID="ProductsContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
            <div class="jumbotron">
                <h1>Select your arms or armor!</h1>
            </div>
            <asp:Button ID="btnBack" CssClass="btn btn-info btnBack" runat="server" Text="Back" visible="false" OnClick="btnBack_Click"/>
            <asp:Table ID="tblEQSelection" runat="server">
                <asp:TableRow Cssclass="images">
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center"><asp:ImageButton runat="server" CssClass="imgbutton img-rounded" OnClick="btnWeapon_Click" ImageUrl="Images/Weapons.jpg" /></asp:TableCell>
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center"><asp:ImageButton runat="server" CssClass="imgbutton img-rounded" OnClick="btnArmor_Click" ImageUrl="Images/ArmorShield.jpg" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow Cssclass="buttons">
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Label CssClass="label label-default" runat="server">Arms</asp:Label>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Label CssClass="label label-default" ID="Label1" runat="server">Armor</asp:Label>        
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <asp:Table ID="tblMaterialSelection" runat="server" Visible="false">
                <asp:TableRow ID="trWMaterials" Cssclass="images" Visible="false">
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center"><asp:ImageButton runat="server" CssClass="imgbutton img-rounded" OnClick="btnWPvC_Click" ImageUrl="Images/WPvC.jpg"/></asp:TableCell>
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center"><asp:ImageButton runat="server" CssClass="imgbutton img-rounded" OnClick="btnWFiberglass_Click" ImageUrl="Images/WFiber.jpg"/></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trAMaterials" Cssclass="images" Visible="false">
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center"><asp:ImageButton runat="server" CssClass="imgbutton img-rounded" OnClick="btnAFoam_Click" ImageUrl="Images/AFoam.jpg" /></asp:TableCell>
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center"><asp:ImageButton runat="server" CssClass="imgbutton img-rounded" OnClick="btnAPvC_Click" ImageUrl="Images/APvC.jpg" /></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow ID="trWMatSelection" Cssclass="buttons" Visible="false">
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center">
                        <asp:Label ID="Label2" CssClass="label label-default" runat="server">PVC</asp:Label>
                    </asp:TableCell>
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center">
                        <asp:Label ID="Label3" CssClass="label label-default" runat="server">Fiberglass</asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trAMatSelection" Cssclass="buttons" Visible="false">
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center">
                        <asp:Label ID="Label4" CssClass="label label-default" runat="server">Foam</asp:Label>
                    </asp:TableCell>
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center">
                        <asp:Label ID="Label5" CssClass="label label-default" runat="server">PVC</asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <asp:Table ID="tblFoamArmorSelection" runat="server" Visible="False">
                <asp:TableRow ID="trAFoamArmor" Cssclass="images" Visible="false">
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center"><asp:ImageButton ID="ImageButton1" runat="server" OnClick="btnAFoamArmor_Click" CssClass="imgbutton img-rounded" ImageUrl="Images/FoamArmor.jpg" PostBackUrl="~/ShoppingCart.aspx"/></asp:TableCell>
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center"> <asp:ImageButton ID="ImageButton2" runat="server" OnClick="btnAFoamShield_Click" CssClass="imgbutton img-rounded" ImageUrl="Images/FoamShield.jpg" PostBackUrl="~/ShoppingCart.aspx"/></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trAFoamArmorChoice" Cssclass="buttons" Visible="false">
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center">
                        <asp:Label ID="Label7" CssClass="label label-default" runat="server">Armor</asp:Label>
                    </asp:TableCell>
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center">
                        <asp:Label ID="Label8" CssClass="label label-default" runat="server">Shield</asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <asp:Table ID="tblPvCArmorSelection" runat="server" Visible="False">
                <asp:TableRow ID="trPvCArmor" Cssclass="images">
                    <asp:TableCell HorizontalAlign="Center"> <asp:ImageButton ID="ImageButton3" runat="server" CssClass="imgbutton img-rounded" OnClick="btnPvCArmor_Click" ImageUrl="Images/PvCArmor.jpg" PostBackUrl="~/ShoppingCart.aspx"/></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trPvCArmorSelection" Cssclass="buttons">
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Label ID="Label9" CssClass="label label-default" runat="server">PVC Armor</asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            
            <asp:Table ID="tblWeapons" runat="server" Visible="False">
                <asp:TableRow ID="trFGWeapons" Cssclass="images" Visible="false">
                    <asp:TableCell HorizontalAlign="Center">  <asp:ImageButton ID="ImageButton4" runat="server" CssClass="imgbutton img-rounded" OnClick="btnFG2H_Click" ImageUrl="Images/2Hand.jpg" PostBackUrl="~/ShoppingCart.aspx"/></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trPvCWeapons" Cssclass="images" Visible="false">
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center">  <asp:ImageButton ID="ImageButton5" runat="server" CssClass="imgbutton img-rounded" OnClick="btnPvCDag_Click" ImageUrl="Images/dagger.jpg" PostBackUrl="~/ShoppingCart.aspx"/></asp:TableCell>
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center">  <asp:ImageButton ID="ImageButton6" runat="server" CssClass="imgbutton img-rounded" OnClick="btnPvC1H_Click" ImageUrl="Images/1Hand.jpg" PostBackUrl="~/ShoppingCart.aspx"/></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trWFGSelection" Cssclass="buttons" Visible="false">
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center">
                        <asp:Label ID="Label10" CssClass="label label-default" runat="server">2-Handed</asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trWPvCSelection" Cssclass="buttons" Visible="false">
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center">
                        <asp:Label ID="Label11" CssClass="label label-default" runat="server">Dagger</asp:Label>
                    </asp:TableCell>
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center">
                        <asp:Label ID="Label12" CssClass="label label-default" runat="server">1-Handed</asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
       </div> 
       <Table runat="server" style="visibility: hidden">
           <tr>
                <td ID="lblType"></td>
                <td ID="lblMaterial"></td>
                <td ID="lblSelection"></td>
           </tr>
       </Table> 

    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/FlagstaffArmory.mdb" SelectCommand="SELECT [ID], [Material], [Type], [Detail], [Price] FROM [Products]"></asp:AccessDataSource>
</asp:Content>

