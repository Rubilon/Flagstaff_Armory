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
            <asp:Table ID="tblProductSelection" runat="server" Width="131px">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:DropDownList ID="ddlEquip" runat="server" OnSelectedIndexChanged="ddlEquip_SelectedIndexChanged" AutoPostBack="True">
            </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:DropDownList ID="ddlEquipMaterial" runat="server" DataSourceID="SqlDSMaterial" DataTextField="M_Name" DataValueField="M_Name" Visible="False" OnSelectedIndexChanged="ddlEquipMaterial_SelectedIndexChanged" AutoPostBack="True">
            </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                       <asp:DropDownList ID="ddlAWType" runat="server" DataSourceID="SqlDSEquip" DataTextField="AWName" DataValueField="AWName" Visible="False" AutoPostBack="True" OnSelectedIndexChanged="ddlAWType_SelectedIndexChanged">
            </asp:DropDownList> 
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell  runat="server">
                        <asp:Label ID="spPrice" Visible="False" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
       </div>  
     <asp:SqlDataSource ID="SqlDSMaterial" runat="server" ConnectionString="<%$ ConnectionStrings:Material_Information %>" ProviderName="<%$ ConnectionStrings:Material_Information.ProviderName %>" SelectCommand="SELECT [M_Name], [Price] FROM [Equip_Materials] WHERE ([AW_Type] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlEquip" DefaultValue="&quot;" Name="AW_Type" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        
        <asp:SqlDataSource ID="SqlDSEquip" runat="server" ConnectionString="<%$ ConnectionStrings:Material_Information %>" ProviderName="<%$ ConnectionStrings:Material_Information.ProviderName %>" SelectCommand="SELECT [Multiplier], [AWName] FROM [AWType] WHERE (([Type] = ?) AND ([Material] = ?))">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlEquip" Name="Type" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlEquipMaterial" Name="Material" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource> 
</asp:Content>

