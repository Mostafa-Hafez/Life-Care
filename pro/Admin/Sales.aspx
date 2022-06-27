<%@ Page Title="" Language="C#" MasterPageFile="~/Pharmacy.Master" AutoEventWireup="true" CodeBehind="Sales.aspx.cs" Inherits="pro.Admin.Sales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Inv_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Font-Size="X-Large" GridLines="None">
    <Columns>
        <asp:BoundField DataField="Inv_ID" HeaderText="ID" ReadOnly="True" SortExpression="Inv_ID" />
        <asp:BoundField DataField="Inv_Name" HeaderText="Name" SortExpression="Inv_Name" />
        <asp:BoundField DataField="Inv_Medicines" HeaderText="Medicines" SortExpression="Inv_Medicines" />
        <asp:BoundField DataField="inv_Time" HeaderText="Time" SortExpression="inv_Time" />
        <asp:BoundField DataField="Inv_Total" HeaderText="Total" SortExpression="Inv_Total" />
    </Columns>
    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#594B9C" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#33276A" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyAspNetConnectionString %>" DeleteCommand="DELETE FROM [Invoice] WHERE [Inv_ID] = @Inv_ID" InsertCommand="INSERT INTO [Invoice] ([Inv_Name], [Inv_Medicines], [inv_Time], [Inv_Total]) VALUES (@Inv_Name, @Inv_Medicines, @inv_Time, @Inv_Total)" ProviderName="<%$ ConnectionStrings:MyAspNetConnectionString.ProviderName %>" SelectCommand="SELECT Inv_ID, Inv_Name, Inv_Medicines, inv_Time, Inv_Total FROM Invoices WHERE (inv_Time &gt; CONVERT (DATETIME, @Time, 102))" UpdateCommand="UPDATE [Invoice] SET [Inv_Name] = @Inv_Name, [Inv_Medicines] = @Inv_Medicines, [inv_Time] = @inv_Time, [Inv_Total] = @Inv_Total WHERE [Inv_ID] = @Inv_ID">
    <DeleteParameters>
        <asp:Parameter Name="Inv_ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Inv_Name" Type="String" />
        <asp:Parameter Name="Inv_Medicines" Type="String" />
        <asp:Parameter Name="inv_Time" Type="DateTime" />
        <asp:Parameter Name="Inv_Total" Type="Double" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="Label1" Name="Time" PropertyName="Text" Type="DateTime" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="Inv_Name" Type="String" />
        <asp:Parameter Name="Inv_Medicines" Type="String" />
        <asp:Parameter Name="inv_Time" Type="DateTime" />
        <asp:Parameter Name="Inv_Total" Type="Double" />
        <asp:Parameter Name="Inv_ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
</center>
</asp:Content>
