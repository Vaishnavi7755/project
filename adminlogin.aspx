<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="project.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card" style="margin-bottom:10px; margin-top:10px;">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center><img src="Stock/adminuser.png" width="150px" /></center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <center><h3>Admin Login</h3></center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                              <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Admin ID</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Admin ID">
                                  </asp:TextBox>
                              </div>
                                 <label>Password</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password">
                                  </asp:TextBox>
                              </div>
                                 <div class="form-group">
                                  <asp:Button ID="Button1" CssClass="btn btn-success btn-block btn-lg" runat="server" OnClick="Button1_Click" Text="Login" />
                              </div>
                            </div>
                        </div>
                    </div>
                    </div>
                    <a href="homepage.aspx"><< Back to Home</a><br />
                <br />
            </div>
        </div>
    </div>
</asp:Content>
