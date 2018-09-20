<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher_Portal/Teacher.Master" AutoEventWireup="true" CodeBehind="attendance.aspx.cs" Inherits="Student_Portal.Teacher_Portal.attendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
        <h2 style="text-align:center;">Student Attendance</h2>
        <br />
        <div class="form-group">
            <h4>Student Class: </h4>
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
            <h4>Attendance Date:</h4>
            <asp:TextBox runat="server" id="date" type="date" class="form-control" placeholder="Enter Attendance Date" required=""></asp:TextBox>
                        

        </div>
        <div class="form-group">
            <h4>Attendance:</h4>
            <asp:DropDownList ID="dayattendance" CssClass="form-control" runat="server">
                    <asp:ListItem>Absent</asp:ListItem>
                    <asp:ListItem>Present</asp:ListItem>
                    
                </asp:DropDownList>
                        
        </div>

        <asp:Button ID="addattendance_btn" CssClass="btn btn-primary " runat="server" Text="Submit" OnClick="addattendance_btn_Click"   />
    </div>
</asp:Content>
