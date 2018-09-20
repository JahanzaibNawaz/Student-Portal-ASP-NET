<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher_Portal/Teacher.Master" AutoEventWireup="true" CodeBehind="addnotice.aspx.cs" Inherits="Student_Portal.Teacher_Portal.addnotice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
        <div class="form-group">
            <h2>Notification For Class: 
                <asp:DropDownList ID="coursename" CssClass="form-control" runat="server">
                    <asp:ListItem>BSSE</asp:ListItem>
                    <asp:ListItem>BSCS</asp:ListItem>
                    <asp:ListItem>BSIT</asp:ListItem>
                </asp:DropDownList>
            </h2>
            

        </div>
        <div class="form-group">
          <label for="comment">Notice:</label>
            <asp:TextBox ID="notice" type="text" runat="server" class="form-control" required=""></asp:TextBox>
            
        </div>
        <asp:Button ID="addnotice_btn" CssClass="btn btn-primary " runat="server" Text="Submit" OnClick="addnotice_btn_Click" />
    </div>
</asp:Content>
