<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageUser.aspx.cs" Inherits="Void_Inc.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class ="form-inline">
       <br /> <asp:TextBox runat ="server" ID ="txtSearch" placeholder ="Search" CssClass="form-control"></asp:TextBox>
        <asp:Button runat="server" ID="btnSearch" Text ="Search" CssClass ="btn btn-info" OnClick="btnSearch_Click" />
         <asp:Button runat="server" ID="btnReset" Text ="Reset"  OnClick="btnReset_Click" CssClass ="btn btn-warning"  />
      </div><br />

    <asp:GridView ID="gvUsers" runat="server" CssClass="table table-hover"  OnRowDeleting="gvUsers_RowDeleting" TabIndex="1"
       CellPadding="4" ForeColor="#333333"  OnRowUpdating="gvUsers_RowUpdating" GridLines="None"  AutoGenerateColumns="False" DataKeyNames="UserId">
         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
        <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
        <asp:BoundField DataField="Teacher" HeaderText="Teacher" SortExpression="Teacher" />
         <%-- <asp:ButtonField CommandName="Score"  ButtonType="Image"  ImageUrl="~/Images/ic_more_vert_black_24dp_2x.png"
                />--%>
          <asp:ButtonField CommandName="Update" Text="Update" ButtonType="Button"
                ControlStyle-CssClass="btn btn-warning" />
            <asp:ButtonField CommandName="Delete" Text="Delete" ButtonType="Button"
                ControlStyle-CssClass="btn btn-danger" />
    </Columns>
</asp:GridView>
     <div class="form-inline">
            <label id="lblUserId">UserID</label>
            <asp:TextBox runat="server" ID="txtUserId" ReadOnly="true" Width="100px" CssClass="form-control"></asp:TextBox>
            <br />
        </div>
     <br /> <asp:TextBox runat="server" ID ="txtName" placeholder ="Enter your Name" Width ="400px" CssClass="form-control"></asp:TextBox>
        <br/>
     <asp:TextBox runat="server" ID ="txtEmail" placeholder ="Enter Email" Width ="400px" CssClass="form-control"></asp:TextBox>
        <br/>
     <asp:DropDownList runat="server" ID ="ddlSubjects" CssClass ="btn btn-primary dropdown-toggle dropdown-toggle-split">
     <asp:ListItem>Subjects</asp:ListItem>
        <asp:ListItem Value ="Science">Science</asp:ListItem>
         <asp:ListItem Value ="History">History</asp:ListItem>
         <asp:ListItem Value ="Accounting">Accounting</asp:ListItem>
     </asp:DropDownList><br /><br />
     <asp:TextBox runat="server" ID ="txtScore" placeholder ="Score"  ReadOnly="false"
         Width ="100px" CssClass="form-control"></asp:TextBox>
    <br /> <asp:Button ID ="btnSave" runat="server" Text="Save"   OnClick="btnSave_Click"
        OnClientClick='return confirm("Successful!");' CssClass="btn btn-success"></asp:Button>
         <asp:Button ID ="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" CssClass="btn btn-danger"></asp:Button><br />

</asp:Content>
