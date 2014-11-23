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
        .btnBack {
            position: absolute;
        }
    </style>
</asp:Content>

<asp:Content ID="ProductsContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
            <div class="jumbotron">
                <h1>Customize your arms or armor!</h1>
            </div>
            <asp:Button ID="btnBack" CssClass="btn-info btnBack" runat="server" Text="back" visible="false" OnClick="btnBack_Click"/>
            <asp:Table ID="tblEQSelection" runat="server">
                <asp:TableRow Cssclass="images">
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center"><img src="Images/Weapons.jpg" /></asp:TableCell>
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center"><img src="Images/ArmorShield.jpg" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow Cssclass="buttons">
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Button CssClass="btn btn-toolbar" ID="btnWeapon" runat="server" Text="Arms" OnClick="btnWeapon_Click" />
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Button CssClass="btn btn-toolbar" ID="btnArmor" runat="server" Text="Armor" OnClick="btnArmor_Click" />            
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <asp:Table ID="tblMaterialSelection" runat="server" Visible="false">
                <asp:TableRow ID="trWMaterials" Cssclass="images" Visible="false">
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center"><img src="Images/WPvC.jpg" /></asp:TableCell>
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center"><img src="Images/WFiber.jpg" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trAMaterials" Cssclass="images" Visible="false">
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center"><img src="Images/AFoam.jpg" /></asp:TableCell>
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center"><img src="Images/APvC.jpg" /></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow ID="trWMatSelection" Cssclass="buttons" Visible="false">
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center">
                        <asp:Button CssClass="btn btn-toolbar" ID="btnWPvC" runat="server" Text="PvC" OnClick="btnWPvC_Click" />
                    </asp:TableCell>
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center">
                        <asp:Button CssClass="btn btn-toolbar" ID="btnWFiberglass" runat="server" Text="Fiberglass" OnClick="btnWFiberglass_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trAMatSelection" Cssclass="buttons" Visible="false">
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center">
                        <asp:Button CssClass="btn btn-toolbar" ID="btnAFoam" runat="server" Text="Foam" OnClick="btnAFoam_Click" />
                    </asp:TableCell>
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center">
                        <asp:Button CssClass="btn btn-toolbar" ID="btnAPvC" runat="server" Text="PvC" OnClick="btnAPvC_Click" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <asp:Table ID="tblFoamArmorSelection" runat="server" Visible="False">
                <asp:TableRow ID="trAPvCArmor" Cssclass="images" Visible="false">
                    <asp:TableCell HorizontalAlign="Center"><img src="Images/PvCArmor.jpg" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trAFoamArmor" Cssclass="images" Visible="false">
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center"><img src="Images/FoamArmor.jpg" /></asp:TableCell>
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center"><img src="Images/FoamShield.jpg" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trAPvCArmorChoice" Cssclass="buttons" Visible="false">
                    <asp:TableCell>
                        <asp:Button CssClass="btn btn-toolbar" ID="btnAPvCArmor" runat="server" Text="Armor" OnClick="btnAPvCArmor_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trAFoamArmorChoice" Cssclass="buttons" Visible="false">
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center">
                        <asp:Button CssClass="btn btn-toolbar" ID="btnAFoamArmor" runat="server" Text="Armor" OnClick="btnAFoamArmor_Click" />
                    </asp:TableCell>
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center">
                        <asp:Button CssClass="btn btn-toolbar" ID="btnAFoamShield" runat="server" Text="Shield" OnClick="btnAFoamShield_Click" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <asp:Table ID="tblPvCArmorSelection" runat="server" Visible="False">
                <asp:TableRow ID="trPvCArmor" Cssclass="images">
                    <asp:TableCell HorizontalAlign="Center"><img src="Images/PvCArmor.jpg" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trPvCArmorSelection" Cssclass="buttons">
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Button CssClass="btn btn-toolbar" ID="btnPvCArmor" runat="server" Text="Armor" OnClick="btnPvCArmor_Click" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            
            <asp:Table ID="tblWeapons" runat="server" Visible="False">
                <asp:TableRow ID="trFGWeapons" Cssclass="images" Visible="false">
                    <asp:TableCell HorizontalAlign="Center"><img src="Images/2Hand.jpg" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trPvCWeapons" Cssclass="images" Visible="false">
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center"><img src="Images/dagger.jpg" /></asp:TableCell>
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center"><img src="Images/1Hand.jpg" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trWFGSelection" Cssclass="buttons" Visible="false">
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center">
                        <asp:Button CssClass="btn btn-toolbar" ID="btnFG2H" runat="server" Text="2-Handed" OnClick="btnFG2H_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trWPvCSelection" Cssclass="buttons" Visible="false">
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center">
                        <asp:Button CssClass="btn btn-toolbar" ID="btnPvCDag" runat="server" Text="Dagger" OnClick="btnPvCDag_Click" />
                    </asp:TableCell>
                    <asp:TableCell CssClass="tcChoice" HorizontalAlign="Center">
                        <asp:Button CssClass="btn btn-toolbar" ID="btnPvC1H" runat="server" Text="1-Handed" OnClick="btnPvC1H_Click" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
       </div>  

        <asp:SqlDataSource ID="SqlDSMaterial" runat="server" ConnectionString="<%$ ConnectionStrings:Material_Information %>" ProviderName="<%$ ConnectionStrings:Material_Information.ProviderName %>" SelectCommand="SELECT [M_Name], [Price] FROM [Equip_Materials] WHERE ([AW_Type] = ?)">
            <SelectParameters>
            </SelectParameters>
        </asp:SqlDataSource>
        
        <asp:SqlDataSource ID="SqlDSEquip" runat="server" ConnectionString="<%$ ConnectionStrings:Material_Information %>" ProviderName="<%$ ConnectionStrings:Material_Information.ProviderName %>" SelectCommand="SELECT [Multiplier], [AWName] FROM [AWType] WHERE (([Type] = ?) AND ([Material] = ?))">
            <SelectParameters>
            </SelectParameters>
        </asp:SqlDataSource> 
</asp:Content>

