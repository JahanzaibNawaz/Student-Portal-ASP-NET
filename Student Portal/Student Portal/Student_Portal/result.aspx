<%@ Page Title="" Language="C#" MasterPageFile="~/Student_Portal/Master.Master" AutoEventWireup="true" CodeBehind="result.aspx.cs" Inherits="Student_Portal.Student_Portal.result" %>
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
                                       
                                       <th>Course Name</th>                                       
                                       <th>Email</th>                                     
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
                                          
                                          <td><%# Eval("coursename") %></td>
                                          
                                          <td><%# Eval("email") %></td>
                                          
                                          
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
