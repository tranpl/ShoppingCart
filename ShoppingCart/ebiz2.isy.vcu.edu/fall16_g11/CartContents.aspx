<%@ Page Title="" Language="C#" MasterPageFile="~/NestedPublic.Master" AutoEventWireup="true" CodeBehind="CartContents.aspx.cs" Inherits="ShoppingCart.CartContents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="publicContentPlaceHolder" runat="server">
    <h1>Cart Contents</h1>
    <asp:LinkButton ID="lbShopMore" PostBackUrl="~/BrowseProducts.aspx" CssClass="pull-right" runat="server">Continue Shopping</asp:LinkButton>
    <asp:GridView ID="gvCartContents" runat="server" CssClass="table" EmptyDataText="Your shopping cart is empty." AutoGenerateColumns="False" DataSourceID="odsCart">
        <Columns>
            <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:BoundField DataField="Total" HeaderText="Total" ReadOnly="True" SortExpression="Total" />
        </Columns>
    </asp:GridView>

    <asp:ObjectDataSource ID="odsCart" runat="server" SelectMethod="getCartContents" TypeName="ShoppingCart.BusinessLogic" DataObjectTypeName="ShoppingCart.CartItem" EnableCaching="false">
    </asp:ObjectDataSource>
    <asp:Button ID="btnCheckOut" CssClass="btn pull-right" runat="server" Text="Check Out" />
</asp:Content>
