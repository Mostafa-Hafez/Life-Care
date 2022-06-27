<%@ Page Title="" Language="C#" MasterPageFile="~/Pharmacy.Master" AutoEventWireup="true" CodeBehind="Add_Invoice.aspx.cs" Inherits="pro.Staff.Add_Invoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        font-size: x-large;
    }
    .auto-style6 {
        width: 91%;
        height: 261px;
    }
    .auto-style7 {
        width: 119px;
        color: #000000;
    }
    .auto-style8 {
        width: 119px;
        height: 38px;
    }
        .auto-style9 {
            height: 38px;
        }
    .backinv  {
        border: 2px solid black ;
        background:#b5fbb0;
        }
    
        .auto-style10 {
            font-size: x-large;
            width: 260px;
            color: #000000;
        }
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
     <p class="auto-style10">
    <%= Resources.Resourse.addinv %></p>
       </center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <centrer>
    <table class="auto-style1" style=" margin:20px;">
        <tr>
            <td >
                <br />
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="search" />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Med_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Font-Size="Large" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="207px" Width="482px" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Med_Name" HeaderText="Name" SortExpression="Med_Name" />
                        <asp:BoundField DataField="Med_Price" HeaderText="Price" SortExpression="Med_Price" />
                        <asp:BoundField DataField="Med_Type" HeaderText="Type" SortExpression="Med_Type" />
                        <asp:BoundField DataField="Med_Des" HeaderText="Description" SortExpression="Med_Des" />
                        <asp:CommandField ShowSelectButton="True" />
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
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Med_ID" DataSourceID="SqlDataSource3" Font-Size="Large" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Visible="False" Width="477px" AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="Med_Name" HeaderText="Name" SortExpression="Med_Name" />
                        <asp:BoundField DataField="Med_Price" HeaderText="Price" SortExpression="Med_Price" />
                        <asp:BoundField DataField="Med_Type" HeaderText="Type" SortExpression="Med_Type" />
                        <asp:BoundField DataField="Med_Des" HeaderText="Description" SortExpression="Med_Des" />
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MyAspNetConnectionString %>" DeleteCommand="DELETE FROM [Medicines] WHERE [Med_ID] = @Med_ID" InsertCommand="INSERT INTO [Medicines] ([Med_Name], [Med_Price], [Med_Type], [Med_Num], [Med_Des]) VALUES (@Med_Name, @Med_Price, @Med_Type, @Med_Num, @Med_Des)" ProviderName="<%$ ConnectionStrings:MyAspNetConnectionString.ProviderName %>" SelectCommand="SELECT Med_ID, Med_Name, Med_Price, Med_Type, Med_Num, Med_Des FROM Medicines 
WHERE (Med_Name like '%'+@search+'%')" UpdateCommand="UPDATE [Medicines] SET [Med_Name] = @Med_Name, [Med_Price] = @Med_Price, [Med_Type] = @Med_Type, [Med_Num] = @Med_Num, [Med_Des] = @Med_Des WHERE [Med_ID] = @Med_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Med_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Med_Name" Type="String" />
                        <asp:Parameter Name="Med_Price" Type="Double" />
                        <asp:Parameter Name="Med_Type" Type="String" />
                        <asp:Parameter Name="Med_Num" Type="Int32" />
                        <asp:Parameter Name="Med_Des" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox2" Name="search" PropertyName="Text" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Med_Name" Type="String" />
                        <asp:Parameter Name="Med_Price" Type="Double" />
                        <asp:Parameter Name="Med_Type" Type="String" />
                        <asp:Parameter Name="Med_Num" Type="Int32" />
                        <asp:Parameter Name="Med_Des" Type="String" />
                        <asp:Parameter Name="Med_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
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
            </td>
            <td>
                <table class="auto-style6">
                    <tr>
                        <td class="backinv" >
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style7"><%=Resources.Resourse.name %></td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style7"><%=Resources.Resourse.medicines %></td>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" style="color: #000000"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style7"><%=Resources.Resourse.total %></td>
                                    <td style="color: #000000">
                                        <asp:Label ID="Label2" runat="server" Text="0"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8"></td>
                                    <td class="auto-style9">
                                        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
                                        <asp:Label ID="Label3" runat="server" Text="time" Visible="False" style="color: #000000"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyAspNetConnectionString %>" DeleteCommand="DELETE FROM [Invoices] WHERE [Inv_ID] = @Inv_ID" InsertCommand="INSERT INTO [Invoices] ([Inv_Name], [Inv_Time], [Inv_Medicines], [Inv_Total]) VALUES (@Inv_Name, @Inv_Time, @Inv_Medicines, @Inv_Total)" SelectCommand="SELECT * FROM [Invoices]" UpdateCommand="UPDATE [Invoices] SET [Inv_Name] = @Inv_Name, [Inv_Time] = @Inv_Time, [Inv_Medicines] = @Inv_Medicines, [Inv_Total] = @Inv_Total WHERE [Inv_ID] = @Inv_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Inv_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Inv_Name" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="Label3" Name="Inv_Time" PropertyName="Text" Type="DateTime" />
                        <asp:ControlParameter ControlID="Label1" Name="Inv_Medicines" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="Label2" Name="Inv_Total" PropertyName="Text" Type="Double" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Inv_Name" Type="String" />
                        <asp:Parameter Name="Inv_Time" Type="DateTime" />
                        <asp:Parameter Name="Inv_Medicines" Type="String" />
                        <asp:Parameter Name="Inv_Total" Type="Double" />
                        <asp:Parameter Name="Inv_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
        </centrer>
</asp:Content>
