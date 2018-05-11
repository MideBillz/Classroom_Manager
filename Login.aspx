<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Void_Inc.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /> <br />  <asp:Image ID ="Image1" runat="server" ImageUrl="~/Images/Void.png" /><br /><br />
      <br /> <asp:TextBox runat="server" ID="txtEmail" placeholder="Email" CssClass="form-control"></asp:TextBox><br />
    <asp:TextBox runat="server" ID="txtPassword" placeholder="Password" TextMode ="Password" CssClass="form-control">
    </asp:TextBox><br />
   <br /> <asp:Button runat="server" ID="btnLogin" Text="Login"  OnClick="btnLogin_Click" CssClass="btn btn-success" />
    <asp:Button runat="server" ID="btnSignUp" Text="Sign Up"  OnClick="btnSignUp_Click" CssClass="btn btn-warning" />

</asp:Content>
