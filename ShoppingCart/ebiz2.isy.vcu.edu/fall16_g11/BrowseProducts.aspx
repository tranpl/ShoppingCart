<%@ Page Title="Browse" Language="C#" MasterPageFile="~/NestedPublic.Master" AutoEventWireup="true" CodeBehind="BrowseProducts.aspx.cs" Inherits="ShoppingCart.BrowseProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="publicContentPlaceHolder" runat="server">
        <div>

            <h1>Products</h1>

            <asp:DataList ID="dlProduct" runat="server" OnItemCommand="dlProduct_ItemCommand" DataSourceID="odsProducts" DataKeyField="Id" RepeatColumns="4" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <div class="product-content">
                        <img src='<%# Eval("PicLocLg") %>' />
                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>' CssClass="product-title"></asp:Label><br />
                        <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("Description") %>'></asp:Label><br />
                        <b>
                            <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            /  
                        <asp:Label ID="lblPricePer" runat="server" Text='<%# Eval("PricePer") %>'></asp:Label></b>
                        <br />
                        <br />
                        <asp:DropDownList ID="ddlQuantity" runat="server">
                            <asp:ListItem Value="1" Text="1"></asp:ListItem>
                            <asp:ListItem Value="2" Text="2"></asp:ListItem>
                            <asp:ListItem Value="3" Text="3"></asp:ListItem>
                            <asp:ListItem Value="4" Text="4"></asp:ListItem>
                            <asp:ListItem Value="5" Text="5"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:LinkButton ID="lbAddToCart" runat="server" CommandName="Add" CommandArgument='<%# Eval("Id") %>'>Add To Cart</asp:LinkButton>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:ObjectDataSource ID="odsProducts" runat="server" SelectMethod="getActiveProductList" TypeName="ShoppingCart.BusinessLogic"></asp:ObjectDataSource>
        </div>

</asp:Content>
