<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ShoppingCart.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ECOMM %>" DeleteCommand="DELETE FROM [PRODUCT] WHERE [PRODUCT_ID] = @PRODUCT_ID" InsertCommand="INSERT INTO [PRODUCT] ([PRODUCT_NAME], [PRODUCT_DESCRIPTION], [PRODUCT_PRICE], [PRODUCT_PRICE_PER], [PRODUCT_PICTURE_PATH_LG], [PRODUCT_PICTURE_PATH_SM], [AVAILABLE]) VALUES (@PRODUCT_NAME, @PRODUCT_DESCRIPTION, @PRODUCT_PRICE, @PRODUCT_PRICE_PER, @PRODUCT_PICTURE_PATH_LG, @PRODUCT_PICTURE_PATH_SM, @AVAILABLE)" SelectCommand="SELECT * FROM [PRODUCT]" UpdateCommand="UPDATE [PRODUCT] SET [PRODUCT_NAME] = @PRODUCT_NAME, [PRODUCT_DESCRIPTION] = @PRODUCT_DESCRIPTION, [PRODUCT_PRICE] = @PRODUCT_PRICE, [PRODUCT_PRICE_PER] = @PRODUCT_PRICE_PER, [PRODUCT_PICTURE_PATH_LG] = @PRODUCT_PICTURE_PATH_LG, [PRODUCT_PICTURE_PATH_SM] = @PRODUCT_PICTURE_PATH_SM, [AVAILABLE] = @AVAILABLE WHERE [PRODUCT_ID] = @PRODUCT_ID">
            <DeleteParameters>
                <asp:Parameter Name="PRODUCT_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PRODUCT_NAME" Type="String" />
                <asp:Parameter Name="PRODUCT_DESCRIPTION" Type="String" />
                <asp:Parameter Name="PRODUCT_PRICE" Type="Decimal" />
                <asp:Parameter Name="PRODUCT_PRICE_PER" Type="String" />
                <asp:Parameter Name="PRODUCT_PICTURE_PATH_LG" Type="String" />
                <asp:Parameter Name="PRODUCT_PICTURE_PATH_SM" Type="String" />
                <asp:Parameter Name="AVAILABLE" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PRODUCT_NAME" Type="String" />
                <asp:Parameter Name="PRODUCT_DESCRIPTION" Type="String" />
                <asp:Parameter Name="PRODUCT_PRICE" Type="Decimal" />
                <asp:Parameter Name="PRODUCT_PRICE_PER" Type="String" />
                <asp:Parameter Name="PRODUCT_PICTURE_PATH_LG" Type="String" />
                <asp:Parameter Name="PRODUCT_PICTURE_PATH_SM" Type="String" />
                <asp:Parameter Name="AVAILABLE" Type="Boolean" />
                <asp:Parameter Name="PRODUCT_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
