<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="removeagent.aspx.cs" Inherits="project.removeagent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
        $(document).ready(function () {

            //$(document).ready(function () {
            //$('.table').DataTable();
            // });

            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            //$('.table1').DataTable();
        });
         </script>
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
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="ID cannot be empty" ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                  <asp:Button class="btn btn-primary" ID="Button1" runat="server" OnClick="Button1_Click" Text="Go" CausesValidation="False" />
                                  </div>
                              </div>
                            </div>
                             <div class="col-md-8">
                                <label>Agent name</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Agent Name" AutoPostBack="True"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Agent name cannot be empty" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox2" ErrorMessage="Name can only have alphabets in it." ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$" Display="Dynamic"></asp:RegularExpressionValidator>
                              </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-8 mx-auto">
                                <centre>
                                 <div class="form-group">
                                  <asp:Button ID="Button2" CssClass="btn btn-danger btn-block btn-lg" runat="server" Text="Remove" OnClick="Button2_Click" CausesValidation="False" />
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
                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:visualtransportConnectionString %>" SelectCommand="SELECT * FROM [agent]"></asp:SqlDataSource>
                            <div class="col">
                                <div style="overflow-x:auto;width:500px">
                                    <div class="overflow-auto">
                              <asp:GridView CssClass="table table-striped table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="agentid" DataSourceID="SqlDataSource1" AllowPaging="True">
                                  <Columns>
                                      <asp:BoundField DataField="agentid" HeaderText="Agent ID" ReadOnly="True" SortExpression="agentid" />
                                      <asp:BoundField DataField="aname" HeaderText="Name" SortExpression="aname" />
                                      <asp:BoundField DataField="lno" HeaderText="License No." SortExpression="lno" />
                                      <asp:BoundField DataField="branch" HeaderText="Branch" SortExpression="branch" />
                                      <asp:BoundField DataField="contact" HeaderText="Contact" SortExpression="contact" />
                                      <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                      <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                                      <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                      <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                      <asp:BoundField DataField="pincode" HeaderText="Pincode" SortExpression="pincode" />
                                  </Columns>
                                </asp:GridView>
                            </div>
                            </div>
                                </div>
                        </div>
                        </div>
                    </div>
                    </div>
            </div>
         </div>

</asp:Content>
