<%@ Page Title="" Language="C#" MasterPageFile="~/Pharmacy.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="pro.Anonymous.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
           
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <center>
      
       <div>
           <h1 class="text-black"> <%=Resources.Resourse.owner %></h1>

           <table class="w-100" style="text-align:center ; margin:20px;  ">
               <tr>
                   <td>
                       <asp:Image ID="Image1" runat="server" Height="300px" Width="300px" ImageUrl="~/imgstaff/mustafa.png" />
                      
                       <br />
                       <center>
                       <asp:FormView ID="FormView1" runat="server" CellPadding="4" style="text-align:center" DataKeyNames="ApplicationId,LoweredUserName" DataSourceID="SqlDataSource2" ForeColor="#333333" Width="227px">
                           <EditItemTemplate>
                               ApplicationId:
                               <asp:Label ID="ApplicationIdLabel1" runat="server" Text='<%# Eval("ApplicationId") %>' />
                               <br />
                               UserId:
                               <asp:TextBox ID="UserIdTextBox" runat="server" Text='<%# Bind("UserId") %>' />
                               <br />
                               UserName:
                               <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                               <br />
                               LoweredUserName:
                               <asp:Label ID="LoweredUserNameLabel1" runat="server" Text='<%# Eval("LoweredUserName") %>' />
                               <br />
                               MobileAlias:
                               <asp:TextBox ID="MobileAliasTextBox" runat="server" Text='<%# Bind("MobileAlias") %>' />
                               <br />
                               IsAnonymous:
                               <asp:CheckBox ID="IsAnonymousCheckBox" runat="server" Checked='<%# Bind("IsAnonymous") %>' />
                               <br />
                               LastActivityDate:
                               <asp:TextBox ID="LastActivityDateTextBox" runat="server" Text='<%# Bind("LastActivityDate") %>' />
                               <br />
                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                           </EditItemTemplate>
                           <EditRowStyle BackColor="#2461BF" />
                           <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                           <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                           <InsertItemTemplate>
                               ApplicationId:
                               <asp:TextBox ID="ApplicationIdTextBox" runat="server" Text='<%# Bind("ApplicationId") %>' />
                               <br />
                               UserId:
                               <asp:TextBox ID="UserIdTextBox0" runat="server" Text='<%# Bind("UserId") %>' />
                               <br />
                               UserName:
                               <asp:TextBox ID="UserNameTextBox0" runat="server" Text='<%# Bind("UserName") %>' />
                               <br />
                               LoweredUserName:
                               <asp:TextBox ID="LoweredUserNameTextBox" runat="server" Text='<%# Bind("LoweredUserName") %>' />
                               <br />
                               MobileAlias:
                               <asp:TextBox ID="MobileAliasTextBox0" runat="server" Text='<%# Bind("MobileAlias") %>' />
                               <br />
                               IsAnonymous:
                               <asp:CheckBox ID="IsAnonymousCheckBox0" runat="server" Checked='<%# Bind("IsAnonymous") %>' />
                               <br />
                               LastActivityDate:
                               <asp:TextBox ID="LastActivityDateTextBox0" runat="server" Text='<%# Bind("LastActivityDate") %>' />
                               <br />
                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                           </InsertItemTemplate>
                           <ItemTemplate>
                               <br />
                               &nbsp;<asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
                               <br />
                               msc in pharmcy manager<br />
                           </ItemTemplate>
                           <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                           <RowStyle BackColor="#EFF3FB" />
                       </asp:FormView>
                           </center>
                       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyAspNetConnectionString %>" DeleteCommand="DELETE FROM [aspnet_Users] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (@ApplicationId, @UserId, @UserName, @LoweredUserName, @MobileAlias, @IsAnonymous, @LastActivityDate)" ProviderName="<%$ ConnectionStrings:MyAspNetConnectionString.ProviderName %>" SelectCommand="SELECT ApplicationId, UserId, UserName, LoweredUserName, MobileAlias, IsAnonymous, LastActivityDate FROM aspnet_Users WHERE (UserName = N'mustafa')" UpdateCommand="UPDATE [aspnet_Users] SET [ApplicationId] = @ApplicationId, [UserName] = @UserName, [LoweredUserName] = @LoweredUserName, [MobileAlias] = @MobileAlias, [IsAnonymous] = @IsAnonymous, [LastActivityDate] = @LastActivityDate WHERE [UserId] = @UserId">
                           <DeleteParameters>
                               <asp:Parameter Name="UserId" Type="Object" />
                           </DeleteParameters>
                           <InsertParameters>
                               <asp:Parameter Name="ApplicationId" Type="Object" />
                               <asp:Parameter Name="UserId" Type="Object" />
                               <asp:Parameter Name="UserName" Type="String" />
                               <asp:Parameter Name="LoweredUserName" Type="String" />
                               <asp:Parameter Name="MobileAlias" Type="String" />
                               <asp:Parameter Name="IsAnonymous" Type="Boolean" />
                               <asp:Parameter Name="LastActivityDate" Type="DateTime" />
                           </InsertParameters>
                           <UpdateParameters>
                               <asp:Parameter Name="ApplicationId" Type="Object" />
                               <asp:Parameter Name="UserName" Type="String" />
                               <asp:Parameter Name="LoweredUserName" Type="String" />
                               <asp:Parameter Name="MobileAlias" Type="String" />
                               <asp:Parameter Name="IsAnonymous" Type="Boolean" />
                               <asp:Parameter Name="LastActivityDate" Type="DateTime" />
                               <asp:Parameter Name="UserId" Type="Object" />
                           </UpdateParameters>
                       </asp:SqlDataSource>
                      
                   </td>
                   
                   <td>
                       <asp:Image ID="Image2" runat="server" Height="300px" Width="300px" ImageUrl="~/imgstaff/doaa.png" />
                       <br />
                       <center>
                       <asp:FormView ID="FormView2" runat="server" CellPadding="4" style="text-align:center" DataKeyNames="ApplicationId,LoweredUserName" datasourceid="SqlDataSource3" ForeColor="#333333" Width="227px">
                           <EditItemTemplate>
                               ApplicationId:
                               <asp:Label ID="ApplicationIdLabel1" runat="server" Text='<%# Eval("ApplicationId") %>' />
                               <br />
                               UserId:
                               <asp:TextBox ID="UserIdTextBox" runat="server" Text='<%# Bind("UserId") %>' />
                               <br />
                               UserName:
                               <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                               <br />
                               LoweredUserName:
                               <asp:Label ID="LoweredUserNameLabel1" runat="server" Text='<%# Eval("LoweredUserName") %>' />
                               <br />
                               MobileAlias:
                               <asp:TextBox ID="MobileAliasTextBox" runat="server" Text='<%# Bind("MobileAlias") %>' />
                               <br />
                               IsAnonymous:
                               <asp:CheckBox ID="IsAnonymousCheckBox" runat="server" Checked='<%# Bind("IsAnonymous") %>' />
                               <br />
                               LastActivityDate:
                               <asp:TextBox ID="LastActivityDateTextBox" runat="server" Text='<%# Bind("LastActivityDate") %>' />
                               <br />
                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                           </EditItemTemplate>
                           <EditRowStyle BackColor="#2461BF" />
                           <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                           <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                           <InsertItemTemplate>
                               ApplicationId:
                               <asp:TextBox ID="ApplicationIdTextBox" runat="server" Text='<%# Bind("ApplicationId") %>' />
                               <br />
                               UserId:
                               <asp:TextBox ID="UserIdTextBox0" runat="server" Text='<%# Bind("UserId") %>' />
                               <br />
                               UserName:
                               <asp:TextBox ID="UserNameTextBox0" runat="server" Text='<%# Bind("UserName") %>' />
                               <br />
                               LoweredUserName:
                               <asp:TextBox ID="LoweredUserNameTextBox" runat="server" Text='<%# Bind("LoweredUserName") %>' />
                               <br />
                               MobileAlias:
                               <asp:TextBox ID="MobileAliasTextBox0" runat="server" Text='<%# Bind("MobileAlias") %>' />
                               <br />
                               IsAnonymous:
                               <asp:CheckBox ID="IsAnonymousCheckBox0" runat="server" Checked='<%# Bind("IsAnonymous") %>' />
                               <br />
                               LastActivityDate:
                               <asp:TextBox ID="LastActivityDateTextBox0" runat="server" Text='<%# Bind("LastActivityDate") %>' />
                               <br />
                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                           </InsertItemTemplate>
                           <ItemTemplate>
                               <br />
                               &nbsp;<asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
                               <br />
                               msc in pharmcy manager<br />
                           </ItemTemplate>
                           <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                           <RowStyle BackColor="#EFF3FB" />
                       </asp:FormView>
                           </center>
                       <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MyAspNetConnectionString %>" DeleteCommand="DELETE FROM [aspnet_Users] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (@ApplicationId, @UserId, @UserName, @LoweredUserName, @MobileAlias, @IsAnonymous, @LastActivityDate)" ProviderName="<%$ ConnectionStrings:MyAspNetConnectionString.ProviderName %>" SelectCommand="SELECT ApplicationId, UserId, UserName, LoweredUserName, MobileAlias, IsAnonymous, LastActivityDate FROM aspnet_Users WHERE (UserName = N'doaa')" UpdateCommand="UPDATE [aspnet_Users] SET [ApplicationId] = @ApplicationId, [UserName] = @UserName, [LoweredUserName] = @LoweredUserName, [MobileAlias] = @MobileAlias, [IsAnonymous] = @IsAnonymous, [LastActivityDate] = @LastActivityDate WHERE [UserId] = @UserId">
                           <DeleteParameters>
                               <asp:Parameter Name="UserId" Type="Object" />
                           </DeleteParameters>
                           <InsertParameters>
                               <asp:Parameter Name="ApplicationId" Type="Object" />
                               <asp:Parameter Name="UserId" Type="Object" />
                               <asp:Parameter Name="UserName" Type="String" />
                               <asp:Parameter Name="LoweredUserName" Type="String" />
                               <asp:Parameter Name="MobileAlias" Type="String" />
                               <asp:Parameter Name="IsAnonymous" Type="Boolean" />
                               <asp:Parameter Name="LastActivityDate" Type="DateTime" />
                           </InsertParameters>
                           <UpdateParameters>
                               <asp:Parameter Name="ApplicationId" Type="Object" />
                               <asp:Parameter Name="UserName" Type="String" />
                               <asp:Parameter Name="LoweredUserName" Type="String" />
                               <asp:Parameter Name="MobileAlias" Type="String" />
                               <asp:Parameter Name="IsAnonymous" Type="Boolean" />
                               <asp:Parameter Name="LastActivityDate" Type="DateTime" />
                               <asp:Parameter Name="UserId" Type="Object" />
                           </UpdateParameters>
                       </asp:SqlDataSource>
                   </td>
                   
               </tr>
           </table>
           <div>
               <h1 class="text-black"> <%=Resources.Resourse.empl %></h1>

               <table class="w-100"  style="text-align:center ; margin:20px;  ">
                   <tr>
                       <td>
                           <asp:Image ID="Image3" runat="server" Height="300px" ImageUrl="~/imgstaff/ahmed.png" Width="300px" />
                           <br />
                           <center>
                           <asp:FormView ID="FormView3" runat="server" CellPadding="4"  style="text-align:center" DataKeyNames="ApplicationId,LoweredUserName" datasourceid="SqlDataSource4" ForeColor="#333333" Width="227px">
                               <EditItemTemplate>
                                   ApplicationId:
                                   <asp:Label ID="ApplicationIdLabel1" runat="server" Text='<%# Eval("ApplicationId") %>' />
                                   <br />
                                   UserId:
                                   <asp:TextBox ID="UserIdTextBox" runat="server" Text='<%# Bind("UserId") %>' />
                                   <br />
                                   UserName:
                                   <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                                   <br />
                                   LoweredUserName:
                                   <asp:Label ID="LoweredUserNameLabel1" runat="server" Text='<%# Eval("LoweredUserName") %>' />
                                   <br />
                                   MobileAlias:
                                   <asp:TextBox ID="MobileAliasTextBox" runat="server" Text='<%# Bind("MobileAlias") %>' />
                                   <br />
                                   IsAnonymous:
                                   <asp:CheckBox ID="IsAnonymousCheckBox" runat="server" Checked='<%# Bind("IsAnonymous") %>' />
                                   <br />
                                   LastActivityDate:
                                   <asp:TextBox ID="LastActivityDateTextBox" runat="server" Text='<%# Bind("LastActivityDate") %>' />
                                   <br />
                                   <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                   &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                               </EditItemTemplate>
                               <EditRowStyle BackColor="#2461BF" />
                               <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                               <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                               <InsertItemTemplate>
                                   ApplicationId:
                                   <asp:TextBox ID="ApplicationIdTextBox" runat="server" Text='<%# Bind("ApplicationId") %>' />
                                   <br />
                                   UserId:
                                   <asp:TextBox ID="UserIdTextBox0" runat="server" Text='<%# Bind("UserId") %>' />
                                   <br />
                                   UserName:
                                   <asp:TextBox ID="UserNameTextBox0" runat="server" Text='<%# Bind("UserName") %>' />
                                   <br />
                                   LoweredUserName:
                                   <asp:TextBox ID="LoweredUserNameTextBox" runat="server" Text='<%# Bind("LoweredUserName") %>' />
                                   <br />
                                   MobileAlias:
                                   <asp:TextBox ID="MobileAliasTextBox0" runat="server" Text='<%# Bind("MobileAlias") %>' />
                                   <br />
                                   IsAnonymous:
                                   <asp:CheckBox ID="IsAnonymousCheckBox0" runat="server" Checked='<%# Bind("IsAnonymous") %>' />
                                   <br />
                                   LastActivityDate:
                                   <asp:TextBox ID="LastActivityDateTextBox0" runat="server" Text='<%# Bind("LastActivityDate") %>' />
                                   <br />
                                   <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                   &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                               </InsertItemTemplate>
                               <ItemTemplate>
                                   <br />
                                   &nbsp;<asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
                                   <br />
                                   msc in pharmcy manager<br />
                               </ItemTemplate>
                               <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                               <RowStyle BackColor="#EFF3FB" />
                           </asp:FormView>
                               </center>
                           <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:MyAspNetConnectionString %>" DeleteCommand="DELETE FROM [aspnet_Users] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (@ApplicationId, @UserId, @UserName, @LoweredUserName, @MobileAlias, @IsAnonymous, @LastActivityDate)" ProviderName="<%$ ConnectionStrings:MyAspNetConnectionString.ProviderName %>" SelectCommand="SELECT ApplicationId, UserId, UserName, LoweredUserName, MobileAlias, IsAnonymous, LastActivityDate FROM aspnet_Users WHERE (UserName = N'omar')" UpdateCommand="UPDATE [aspnet_Users] SET [ApplicationId] = @ApplicationId, [UserName] = @UserName, [LoweredUserName] = @LoweredUserName, [MobileAlias] = @MobileAlias, [IsAnonymous] = @IsAnonymous, [LastActivityDate] = @LastActivityDate WHERE [UserId] = @UserId">
                               <DeleteParameters>
                                   <asp:Parameter Name="UserId" Type="Object" />
                               </DeleteParameters>
                               <InsertParameters>
                                   <asp:Parameter Name="ApplicationId" Type="Object" />
                                   <asp:Parameter Name="UserId" Type="Object" />
                                   <asp:Parameter Name="UserName" Type="String" />
                                   <asp:Parameter Name="LoweredUserName" Type="String" />
                                   <asp:Parameter Name="MobileAlias" Type="String" />
                                   <asp:Parameter Name="IsAnonymous" Type="Boolean" />
                                   <asp:Parameter Name="LastActivityDate" Type="DateTime" />
                               </InsertParameters>
                               <UpdateParameters>
                                   <asp:Parameter Name="ApplicationId" Type="Object" />
                                   <asp:Parameter Name="UserName" Type="String" />
                                   <asp:Parameter Name="LoweredUserName" Type="String" />
                                   <asp:Parameter Name="MobileAlias" Type="String" />
                                   <asp:Parameter Name="IsAnonymous" Type="Boolean" />
                                   <asp:Parameter Name="LastActivityDate" Type="DateTime" />
                                   <asp:Parameter Name="UserId" Type="Object" />
                               </UpdateParameters>
                           </asp:SqlDataSource>
                       </td>
                       <td>
                           <asp:Image ID="Image4" runat="server" Height="300px" ImageUrl="~/imgstaff/omar.png" Width="300px" />
                           <br />
                           <center>
                           <asp:FormView ID="FormView4" runat="server" CellPadding="4" style="text-align:center" DataKeyNames="ApplicationId,LoweredUserName" datasourceid="SqlDataSource5" ForeColor="#333333" Width="227px">
                               <EditItemTemplate>
                                   ApplicationId:
                                   <asp:Label ID="ApplicationIdLabel1" runat="server" Text='<%# Eval("ApplicationId") %>' />
                                   <br />
                                   UserId:
                                   <asp:TextBox ID="UserIdTextBox" runat="server" Text='<%# Bind("UserId") %>' />
                                   <br />
                                   UserName:
                                   <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                                   <br />
                                   LoweredUserName:
                                   <asp:Label ID="LoweredUserNameLabel1" runat="server" Text='<%# Eval("LoweredUserName") %>' />
                                   <br />
                                   MobileAlias:
                                   <asp:TextBox ID="MobileAliasTextBox" runat="server" Text='<%# Bind("MobileAlias") %>' />
                                   <br />
                                   IsAnonymous:
                                   <asp:CheckBox ID="IsAnonymousCheckBox" runat="server" Checked='<%# Bind("IsAnonymous") %>' />
                                   <br />
                                   LastActivityDate:
                                   <asp:TextBox ID="LastActivityDateTextBox" runat="server" Text='<%# Bind("LastActivityDate") %>' />
                                   <br />
                                   <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                   &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                               </EditItemTemplate>
                               <EditRowStyle BackColor="#2461BF" />
                               <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                               <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                               <InsertItemTemplate>
                                   ApplicationId:
                                   <asp:TextBox ID="ApplicationIdTextBox" runat="server" Text='<%# Bind("ApplicationId") %>' />
                                   <br />
                                   UserId:
                                   <asp:TextBox ID="UserIdTextBox0" runat="server" Text='<%# Bind("UserId") %>' />
                                   <br />
                                   UserName:
                                   <asp:TextBox ID="UserNameTextBox0" runat="server" Text='<%# Bind("UserName") %>' />
                                   <br />
                                   LoweredUserName:
                                   <asp:TextBox ID="LoweredUserNameTextBox" runat="server" Text='<%# Bind("LoweredUserName") %>' />
                                   <br />
                                   MobileAlias:
                                   <asp:TextBox ID="MobileAliasTextBox0" runat="server" Text='<%# Bind("MobileAlias") %>' />
                                   <br />
                                   IsAnonymous:
                                   <asp:CheckBox ID="IsAnonymousCheckBox0" runat="server" Checked='<%# Bind("IsAnonymous") %>' />
                                   <br />
                                   LastActivityDate:
                                   <asp:TextBox ID="LastActivityDateTextBox0" runat="server" Text='<%# Bind("LastActivityDate") %>' />
                                   <br />
                                   <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                   &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                               </InsertItemTemplate>
                               <ItemTemplate>
                                   <br />
                                   &nbsp;<asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
                                   <br />
                                   msc in pharmcy manager<br />
                               </ItemTemplate>
                               <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                               <RowStyle BackColor="#EFF3FB" />
                           </asp:FormView>
                               </center>
                           <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:MyAspNetConnectionString %>" DeleteCommand="DELETE FROM [aspnet_Users] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (@ApplicationId, @UserId, @UserName, @LoweredUserName, @MobileAlias, @IsAnonymous, @LastActivityDate)" ProviderName="<%$ ConnectionStrings:MyAspNetConnectionString.ProviderName %>" SelectCommand="SELECT ApplicationId, UserId, UserName, LoweredUserName, MobileAlias, IsAnonymous, LastActivityDate FROM aspnet_Users WHERE (UserName = N'samy')" UpdateCommand="UPDATE [aspnet_Users] SET [ApplicationId] = @ApplicationId, [UserName] = @UserName, [LoweredUserName] = @LoweredUserName, [MobileAlias] = @MobileAlias, [IsAnonymous] = @IsAnonymous, [LastActivityDate] = @LastActivityDate WHERE [UserId] = @UserId">
                               <DeleteParameters>
                                   <asp:Parameter Name="UserId" Type="Object" />
                               </DeleteParameters>
                               <InsertParameters>
                                   <asp:Parameter Name="ApplicationId" Type="Object" />
                                   <asp:Parameter Name="UserId" Type="Object" />
                                   <asp:Parameter Name="UserName" Type="String" />
                                   <asp:Parameter Name="LoweredUserName" Type="String" />
                                   <asp:Parameter Name="MobileAlias" Type="String" />
                                   <asp:Parameter Name="IsAnonymous" Type="Boolean" />
                                   <asp:Parameter Name="LastActivityDate" Type="DateTime" />
                               </InsertParameters>
                               <UpdateParameters>
                                   <asp:Parameter Name="ApplicationId" Type="Object" />
                                   <asp:Parameter Name="UserName" Type="String" />
                                   <asp:Parameter Name="LoweredUserName" Type="String" />
                                   <asp:Parameter Name="MobileAlias" Type="String" />
                                   <asp:Parameter Name="IsAnonymous" Type="Boolean" />
                                   <asp:Parameter Name="LastActivityDate" Type="DateTime" />
                                   <asp:Parameter Name="UserId" Type="Object" />
                               </UpdateParameters>
                           </asp:SqlDataSource>
                       </td>
                       <td>
                           <asp:Image ID="Image5" runat="server" Height="300px" ImageUrl="~/imgstaff/samy.png" Width="300px" />
                           <br />
                           <center>
                           <asp:FormView ID="FormView5" runat="server" CellPadding="4" style="text-align:center" DataKeyNames="ApplicationId,LoweredUserName" datasourceid="SqlDataSource6" ForeColor="#333333" Width="227px">
                               <EditItemTemplate>
                                   ApplicationId:
                                   <asp:Label ID="ApplicationIdLabel1" runat="server" Text='<%# Eval("ApplicationId") %>' />
                                   <br />
                                   UserId:
                                   <asp:TextBox ID="UserIdTextBox" runat="server" Text='<%# Bind("UserId") %>' />
                                   <br />
                                   UserName:
                                   <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                                   <br />
                                   LoweredUserName:
                                   <asp:Label ID="LoweredUserNameLabel1" runat="server" Text='<%# Eval("LoweredUserName") %>' />
                                   <br />
                                   MobileAlias:
                                   <asp:TextBox ID="MobileAliasTextBox" runat="server" Text='<%# Bind("MobileAlias") %>' />
                                   <br />
                                   IsAnonymous:
                                   <asp:CheckBox ID="IsAnonymousCheckBox" runat="server" Checked='<%# Bind("IsAnonymous") %>' />
                                   <br />
                                   LastActivityDate:
                                   <asp:TextBox ID="LastActivityDateTextBox" runat="server" Text='<%# Bind("LastActivityDate") %>' />
                                   <br />
                                   <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                   &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                               </EditItemTemplate>
                               <EditRowStyle BackColor="#2461BF" />
                               <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                               <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                               <InsertItemTemplate>
                                   ApplicationId:
                                   <asp:TextBox ID="ApplicationIdTextBox" runat="server" Text='<%# Bind("ApplicationId") %>' />
                                   <br />
                                   UserId:
                                   <asp:TextBox ID="UserIdTextBox0" runat="server" Text='<%# Bind("UserId") %>' />
                                   <br />
                                   UserName:
                                   <asp:TextBox ID="UserNameTextBox0" runat="server" Text='<%# Bind("UserName") %>' />
                                   <br />
                                   LoweredUserName:
                                   <asp:TextBox ID="LoweredUserNameTextBox" runat="server" Text='<%# Bind("LoweredUserName") %>' />
                                   <br />
                                   MobileAlias:
                                   <asp:TextBox ID="MobileAliasTextBox0" runat="server" Text='<%# Bind("MobileAlias") %>' />
                                   <br />
                                   IsAnonymous:
                                   <asp:CheckBox ID="IsAnonymousCheckBox0" runat="server" Checked='<%# Bind("IsAnonymous") %>' />
                                   <br />
                                   LastActivityDate:
                                   <asp:TextBox ID="LastActivityDateTextBox0" runat="server" Text='<%# Bind("LastActivityDate") %>' />
                                   <br />
                                   <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                   &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                               </InsertItemTemplate>
                               <ItemTemplate>
                                   <br />
                                   <asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
                                   <br />
                                   msc in pharmcy manager<br />
                               </ItemTemplate>
                               <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                               <RowStyle BackColor="#EFF3FB" />
                           </asp:FormView>
                           </center>
                           <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:MyAspNetConnectionString %>" DeleteCommand="DELETE FROM [aspnet_Users] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (@ApplicationId, @UserId, @UserName, @LoweredUserName, @MobileAlias, @IsAnonymous, @LastActivityDate)" ProviderName="<%$ ConnectionStrings:MyAspNetConnectionString.ProviderName %>" SelectCommand="SELECT ApplicationId, UserId, UserName, LoweredUserName, MobileAlias, IsAnonymous, LastActivityDate FROM aspnet_Users WHERE (UserName = N'ahmed')" UpdateCommand="UPDATE [aspnet_Users] SET [ApplicationId] = @ApplicationId, [UserName] = @UserName, [LoweredUserName] = @LoweredUserName, [MobileAlias] = @MobileAlias, [IsAnonymous] = @IsAnonymous, [LastActivityDate] = @LastActivityDate WHERE [UserId] = @UserId">
                               <DeleteParameters>
                                   <asp:Parameter Name="UserId" Type="Object" />
                               </DeleteParameters>
                               <InsertParameters>
                                   <asp:Parameter Name="ApplicationId" Type="Object" />
                                   <asp:Parameter Name="UserId" Type="Object" />
                                   <asp:Parameter Name="UserName" Type="String" />
                                   <asp:Parameter Name="LoweredUserName" Type="String" />
                                   <asp:Parameter Name="MobileAlias" Type="String" />
                                   <asp:Parameter Name="IsAnonymous" Type="Boolean" />
                                   <asp:Parameter Name="LastActivityDate" Type="DateTime" />
                               </InsertParameters>
                               <UpdateParameters>
                                   <asp:Parameter Name="ApplicationId" Type="Object" />
                                   <asp:Parameter Name="UserName" Type="String" />
                                   <asp:Parameter Name="LoweredUserName" Type="String" />
                                   <asp:Parameter Name="MobileAlias" Type="String" />
                                   <asp:Parameter Name="IsAnonymous" Type="Boolean" />
                                   <asp:Parameter Name="LastActivityDate" Type="DateTime" />
                                   <asp:Parameter Name="UserId" Type="Object" />
                               </UpdateParameters>
                           </asp:SqlDataSource>
                       </td>
                   </tr>
               </table>

           </div>
           <br />

       </div>
    </center>
</asp:Content>
