<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Void_Inc.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <br/>
     <br /> <asp:TextBox runat="server" ID ="txtName" placeholder ="Enter your Name" Width ="400px" CssClass="form-control"></asp:TextBox>
        <br/>
     <asp:TextBox runat="server" ID ="txtEmail" placeholder ="Enter Email" Width ="400px" CssClass="form-control"></asp:TextBox>
        <br/>
     <asp:TextBox runat="server" ID ="txtPassword" placeholder ="Select Password" TextMode="Password"  Width ="400px" CssClass="form-control"></asp:TextBox>
        <br/>
     <asp:TextBox runat="server" ID ="txtConfirm" placeholder ="Re-type Password" TextMode="Password" Width ="400px" CssClass="form-control"></asp:TextBox>
        <br/>
     <asp:DropDownList runat="server" ID ="ddlSubjects" CssClass ="btn btn-primary dropdown-toggle dropdown-toggle-split">
     <asp:ListItem>Subjects</asp:ListItem>
        <asp:ListItem Value ="Science">Science</asp:ListItem>
         <asp:ListItem Value ="History">History</asp:ListItem>
         <asp:ListItem Value ="Accounting">Accounting</asp:ListItem>
     </asp:DropDownList><br /><br />
     <asp:TextBox runat="server" ID ="txtScore"  Visible="false" placeholder ="Score"  ReadOnly="true"
         Width ="100px" CssClass="form-control"></asp:TextBox>
      <br /> <asp:Label ID ="Label2" runat="server" Text="Are you a Teacher?"></asp:Label><br />
    <asp:RadioButton runat="server" ID="rdYes" Text="Yes"  GroupName="Teacher" />
    <asp:RadioButton runat="server" ID="rdNo" Text="No"  GroupName="Teacher" /><br /><br />
    <asp:CompareValidator ID="ValidatorPassword" runat="server" ErrorMessage="Password does not match!!" CssClass="alert alert-danger" ControlToCompare="txtPassword" ControlToValidate="txtConfirm"></asp:CompareValidator>
    <br />
    <br />
     <asp:Button ID ="btnSave" runat="server" Text="Save"  OnClick="btnSave_Click"
        OnClientClick='return confirm("Successful!");' CssClass="btn btn-success"></asp:Button>
         <asp:Button ID ="btnCancel" runat="server" Text="Cancel"  OnClick="btnCancel_Click" CssClass="btn btn-danger"></asp:Button><br />
</asp:Content>
