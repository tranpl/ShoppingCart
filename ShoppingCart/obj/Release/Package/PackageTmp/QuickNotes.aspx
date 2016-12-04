<%@ Page Title="Quick Notes" Language="C#" MasterPageFile="~/NestedAdmin.master" AutoEventWireup="true" CodeBehind="QuickNotes.aspx.cs" Inherits="ShoppingCart.QuickNotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="adminContentPlaceHolder" runat="server">
    <h1>Quick Notes</h1>
    <h3>Summary</h3>
    <ul>
        <li>Read Chapter 28</li>
        <li>Focus on Browser Cookies and Session State</li>
        <li>Don't worry about Profiles</li>
    </ul>

    <h3>Browser Cookies</h3>
    <ul>
        <li>Persistent - remain on the client (user's device) until the expiration or the user deletes them</li>
        <li>Can only store small amounts of data (about 4Kb)</li>
        <li>Should not be used to store sensitive information</li>
        <li>Domain specific - bascially only the domain (website) that writes the cookie has access to it</li>
    </ul>

    <h3>Session State</h3>
    <ul>
        <li>Session State allows you to store objects</li>
        <li>These "live" on the server and are browser session specific</li>
        <li>Destroyed when the browser is closed or the session timeout has been reached (or worst case, server has been restarted)
        </li>
        <li>Can set a session timeout variable in the Web.config</li>
        <li>You can programmatically manage session </li>
        <li>You can also implement a means to save session items to your database at a timing you choose</li>
    </ul>

</asp:Content>
