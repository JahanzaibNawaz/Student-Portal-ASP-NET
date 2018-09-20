<%@ Page Title="" Language="C#" MasterPageFile="~/Student_Portal/Master.Master" AutoEventWireup="true" CodeBehind="timetable.aspx.cs" Inherits="Student_Portal.Student_Portal.timetable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
