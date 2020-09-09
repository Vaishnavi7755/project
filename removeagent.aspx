<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="removeagent.aspx.cs" Inherits="project.removeagent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="card" style="margin-bottom:10px; margin-top:10px;">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center><img src="Stock/removeagent.png" width="150px" /></center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <center><h4>Remove an existing agent</h4>
                                    </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                              <hr>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-md-4">
                               <label>Agent ID:</label>
                              <div class="form-group">
                                  <div class="input-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Agent ID">
                                  </asp:TextBox>
                                  <asp:Button class="btn btn-primary" ID="Button1" runat="server" OnClick="Button1_Click" Text="Go" />
                                  </div>
                              </div>
                            </div>
                             <div class="col-md-8">
                                <label>Agent name</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Agent Name">
                                  </asp:TextBox>
                              </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-8 mx-auto">
                                <centre>
                                 <div class="form-group">
                                  <asp:Button ID="Button2" CssClass="btn btn-danger btn-block btn-lg" runat="server" Text="Remove" OnClick="Button2_Click" />
                              </div>
                                    </centre>
                            </div>
                        </div>
                    </div>
                    </div>
                    <a href="homepage.aspx"><< Back to Home</a><br />
                <br />
            </div>

             <div class="col-md-6">
                <div class="card" style="margin-bottom:10px; margin-top:10px;">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center><h4>List of agents</h4>
                                    </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                              <hr>
                            </div>
                        </div>
                          <div class="row">
                            <div class="col">
                              <asp:GridView CssClass="table table-striped table-bordered" ID="GridView2" runat="server"></asp:GridView>
                            </div>
                        </div>
                        </div>
                    </div>
                    </div>
            </div>
         </div>

</asp:Content>
