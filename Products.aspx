<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Products.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="Products" %>

<%--!!!!!!To override the masterpage place content inside the asp content tags.--%>

<asp:Content ID="DefaultTitle" ContentPlaceHolderID="pagetitle" runat="server">
   <%-- Place title here no tags required.--%>
    Products
</asp:Content>

<asp:Content ID="ProductHeader" ContentPlaceHolderID="head" runat="server">
    <%--  Any extra header links go here--%>
</asp:Content>

<asp:Content ID="ProductsContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
            <div class="jumbotron">
                <h1>Customize your arms or armor!</h1>
            </div>
            <asp:Table ID="tblEQSelection" runat="server">
                <asp:TableRow class="images">
                    <asp:TableCell></asp:TableCell>
                    <asp:TableCell></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow class="buttons">
                    <asp:TableCell></asp:TableCell>
                    <asp:TableCell></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Table ID="tblMaterialSelection" runat="server" Visible="False">
                <asp:TableRow class="images">
                    <asp:TableCell></asp:TableCell>
                    <asp:TableCell></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow class="buttons">
                    <asp:TableCell></asp:TableCell>
                    <asp:TableCell></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Table ID="tblDetailSelection" runat="server" Visible="False">
                <asp:TableRow class="images">
                    <asp:TableCell></asp:TableCell>
                    <asp:TableCell></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow class="buttons">
                    <asp:TableCell></asp:TableCell>
                    <asp:TableCell></asp:TableCell>
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

