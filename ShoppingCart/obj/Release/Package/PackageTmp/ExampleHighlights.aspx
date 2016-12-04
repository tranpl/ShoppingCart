<%@ Page Title="" Language="C#" MasterPageFile="~/NestedAdmin.master" AutoEventWireup="true" CodeBehind="ExampleHighlights.aspx.cs" Inherits="ShoppingCart.ExampleHighlights" %>

<asp:Content ID="Content1" ContentPlaceHolderID="adminContentPlaceHolder" runat="server">
    <h1>Example Highlights</h1>

    <h3>Master Pages - Chapter 5</h3>
    <ul>
        <li>Example uses one (1) Master Page (Site.Master) and two (2) Nested Master Pages (NestedAdmin.master and NestedPublic.master)</li>
        <li>Site.Master takes care of basic commonality - loading of scripts and stylesheets (e.g. JQuery, Bootstrap, site specific css) and footer info</li>
        <li>NestedPublic.Master inheirts from Site.Master and has menu specific items for the PUBLIC side of the site</li>
        <li>NestedAdmin.Master inheirts from Site.Master and has menu specific items for the ADMINISTRATIVE side of the site</li>
    </ul>
    <h3>Cookie and Session Examples (NestedPublic.master.cs) - Chapter 28</h3>
    <ul>
        <li>Uses the Page_Load event, checks to see if a cookie exists by the name of "Visitor"</li>
        <li>If this cookie does not exist, a call is made to BusinessLogic to return a new visitor Id (this inserts a new record into the VISITOR table)</li>
        <li>A cookie is then written with the value of the primary key value from the newly created record</li>
        <li>This value is set as a Session variable, which can be called/used from the application</li>
        <li>If the cookie DOES exist, its value is read into the session variable, availabe for use by the application</li>
        <li>The session variable will be used to associate the user to their cart</li>
        <li>The cookie allows for the user to be associated back to a shopping cart if the cookie still exists on their device</li>
    </ul>
    <h3>Practical Example</h3>
    <ol>
        <li>Go to <a href="https://www.amazon.com" target="_blank">Amazon</a></li>
        <li>Add a bunch of expensive items to your shopping cart</li>
        <li>Close your browser</li>
        <li>Reopen browser and see if the items remain in your cart</li>
        <li>Clear your browser cookies (<a href="http://lmgtfy.com/?q=how+to+clear+browser+cookies">How to Clear Browser Cookies</a>) and repeat steps 3 and 4</li>
    </ol>


    <h3>BrowseProducts.aspx</h3>
    <ul>
        <li>Uses ObjectDataSource for list of products in the database</li>
        <li>Uses DataList control to display the products</li>
        <li>Has functionality to add items to a Shopping Cart list</li>
    </ul>

</asp:Content>
