<%@ Page Title="" Language="C#" MasterPageFile="~/Pharmacy.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="pro.Login"   %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        font-size: xx-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <center>
     <p class="auto-style5">
        <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Login"></asp:Label>
    </p>
       </center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <br />
    <center>
    <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="XX-Large" ForeColor="#333333" OnLoggedIn="Login1_LoggedIn">
    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
    <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
    <TextBoxStyle Font-Size="0.8em" />
    <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
        
</asp:Login>
        </center>
</asp:Content>
