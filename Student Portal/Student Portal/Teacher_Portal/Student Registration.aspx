<%@ Page  Title="" Language="C#" MasterPageFile="~/Teacher_Portal/Teacher.Master" AutoEventWireup="true" CodeBehind="Student Registration.aspx.cs" Inherits="Student_Portal.Teacher_Portal.Student_Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 60%;
            max-width: 1320px;
            min-width: 992px;
            height: 312px;
            margin-left: auto;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron" style="width:80%; margin: auto; border: 2px solid black;">
           
                <h2 style="text-align:center; font-weight:bold; font-size:26px; ">Student Registration Form</h2>
                
                <div class="form-group">
                        <label for="stdName"><b>Student Name</b></label>
                        <asp:TextBox runat="server" id="stdname" class="form-control" placeholder="Enter Student Name" required=""></asp:TextBox>
                        <label for="fatherName"><b>Father Name</b></label>
                        <asp:TextBox runat="server" ID="stdfname" class="form-control" placeholder="Enter Father Name"  required=""></asp:TextBox>
                 </div>
                <div class="form-group">
                            <label for="stdName"><b>Mobile Number</b></label>
                            <asp:TextBox runat="server" id="stdmobno" class="form-control" type="number" placeholder="Mobile Number" required=""></asp:TextBox>
                            <label for="stdEmail"><b>Email</b></label>
                            <asp:TextBox runat="server" id="stdemail" class="form-control" placeholder="Enter Email" required=""></asp:TextBox>
                            <label for="stdPass"><b>Enter Password</b></label>
                            <asp:TextBox runat="server" id="stdpass" class="form-control" placeholder="Enter Password" required=""></asp:TextBox>

                            <label for="stdAdd"><b>Address</b></label>
                            <asp:TextBox runat="server" ID="stdadrs" class="form-control" placeholder="Enter Address" required=""></asp:TextBox>
                 </div>
                <div class="form-group">
                    <label for="stdCourse"><b>Course of Choice:</b></label>
                    
                    <asp:DropDownList ID="stdcourse" Class="form-control" runat="server">
                        <asp:ListItem>BSCS</asp:ListItem>
                        <asp:ListItem>BSSE</asp:ListItem>
                        <asp:ListItem>BSIT</asp:ListItem>
                    </asp:DropDownList>

                   
                     
                </div>
               <div class="form-group">
                    <label ><b>Subject of Choice:</b></label>
                    <br />
                    <div class="checkbox-inline">
                        <asp:CheckBox ID="csharp" runat="server" Text="C Sharp" />
                    </div>
                   <div class="checkbox-inline">
                     <asp:CheckBox ID="cplusplus" runat="server" Text="C plus plus" />
                </div>
                   <div class="checkbox-inline">
                     <asp:CheckBox ID="aspnet" runat="server" Text="Asp.net" />
                    </div>
                   <div class="checkbox-inline">
                     <asp:CheckBox ID="ruby" runat="server" Text="Ruby" />
                       </div>
                   <div class="checkbox-inline">
                     <asp:CheckBox ID="python" runat="server" Text="Python" />
                       </div>
                   <div class="checkbox-inline">
                     <asp:CheckBox ID="java" runat="server" Text="Java" />
                       </div>
                   <div class="checkbox-inline">
                     <asp:CheckBox ID="assembly" runat="server" Text="Assembly" />
                       </div>
                   <div class="checkbox-inline">
                     <asp:CheckBox ID="javascript" runat="server" Text="JavaScript" />
                       </div>
               </div>
               <div class="form-group">
                   <asp:Button ID="registerStudent" Class="btn btn-success btn-block" runat="server" Text="Register Student" OnClick="registerStudent_Click" />
                </div>

           
                
            
        </div>

</asp:Content>
