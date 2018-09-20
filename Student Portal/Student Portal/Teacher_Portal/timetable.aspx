<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher_Portal/Teacher.Master" AutoEventWireup="true" CodeBehind="timetable.aspx.cs" Inherits="Student_Portal.Teacher_Portal.timetable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
        <div class="form-group">
            <h3>Time Table For Class: </h3>
                <asp:DropDownList ID="coursename" CssClass="form-control" runat="server">
                    <asp:ListItem>BSSE</asp:ListItem>
                    <asp:ListItem>BSCS</asp:ListItem>
                    <asp:ListItem>BSIT</asp:ListItem>
                </asp:DropDownList>
            
            

        </div>
        <div class="form-group">
            <h4>Day: </h4>

                <asp:DropDownList ID="dayname" CssClass="form-control" runat="server">
                    <asp:ListItem>Monday</asp:ListItem>
                    <asp:ListItem>Tuesday</asp:ListItem>
                    <asp:ListItem>Wednesday</asp:ListItem>
                    <asp:ListItem>Thursday</asp:ListItem>
                    <asp:ListItem>Friday</asp:ListItem>
                </asp:DropDownList>          
        </div>
        <div class="form-group">
            <h4>Lecture One: </h4>

                <asp:DropDownList ID="lectureone" CssClass="form-control" runat="server">
                    <asp:ListItem>ASPNET</asp:ListItem>
                    <asp:ListItem>CPLUSPLUS</asp:ListItem>
                    <asp:ListItem>JAVA</asp:ListItem>
                    <asp:ListItem>PYTHON</asp:ListItem>
                    <asp:ListItem>RUBY</asp:ListItem>
                     <asp:ListItem>JAVASCRIPT</asp:ListItem>
                     <asp:ListItem>RUBY</asp:ListItem>
                </asp:DropDownList>
            <h4>Time:</h4>
            <asp:TextBox ID="timeone" type="time" CssClass="form-control" runat="server" required=""></asp:TextBox>
        </div>
        <div class="form-group">
            <h4>Lecture Two: </h4>

                <asp:DropDownList ID="lecturetwo" CssClass="form-control" runat="server">
                    <asp:ListItem>ASPNET</asp:ListItem>
                    <asp:ListItem>CPLUSPLUS</asp:ListItem>
                    <asp:ListItem>JAVA</asp:ListItem>
                    <asp:ListItem>PYTHON</asp:ListItem>
                    <asp:ListItem>RUBY</asp:ListItem>
                     <asp:ListItem>JAVASCRIPT</asp:ListItem>
                     <asp:ListItem>ASSEMBLY</asp:ListItem>
                </asp:DropDownList>
            <h4>Time:</h4>
            <asp:TextBox ID="timetwo" type="time" CssClass="form-control" runat="server" required=""></asp:TextBox>
        </div>
        
        <asp:Button ID="addtimetable_btn" CssClass="btn btn-primary " runat="server" Text="Submit" OnClick="addtimetable_btn_Click"  />
    </div>
</asp:Content>
