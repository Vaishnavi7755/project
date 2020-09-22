<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="consignee.aspx.cs" Inherits="project.consignee" %>
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
                <div class="card" style="margin-bottom: 10px; margin-top: 10px;">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center><img src="Stock/addagent.png" width="150px" /></center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center><h4>Manage consignee details</h4>
                                    </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>GST No:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="GST No:">
                                    </asp:TextBox>
                                    <asp:Button class="btn btn-primary form-group form-inline" ID="Button3" runat="server" Text="Go" OnClick="Button3_Click" CausesValidation="False" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="GST No. cannot be empty." ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="The GST no should be in the format- Example-27ABBPG8136H1ZR" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Consignee Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Consignee Name">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name cannot be empty." ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Name can only have alphabets." ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-4 mx-auto">
                                <centre>
                                 <div class="form-group">
                                  <asp:Button ID="Button1" CssClass="btn btn-success btn-block btn-lg" runat="server" Text="Add" OnClick="Button1_Click" />

                              </div>
                                    </centre>
                            </div>
                              <div class="col-4 mx-auto">
                                <centre>
                                 <div class="form-group">
                                  <asp:Button ID="Button2" CssClass="btn btn-warning btn-block btn-lg" runat="server" Text="Update" OnClick="Button2_Click" />

                              </div>
                                    </centre>
                            </div>
                            <div class="col-4 mx-auto">
                                <centre>
                                 <div class="form-group">
                                  <asp:Button ID="Button4" CssClass="btn btn-danger btn-block btn-lg" runat="server" Text="Delete" OnClick="Button4_Click" />

                              </div>
                                    </centre>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="home1.aspx"><< Back to Home</a><br />
                <br />
            </div>

            <div class="col-md-6">
                <div class="card" style="margin-bottom: 10px; margin-top: 10px;">
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:visualtransportConnectionString %>" SelectCommand="SELECT * FROM [Consignee]"></asp:SqlDataSource>
                            <div class="col">
                                <div style="overflow-x: auto; width: 500px">
                                    <div class="overflow-auto">
                                        <asp:GridView CssClass="table table-striped table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="cid" DataSourceID="SqlDataSource1" AllowPaging="True">
                                            <Columns>
                                                <asp:BoundField DataField="cid" HeaderText="GST No." ReadOnly="True" SortExpression="cid" />
                                                <asp:BoundField DataField="cname" HeaderText="Name" SortExpression="cname" />
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
