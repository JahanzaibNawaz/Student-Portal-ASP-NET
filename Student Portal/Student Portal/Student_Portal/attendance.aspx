<%@ Page Title="" Language="C#" MasterPageFile="~/Student_Portal/Master.Master" AutoEventWireup="true" CodeBehind="attendance.aspx.cs" Inherits="Student_Portal.Student_Portal.attendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                                       <th> ID</th>
                                       <th>Course Name</th>
                                       <th>Email</th>
                                       <th>Date</th>
                                       <th>Attendance</th>
                                       
                                   </tr>
                               </thead>
                                  <tbody>
                       </HeaderTemplate>
                       <ItemTemplate>
                                     <tr>
                                          <td><%# Eval("id") %></td>
                                          <td><%# Eval("coursename") %></td>
                                          <td><%# Eval("email") %></td>
                                          <td><%# Eval("date") %></td>
                                          <td><%# Eval("attendance") %></td>
                                          
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
</asp:Content>
