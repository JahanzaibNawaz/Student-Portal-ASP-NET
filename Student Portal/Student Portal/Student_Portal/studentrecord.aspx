<%@ Page Title="" Language="C#" MasterPageFile="~/Student_Portal/Master.Master" AutoEventWireup="true" CodeBehind="studentrecord.aspx.cs" Inherits="Student_Portal.Student_Portal.studentrecord" %>
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
</asp:Content>
