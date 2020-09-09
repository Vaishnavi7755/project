<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home1.aspx.cs" Inherits="project.home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="wrapper">
    <nav id="sidebar"></nav>
    <div class="sidebar-header">
        <h3>Menu bar</h3>
    </div>
    <div class="sidebar" id="content">
        <ul class="list-unstyled components">
            <p>Visual Transport</p>
            <li class="active"><a href="#" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fas fa-home fa-2x"></i>  Home</a></li>
            <li><a href="#"><i class="fas fa-user-circle fa-2x"></i>  Profile</a></li>
            <li><a href="#"><i class="fas fa-stream fa-2x"></i>  Services</a></li>
            <li><a href="#"><i class="far fa-address-card fa-2x"></i>  Our Clients</a></li>
            <li><a href="#"><i class="fas fa-code-branch fa-2x"></i>  Our Branches</a></li>
            <li><a href="#"><i class="fas fa-info-circle fa-2x"></i>  About us</a></li>
            <li><a href="#"><i class="fas fa-envelope fa-2x"></i>  Contact us</a></li>
        </ul>
    </div>
    </div>
    <section class="truck">
        <img src="Stock/truck.jpg" class="panel" />
    </section>
</asp:Content>
