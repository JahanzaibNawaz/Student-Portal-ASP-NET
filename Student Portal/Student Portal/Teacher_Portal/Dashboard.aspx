<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher_Portal/Teacher.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Student_Portal.Teacher_Portal.Dashboard" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 103%;
            min-height: 1px;
            -ms-flex: 0 0 100%;
            flex: 0 0 100%;
            max-width: 100%;
            left: -13px;
            top: 0px;
            height: 262px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron bg-info" style="text-align:center;">
        <h1>Welcome To Portal</h1>
        <hr  />
    </div>
    <div class="jumbotron" style="text-align:center;">
         <div  style="overflow-x:auto;">
                   <asp:Repeater ID="studentNoticerptr" runat="server">
                       <HeaderTemplate>
                           <table class="table">
                               <thead class="bg-dark">
                                   <tr>
                                       <th>Course Name</th>
                                       <th>Notice</th>
                                       
                                   </tr>
                               </thead>
                                  <tbody>
                       </HeaderTemplate>
                       <ItemTemplate>
                                     <tr>
                                          <td><%# Eval("coursename") %></td>
                                          <td><%# Eval("notice") %></td>
                                          
                                      </tr>
                       </ItemTemplate>
                       <FooterTemplate>
                           </tbody>
                              </table>
                       </FooterTemplate>
                   </asp:Repeater>

                                                        
             </div>
    </div>








    <div class="row">
            <div class="col-lg-12" style="background-color:white;">
               <div class="panel panel-default">
                  <!-- Default panel contents -->
                  <div class="panel-heading"><h2>Student Record</h2></div>
                   <div  style="overflow-x:auto;">
                   <asp:Repeater ID="rptrStd" runat="server">
                       <HeaderTemplate>
                           <table class="table">
                               <thead class="bg-dark">
                                   <tr>
                                       <th>Reg ID</th>
                                       <th>Name</th>
                                       <th>F Name</th>
                                       <th>Mob No</th>
                                       <th>Email</th>
                                       <th>Pass</th>
                                       <th>Address</th>
                                       <th>Course</th>
                                       <th>Csharp</th>
                                       <th>C plus</th>
                                       <th>Asp.Net</th>
                                       <th>Ruby</th>
                                       <th>Python</th>
                                       <th>Java</th>
                                       <th>Assembly</th>
                                       <th>JScript</th>
                                   </tr>
                               </thead>
                                  <tbody>
                       </HeaderTemplate>
                       <ItemTemplate>
                                     <tr>
                                          <td><%# Eval("stdReg") %></td>
                                          <td><%# Eval("name") %></td>
                                          <td><%# Eval("fname") %></td>
                                          <td><%# Eval("mobNo") %></td>
                                          <td><%# Eval("email") %></td>
                                          <td><%# Eval("pass") %></td>
                                          <td><%# Eval("adrs") %></td>
                                          <td><%# Eval("course") %></td>
                                          <td><%# Eval("csharp") %></td>
                                          <td><%# Eval("cplusplus") %></td>
                                          <td><%# Eval("aspnet") %></td>
                                          <td><%# Eval("ruby") %></td>
                                          <td><%# Eval("python") %></td>
                                          <td><%# Eval("java") %></td>
                                          <td><%# Eval("assembly") %></td>
                                          <td><%# Eval("javascript") %></td>
                                      </tr>
                       </ItemTemplate>
                       <FooterTemplate>
                           </tbody>
                              </table>
                       </FooterTemplate>
                   </asp:Repeater>

                                                        
                      </div>
                </div>
            </div>
    </div>
    <br />

     <div class="row">
            <div class="col-lg-12" style="background-color:white;">
               <div class="panel panel-default">
                  <!-- Default panel contents -->
                  <div class="panel-heading"><h2>Time Table</h2></div>
                   <div  style="overflow-x:auto;">
                   <asp:Repeater ID="rptrTimetable" runat="server">
                       <HeaderTemplate>
                           <table class="table">
                               <thead class="bg-dark">
                                   <tr>
                                       <th>ID</th>                                       
                                       <th>Course</th>
                                       <th>Day</th>
                                       <th>Lecture One</th>
                                       <th>Time</th>
                                       <th>Lecture Two</th>
                                       <th>Time</th>
                                       
                                   </tr>
                               </thead>
                                  <tbody>
                       </HeaderTemplate>
                       <ItemTemplate>
                                     <tr>
                                          <td><%# Eval("Id") %></td>
                                          <td><%# Eval("coursename") %></td>
                                          <td><%# Eval("dayname") %></td>
                                          <td><%# Eval("lectureone") %></td>
                                          <td><%# Eval("timeone") %></td>
                                          <td><%# Eval("lecturetwo") %></td>
                                          <td><%# Eval("timetwo") %></td>
                                          
                                      </tr>
                       </ItemTemplate>
                       <FooterTemplate>
                           </tbody>
                              </table>
                       </FooterTemplate>
                   </asp:Repeater>

                                                        
                      </div>
                </div>
            </div>
    </div>
    
   
</asp:Content>
