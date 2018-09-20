<%@ Page Title="" Language="C#" MasterPageFile="~/Student_Portal/Master.Master" AutoEventWireup="true" CodeBehind="notice.aspx.cs" Inherits="Student_Portal.Student_Portal.notice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
</asp:Content>
