<%@ Page Title="" Language="C#" MasterPageFile="~/Pharmacy.Master" AutoEventWireup="true" CodeBehind="Messages.aspx.cs" Inherits="pro.Admin.Messages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <center>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Mes_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Vertical" Width="535px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="Mes_ID" HeaderText="ID" ReadOnly="True" SortExpression="Mes_ID" />
                <asp:BoundField DataField="Mes_Name" HeaderText="Name" SortExpression="Mes_Name" />
                <asp:BoundField DataField="Mes_Email" HeaderText="Email" SortExpression="Mes_Email" />
                <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyAspNetConnectionString %>" DeleteCommand="DELETE FROM [Messages] WHERE [Mes_ID] = @Mes_ID" InsertCommand="INSERT INTO [Messages] ([Mes_Name], [Mes_Email], [Message]) VALUES (@Mes_Name, @Mes_Email, @Message)" ProviderName="<%$ ConnectionStrings:MyAspNetConnectionString.ProviderName %>" SelectCommand="SELECT [Mes_ID], [Mes_Name], [Mes_Email], [Message] FROM [Messages]" UpdateCommand="UPDATE [Messages] SET [Mes_Name] = @Mes_Name, [Mes_Email] = @Mes_Email, [Message] = @Message WHERE [Mes_ID] = @Mes_ID">
            <DeleteParameters>
                <asp:Parameter Name="Mes_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Mes_Name" Type="String" />
                <asp:Parameter Name="Mes_Email" Type="String" />
                <asp:Parameter Name="Message" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Mes_Name" Type="String" />
                <asp:Parameter Name="Mes_Email" Type="String" />
                <asp:Parameter Name="Message" Type="String" />
                <asp:Parameter Name="Mes_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </center>
</asp:Content>
