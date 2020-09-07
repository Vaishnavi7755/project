<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addagent.aspx.cs" Inherits="project.addagent" %>
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
                                <center><img src="Stock/addagent.png" width="150px" /></center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <center><h4>Add a new agent</h4>
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
                                  <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Agent ID">
                                  </asp:TextBox>
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
                             <div class="col-md-6">
                               <label>License no:</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="License no." TextMode="Number">
                                  </asp:TextBox>
                              </div>
                                 </div>
                              <div class="col-md-6">
                               <label>Branch Location</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Location">
                                  </asp:TextBox>
                              </div>
                            </div>
                                </div>
                         <div class="row">
                            <div class="col-md-6">
                               <label>Contact number</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact number" TextMode="SingleLine">
                                  </asp:TextBox>
                              </div>
                            </div>
                             <div class="col-md-6">
                                <label>Email ID</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email">
                                  </asp:TextBox>
                              </div>
                            </div>
                        </div>
                         <div class="row">
                     <div class="col">
                        <label>Address:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                        <div class="row">
                            <div class="col-md-4">
                               <label>State</label>
                              <div class="form-group">
                                  <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                       <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                              <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                              <asp:ListItem Text="Assam" Value="Assam" />
                              <asp:ListItem Text="Bihar" Value="Bihar" />
                              <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Goa" Value="Goa" />
                              <asp:ListItem Text="Gujarat" Value="Gujarat" />
                              <asp:ListItem Text="Haryana" Value="Haryana" />
                              <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                              <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                              <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                              <asp:ListItem Text="Karnataka" Value="Karnataka" />
                              <asp:ListItem Text="Kerala" Value="Kerala" />
                              <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                              <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                              <asp:ListItem Text="Manipur" Value="Manipur" />
                              <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                              <asp:ListItem Text="Mizoram" Value="Mizoram" />
                              <asp:ListItem Text="Nagaland" Value="Nagaland" />
                              <asp:ListItem Text="Odisha" Value="Odisha" />
                              <asp:ListItem Text="Punjab" Value="Punjab" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Sikkim" Value="Sikkim" />
                              <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                              <asp:ListItem Text="Telangana" Value="Telangana" />
                              <asp:ListItem Text="Tripura" Value="Tripura" />
                              <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                              <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                              <asp:ListItem Text="West Bengal" Value="West Bengal" />
                              </asp:DropDownList>
                              </div>
                            </div>
                             <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Pincode</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                        </div>
                        <div class="row">
                            <div class="col-8 mx-auto">
                                <centre>
                                 <div class="form-group">
                                  <asp:Button ID="Button1" CssClass="btn btn-success btn-block btn-lg" runat="server" Text="Add" />
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
