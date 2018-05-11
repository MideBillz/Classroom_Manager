<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Score.aspx.cs" Inherits="Void_Inc.Score" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Repeater runat="server" ID="rptUser">
        <ItemTemplate>
      <br />  <h2> <div class="form-inline">
           <label><%#Eval("Name") %> </label>
          <label><%#Eval("Subject") %> </label>
      <label><%#Eval("Score") %> </label>
          </div>
            </h2> 
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
