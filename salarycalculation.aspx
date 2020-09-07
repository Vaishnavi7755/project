﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="salarycalculation.aspx.cs" Inherits="project.salarycalculation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <div class="card" style="margin-bottom:10px; margin-top:10px;">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center><img src="Stock/salarycal.png" width="150px" /></center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <center><h4>Calculate salary:</h4>
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
                                  <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" />
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
                         <div class="col-md-12">
                             <centre>
                                <label>Basic salary:</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Basic" TextMode="Number">
                                  </asp:TextBox>
                              </div>
                                 </centre>
                            </div>
                            </div>
                             <div class="row">
                         <div class="col-md-6">
                             <centre>
                            <label>DA:</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="DA" TextMode="Number">
                                  </asp:TextBox>
                              </div>
                                 </centre>
                            </div>
                         <div class="col-md-6">
                             <centre>
                        <label>HRA:</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="HRA" TextMode="Number">
                                  </asp:TextBox>
                              </div>
                                 </centre>
                            </div>
                            </div>
                            <div class="row">
                         <div class="col-md-6">
                             <centre>
                            <label>MA:</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="MA" TextMode="Number">
                                  </asp:TextBox>
                              </div>
                                 </centre>
                            </div>
                         <div class="col-md-6">
                        <label>PF:</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="PF" TextMode="Number">
                                  </asp:TextBox>
                              </div>
                            </div>
                            </div>
                            <div class="row">
                         <div class="col-md-6">
                            <label>PT:</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="PT" TextMode="Number">
                                  </asp:TextBox>
                              </div>
                            </div>
                         <div class="col-md-6">
                        <label>IT:</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="IT" TextMode="Number">
                                  </asp:TextBox>
                              </div>
                            </div>
                            </div>
                        <div class="row">
                        <div class="col-md-12">
                        <label>Commission:</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Commission">
                                  </asp:TextBox>
                              </div>
                            </div>
                            </div>
                        <div class="row">
                            <div class="col-8 mx-auto">
                                <centre>
                                 <div class="form-group">
                                  <asp:Button ID="Button2" CssClass="btn btn-success btn-block btn-lg" runat="server" Text="Calculate" />
                              </div>
                                    </centre>
                            </div>
                        </div>
                        <div class="row">
                        <div class="col-md-8">
                        <label>Net Salary:</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Net Salary" TextMode="Number" ReadOnly="True">
                                  </asp:TextBox>
                              </div>
                            </div>
                        <div class="col-md-4">
                        <label>Status:</label>
                              <div class="form-group">
                                  <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                       <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Paid" Value="Paid" />
                              <asp:ListItem Text="Unpaid" Value="Unpaid" />
                                  </asp:DropDownList>
                              </div>
                            </div>
                            </div>
                        <div class="row">
                            <div class="col-8 mx-auto">
                                <centre>
                                 <div class="form-group">
                                  <asp:Button ID="Button3" CssClass="btn btn-success btn-block btn-lg" runat="server" Text="Submit" />
                              </div>
                                    </centre>
                            </div>
                        </div>
                    </div>
                    </div>
                    <a href="homepage.aspx"><< Back to Home</a><br />
                <br />
            </div>

             <div class="col-md-5">
                <div class="card" style="margin-bottom:10px; margin-top:10px;">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center><h4>Previously paid salary:</h4>
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
