<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentInfo.aspx.cs" Inherits="Void_Inc.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <br />  <asp:GridView ID="gvUserInfo" runat="server"
        CssClass="table table-hover" TabIndex="1"  OnRowCommand="gvUserInfo_RowCommand"
        AutoGenerateColumns="False"  CellPadding="4"
        ForeColor="#333333" GridLines="None" DataKeyNames="UserId" >
        <Columns>
            <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
             <asp:ButtonField CommandName="Score"  ButtonType="Image"  ImageUrl="~/Images/ic_more_vert_black_24dp_2x.png"
                />
        </Columns>
    </asp:GridView>
    
</asp:Content>
