<%@ Page Title="" Language="C#" MasterPageFile="~/Pharmacy.Master" AutoEventWireup="true" CodeBehind="Edit_Invoice.aspx.cs" Inherits="pro.Staff.Edit_Invoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <center>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="Inv_ID" DataSourceID="SqlDataSource1" Font-Size="X-Large" ForeColor="#333333" Width="430px">
    <EditItemTemplate>
        Inv_ID:
        <asp:Label ID="Inv_IDLabel1" runat="server" Text='<%# Eval("Inv_ID") %>' />
        <br />
        Inv_Name:
        <asp:TextBox ID="Inv_NameTextBox" runat="server" Text='<%# Bind("Inv_Name") %>' />
        <br />
        Inv_Time:
        <asp:TextBox ID="Inv_TimeTextBox" runat="server" Text='<%# Bind("Inv_Time") %>' />
        <br />
        Inv_Medicines:
        <asp:TextBox ID="Inv_MedicinesTextBox" runat="server" Text='<%# Bind("Inv_Medicines") %>' />
        <br />
        Inv_Total:
        <asp:TextBox ID="Inv_TotalTextBox" runat="server" Text='<%# Bind("Inv_Total") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <InsertItemTemplate>
        Inv_Name:
        <asp:TextBox ID="Inv_NameTextBox" runat="server" Text='<%# Bind("Inv_Name") %>' />
        <br />
        Inv_Time:
        <asp:TextBox ID="Inv_TimeTextBox" runat="server" Text='<%# Bind("Inv_Time") %>' />
        <br />
        Inv_Medicines:
        <asp:TextBox ID="Inv_MedicinesTextBox" runat="server" Text='<%# Bind("Inv_Medicines") %>' />
        <br />
        Inv_Total:
        <asp:TextBox ID="Inv_TotalTextBox" runat="server" Text='<%# Bind("Inv_Total") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        ID:
        <asp:Label ID="Inv_IDLabel" runat="server" Text='<%# Eval("Inv_ID") %>' />
        <br />
        Name:
        <asp:Label ID="Inv_NameLabel" runat="server" Text='<%# Bind("Inv_Name") %>' />
        <br />
        Medicines:
        <asp:Label ID="Inv_MedicinesLabel" runat="server" Text='<%# Bind("Inv_Medicines") %>' />
        <br />
        Time:
        <asp:Label ID="Inv_TimeLabel" runat="server" Text='<%# Bind("Inv_Time") %>' />
        <br />
        Total:
        <asp:Label ID="Inv_TotalLabel" runat="server" Text='<%# Bind("Inv_Total") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
        &nbsp;
    </ItemTemplate>
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyAspNetConnectionString %>" DeleteCommand="DELETE FROM [Invoices] WHERE [Inv_ID] = @Inv_ID" InsertCommand="INSERT INTO [Invoices] ([Inv_Name], [Inv_Time], [Inv_Medicines], [Inv_Total]) VALUES (@Inv_Name, @Inv_Time, @Inv_Medicines, @Inv_Total)" ProviderName="<%$ ConnectionStrings:MyAspNetConnectionString.ProviderName %>" SelectCommand="SELECT [Inv_ID], [Inv_Name], [Inv_Time], [Inv_Medicines], [Inv_Total] FROM [Invoices]" UpdateCommand="UPDATE [Invoices] SET [Inv_Name] = @Inv_Name, [Inv_Time] = @Inv_Time, [Inv_Medicines] = @Inv_Medicines, [Inv_Total] = @Inv_Total WHERE [Inv_ID] = @Inv_ID">
    <DeleteParameters>
        <asp:Parameter Name="Inv_ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Inv_Name" Type="String" />
        <asp:Parameter Name="Inv_Time" Type="DateTime" />
        <asp:Parameter Name="Inv_Medicines" Type="String" />
        <asp:Parameter Name="Inv_Total" Type="Double" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Inv_Name" Type="String" />
        <asp:Parameter Name="Inv_Time" Type="DateTime" />
        <asp:Parameter Name="Inv_Medicines" Type="String" />
        <asp:Parameter Name="Inv_Total" Type="Double" />
        <asp:Parameter Name="Inv_ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
        </center>
</asp:Content>
