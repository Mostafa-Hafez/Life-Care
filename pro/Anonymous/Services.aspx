<%@ Page Title="" Language="C#" MasterPageFile="~/Pharmacy.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="pro.Anonymous.Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <center>
              <h1 class="text-black"><%= Resources.Resourse.bestsaller %></h1>
          </center>
    <div class="row">
          
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="col-sm-6 col-lg-4 text-center item mb-4">
            <span class="tag">Sale</span>
            <a href="#"> <img src='<%# "../imgMed/"+ Eval("Med_ID")+".png" %>' style="width:250px;height:250px;" alt="Image"></a>
            <h3 class="text-dark"><a href="shop-single.html"><%#Eval("Med_Name") %></a></h3>
            <p class="price"><del>20.00</del> &mdash;<%# Eval("Med_Price") + " $" %></p>
          </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyAspNetConnectionString %>" DeleteCommand="DELETE FROM [Medicines] WHERE [Med_ID] = @Med_ID" InsertCommand="INSERT INTO [Medicines] ([Med_Name], [Med_Price], [Med_Type], [Med_Num], [Med_Des]) VALUES (@Med_Name, @Med_Price, @Med_Type, @Med_Num, @Med_Des)" ProviderName="<%$ ConnectionStrings:MyAspNetConnectionString.ProviderName %>" SelectCommand="SELECT [Med_ID], [Med_Name], [Med_Price], [Med_Type], [Med_Num], [Med_Des] FROM [Medicines]" UpdateCommand="UPDATE [Medicines] SET [Med_Name] = @Med_Name, [Med_Price] = @Med_Price, [Med_Type] = @Med_Type, [Med_Num] = @Med_Num, [Med_Des] = @Med_Des WHERE [Med_ID] = @Med_ID">
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
            <UpdateParameters>
                <asp:Parameter Name="Med_Name" Type="String" />
                <asp:Parameter Name="Med_Price" Type="Double" />
                <asp:Parameter Name="Med_Type" Type="String" />
                <asp:Parameter Name="Med_Num" Type="Int32" />
                <asp:Parameter Name="Med_Des" Type="String" />
                <asp:Parameter Name="Med_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
        <div class="row mt-5">
          <div class="col-md-12 text-center">
            <div class="site-block-27">
              <ul>
                <li><a href="#">&lt;</a></li>
                <li class="active"><span>1</span></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&gt;</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>

    
    <div class="site-section bg-secondary bg-image" style="background-image: url('images/bg_2.jpg');">
      <div class="container">
        <div class="row align-items-stretch">
          <div class="col-lg-6 mb-5 mb-lg-0">
            <a href="#" class="banner-1 h-100 d-flex" style="background-image: url('images/bg_1.jpg');">
              <div class="banner-1-inner align-self-center">
                <h2>Pharma Products</h2>
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestiae ex ad minus rem odio voluptatem.
                </p>
              </div>
            </a>
          </div>
          <div class="col-lg-6 mb-5 mb-lg-0">
            <a href="#" class="banner-1 h-100 d-flex" style="background-image: url('images/bg_2.jpg');">
              <div class="banner-1-inner ml-auto  align-self-center">
                <h2>Rated by Experts</h2>
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestiae ex ad minus rem odio voluptatem.
                </p>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>
</asp:Content>
