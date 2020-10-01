<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="truck.aspx.cs" Inherits="project.truck" %>

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
                                <center><img src="Stock/truckicon.png" width="150px" /></center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center><h4>Manage Truck details</h4>
                                    </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label>Truck Number:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Truck Number:">
                                    </asp:TextBox>
                                    <asp:Button class="btn btn-primary form-group form-inline" ID="Button3" runat="server" Text="Go" OnClick="Button3_Click" CausesValidation="False" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Truck No. cannot be empty." ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="The truck number format is not valid." ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="^[A-Z]{2}[0-9]{2}[A-Z]{2}[0-9]{4}$" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <label>Truck Owner:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Owner">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name cannot be empty." ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Name can only have alphabets." ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-md-7">
                                <label>Driver Name:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Driver Name">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Name cannot be empty." ControlToValidate="TextBox3" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Name can only have alphabets." ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <label>Driver's License No.:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="License No.">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="License no. cannot be empty." ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="The license number should be in the year range of 1900-2099." ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red" ValidationExpression="^(([A-Z]{2}[0-9]{2})( )|([A-Z]{2}-[0-9]{2}))((19|20)[0-9][0-9])[0-9]{7}$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Driver's PAN No.:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="PAN No.">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="PAN No. cannot be empty." ControlToValidate="TextBox5" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="The PAN No. is not valid." ControlToValidate="TextBox5" ForeColor="Red" ValidationExpression="[A-Z]{5}[0-9]{4}[A-Z]{1}" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Driver's Phone No.:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Phone No.">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Phone number cannot be empty." ControlToValidate="TextBox6" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Mobile number can only start with 7,8,9 or 6 and can only have 10 digits." ControlToValidate="TextBox6" Display="Dynamic" ForeColor="Red" ValidationExpression="^[6789]\d{9}$"></asp:RegularExpressionValidator>
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
                                  <asp:Button ID="Button2" CssClass="btn btn-warning btn-block btn-lg" runat="server" Text="Update" OnClick="Button2_Click" CausesValidation="False" />

                              </div>
                                    </centre>
                            </div>
                            <div class="col-4 mx-auto">
                                <centre>
                                 <div class="form-group">
                                  <asp:Button ID="Button4" CssClass="btn btn-danger btn-block btn-lg" runat="server" Text="Delete" OnClick="Button4_Click" CausesValidation="False" />

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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:visualtransportConnectionString %>" SelectCommand="SELECT * FROM [Truck]"></asp:SqlDataSource>
                            <div class="col">
                                <div style="overflow-x: auto; width: 500px">
                                    <div class="overflow-auto">
                                        <asp:GridView CssClass="table table-striped table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="truckid" DataSourceID="SqlDataSource1" AllowPaging="True">
                                            <Columns>
                                                <asp:BoundField DataField="truckid" HeaderText="Truck Number" ReadOnly="True" SortExpression="truckid" />
                                                <asp:BoundField DataField="towner" HeaderText="Owner" SortExpression="towner" />
                                                <asp:BoundField DataField="dname" HeaderText="Driver Name" SortExpression="dname" />
                                                <asp:BoundField DataField="dlno" HeaderText="License No." SortExpression="dlno" />
                                                <asp:BoundField DataField="dpan" HeaderText="Driver PAN No." SortExpression="dpan" />
                                                <asp:BoundField DataField="dphoneno" HeaderText="Phone No." SortExpression="dphoneno" />
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
