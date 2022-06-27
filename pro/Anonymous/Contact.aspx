<%@ Page Title="" Language="C#" MasterPageFile="~/Pharmacy.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="pro.Anonymous.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin:5px;
            padding:10px;
        }
    .auto-style5 {
        height: 34px;
    }
    .auto-style6 {
        height: 29px;
    }
        .auto-style7 {
            height: 67px;
        }
        .auto-style8 {
            height: 29px;
            color: #000000;
        }
        .auto-style9 {
            height: 67px;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>

       <asp:Label ID="Label8" runat="server" Font-Size="Large" ForeColor="Black" Text="Contact Us"></asp:Label>

   </center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <center>
<table class="auto-style1" >
    <tr>
        <td class="auto-style9"><%= Resources.Resourse.name %></td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
        <td rowspan="3">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3487.2131087008484!2d31.087828785581827!3d29.069846970905555!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145a25fdfb931a71%3A0x16d4e41c10939250!2z2YXYs9iq2LTZgdmKINin2YTYr9i52YjYqSDYp9mE2KXYs9mE2KfZhdmK2Kk!5e0!3m2!1sar!2seg!4v1631664979312!5m2!1sar!2seg" width="600" height="450" style="border-style: none; border-color: inherit; border-width: 0; margin-left: 0px;" allowfullscreen="" loading="lazy"></iframe>
            </td>
    </tr>
    <tr>
        <td class="auto-style8"><%= Resources.Resourse.email%></td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox7" runat="server" TextMode="Email"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="text-black"><%= Resources.Resourse.message %></td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server" Height="136px" TextMode="MultiLine" Width="353px"></asp:TextBox>
            <br />
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text='<%$ Resources:Resourse,submit %>' />
        </td>
    </tr>
</table>
<asp:Label ID="Label7" runat="server" Text="time" Visible="False"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PharmacyConnectionStri  ng1 %>" DeleteCommand="DELETE FROM [Messages] WHERE [Mes_ID] = @Mes_ID" InsertCommand="INSERT INTO [Messages] ([Mes_Name], [Mes_Email], [Message]) VALUES (@Mes_Name, @Mes_Email, @Message)" SelectCommand="SELECT [Mes_ID], [Mes_Name], [Mes_Email], [Message] FROM [Messages]" UpdateCommand="UPDATE [Messages] SET [Mes_Name] = @Mes_Name, [Mes_Email] = @Mes_Email, [Message] = @Message WHERE [Mes_ID] = @Mes_ID">
            <DeleteParameters>
                <asp:Parameter Name="Mes_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox6" Name="Mes_Name" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox7" Name="Mes_Email" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox8" Name="Message" PropertyName="Text" Type="String" />
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
