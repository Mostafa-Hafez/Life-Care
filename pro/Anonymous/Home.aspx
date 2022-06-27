<%@ Page Title="" Language="C#" MasterPageFile="~/Pharmacy.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="pro.Anonymous.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link rel="stylesheet" href="fonts/icomoon/style.css">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/magnific-popup.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">


  <link rel="stylesheet" href="css/aos.css">

  <link rel="stylesheet" href="css/style.css">

    <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>

  <script src="js/main.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>

        <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="Black" Text='<%$ Resources:Resourse ,Home %>'></asp:Label>

    </center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <dive class="site-wrap">

    <div class="site-blocks-cover" style="height:1000px; background-image: url('images/hero_1.jpg')  ">
      <div class="container" style=" height:1000px">
        <div class="row">
          <div class="col-lg-7 mx-auto order-lg-2 align-self-center">
            <div class="site-block-cover-content text-center">
              <h2 class="sub-title"> <%= Resources.Resourse.titl1 %></h2>
              <h1><%= Resources.Resourse.titl2 %></h1>
              
                <a href="Services.aspx" class="btn btn-primary px-5 py-3"><%= Resources.Resourse.shop %></a>
              
            </div>
          </div>
        </div>
      </div>
    </div>
    </dive>
</asp:Content>
