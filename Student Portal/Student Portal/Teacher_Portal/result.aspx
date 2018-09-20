<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher_Portal/Teacher.Master" AutoEventWireup="true" CodeBehind="result.aspx.cs" Inherits="Student_Portal.Teacher_Portal.result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
        <h2 style="text-align:center;">Student Result</h2>
        <br />
        <div class="form-group">
            <h4>Result Class: </h4>
                <asp:DropDownList ID="coursename" CssClass="form-control" runat="server">
                    <asp:ListItem Selected="True">BSSE</asp:ListItem>
                    <asp:ListItem>BSCS</asp:ListItem>
                    <asp:ListItem>BSIT</asp:ListItem>
                </asp:DropDownList>
            
        </div>
        <div class="form-group">
            <h4>Email of Student:</h4>
            <asp:TextBox runat="server" id="email" type="email" class="form-control" placeholder="Enter Student Email" required=""></asp:TextBox>
                        
        </div>
        <div class="form-group">
            <h4>C Sharp</h4>
            <asp:TextBox runat="server" type="number" id="csharp" class="form-control" placeholder="Enter Marks" required=""></asp:TextBox>
                        
        </div>
        <div class="form-group">
            <h4>C Plus Plus</h4>
            <asp:TextBox runat="server" type="number" id="cplusplus" class="form-control" placeholder="Enter Marks" required=""></asp:TextBox>
                        
        </div>
        <div class="form-group">
            <h4>Asp .Net</h4>
            <asp:TextBox runat="server" type="number" id="aspnet" class="form-control" placeholder="Enter Marks" required=""></asp:TextBox>
                        
        </div>
        <div class="form-group">
            <h4>Ruby</h4>
            <asp:TextBox runat="server" type="number" id="ruby" class="form-control" placeholder="Enter Marks" required=""></asp:TextBox>
                        
        </div>
        <div class="form-group">
            <h4>Python</h4>
            <asp:TextBox runat="server" type="number" id="python" class="form-control" placeholder="Enter Marks" required=""></asp:TextBox>
                        
        </div>
        <div class="form-group">
            <h4>java</h4>
            <asp:TextBox runat="server" type="number" id="java" class="form-control" placeholder="Enter Marks" required=""></asp:TextBox>
                        
        </div>
        <div class="form-group">
            <h4>Assembly</h4>
            <asp:TextBox runat="server" type="number" id="assembly" class="form-control" placeholder="Enter Marks" required=""></asp:TextBox>
                        
        </div>
        <div class="form-group">
            <h4>JavaScript</h4>
            <asp:TextBox runat="server" type="number" id="javascript" class="form-control" placeholder="Enter Marks" required=""></asp:TextBox>
                        
        </div>
        
        
        <asp:Button ID="addresult_btn" CssClass="btn btn-primary " runat="server" Text="Submit" OnClick="addresult_Click"  />
    </div>
</asp:Content>
