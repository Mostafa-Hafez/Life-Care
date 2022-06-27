
<%@ Page Title="" Language="C#" MasterPageFile="~/Pharmacy.Master" AutoEventWireup="true" CodeBehind="Medicines.aspx.cs" Inherits="pro.Admin.Medicines" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        font-size: x-large;
    }
        .auto-style6 {
            font-size: x-large;
            width: 260px;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <center>
      <h1 class="auto-style6">
    Medicines
      </h1>
       </center>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Med_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Font-Size="Large" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:TemplateField HeaderText="ID" SortExpression="Med_ID">
            <EditItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Med_ID") %>'></asp:Label>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:LinkButton ID="LinkButtonSave" runat="server" CommandName="Insert" CssClass="auto-style5" OnClick="LinkButtonSave_Click">save</asp:LinkButton>
            </FooterTemplate>
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Med_ID") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Name" SortExpression="Med_Name">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Med_Name") %>'></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="TextBoxName" runat="server" Height="30px" Width="193px"></asp:TextBox>
            </FooterTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Med_Name") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Price" SortExpression="Med_Price">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Med_Price") %>'></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="TextBoxPrice" runat="server" Height="24px" TextMode="Number" Width="75px"></asp:TextBox>
            </FooterTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Med_Price") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Num" SortExpression="Med_Num">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Med_Num") %>'></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="TextBoxNum" runat="server" Height="22px" TextMode="Number" Width="89px"></asp:TextBox>
            </FooterTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Med_Num") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Type" SortExpression="Med_Type">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Med_Type") %>'></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:DropDownList ID="DropDownListType" runat="server" Height="45px" Width="114px">
                    <asp:ListItem>اقراص</asp:ListItem>
                    <asp:ListItem Selected="True">شراب</asp:ListItem>
                    <asp:ListItem>حقن</asp:ListItem>
                    <asp:ListItem>دهان</asp:ListItem>
                    <asp:ListItem>قطره</asp:ListItem>
                    <asp:ListItem>بودره</asp:ListItem>
                </asp:DropDownList>
            </FooterTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Med_Type") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Description" SortExpression="Med_Des">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Med_Des") %>'></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="TextBoxDes" runat="server" Height="22px" Width="266px"></asp:TextBox>
            </FooterTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Med_Des") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyAspNetConnectionString %>" DeleteCommand="DELETE FROM [Medicines] WHERE [Med_ID] = @Med_ID" InsertCommand="INSERT INTO [Medicines] ([Med_Name], [Med_Price], [Med_Num], [Med_Type], [Med_Des]) VALUES (@Med_Name, @Med_Price, @Med_Num, @Med_Type, @Med_Des)" ProviderName="<%$ ConnectionStrings:MyAspNetConnectionString.ProviderName %>" SelectCommand="SELECT [Med_ID], [Med_Name], [Med_Price], [Med_Num], [Med_Type], [Med_Des] FROM [Medicines]" UpdateCommand="UPDATE [Medicines] SET [Med_Name] = @Med_Name, [Med_Price] = @Med_Price, [Med_Num] = @Med_Num, [Med_Type] = @Med_Type, [Med_Des] = @Med_Des WHERE [Med_ID] = @Med_ID">
    <DeleteParameters>
        <asp:Parameter Name="Med_ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Med_Name" Type="String" />
        <asp:Parameter Name="Med_Price" Type="Double" />
        <asp:Parameter Name="Med_Num" Type="Int32" />
        <asp:Parameter Name="Med_Type" Type="String" />
        <asp:Parameter Name="Med_Des" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Med_Name" Type="String" />
        <asp:Parameter Name="Med_Price" Type="Double" />
        <asp:Parameter Name="Med_Num" Type="Int32" />
        <asp:Parameter Name="Med_Type" Type="String" />
        <asp:Parameter Name="Med_Des" Type="String" />
        <asp:Parameter Name="Med_ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
        </center>
</asp:Content>
