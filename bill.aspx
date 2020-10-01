<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="bill.aspx.cs" Inherits="project.bill" %>

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
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <div class="card" style="margin-bottom: 10px; margin-top: 10px;">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center><img src="Stock/vtpl.png" width="1000px" height="200px" class="auto-style1" /></center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center><h5>GST No.: 27ABBPG8136H1ZR</h5>
                                    </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center><h4>Add or Update Bill:</h4>
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
                                <label>GR Number:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="GR Number:">
                                    </asp:TextBox>
                                    <asp:Button class="btn btn-primary form-group form-inline" ID="Button3" runat="server" Text="Go" OnClick="Button3_Click" CausesValidation="False" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Truck No. cannot be empty." ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="The truck number format is not valid." ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="^[A-Z]{2}[0-9]{2}[A-Z]{2}[0-9]{4}$" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Date:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date" TextMode="Date">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name cannot be empty." ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Name can only have alphabets." ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>From:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Date" TextMode="Form">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Name cannot be empty." ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Name can only have alphabets." ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>To:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="To">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Name cannot be empty." ControlToValidate="TextBox3" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Name can only have alphabets." ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>GST No.:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="GST No.">
                                    </asp:TextBox>
                                    <asp:Button class="btn btn-primary form-group form-inline" ID="Button6" runat="server" Text="Go" OnClick="Button3_Click" CausesValidation="False" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="License no. cannot be empty." ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="The license number should be in the year range of 1900-2099." ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red" ValidationExpression="^(([A-Z]{2}[0-9]{2})( )|([A-Z]{2}-[0-9]{2}))((19|20)[0-9][0-9])[0-9]{7}$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                        <div class="col-md-12">
                            <label>Consignor Name:</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Consignor Name">
                                </asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="PAN No. cannot be empty." ControlToValidate="TextBox5" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="The PAN No. is not valid." ControlToValidate="TextBox5" ForeColor="Red" ValidationExpression="[A-Z]{5}[0-9]{4}[A-Z]{1}" Display="Dynamic"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                            </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>GST No.:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="GST No.">
                                    </asp:TextBox>
                                    <asp:Button class="btn btn-primary form-group form-inline" ID="Button5" runat="server" Text="Go" OnClick="Button3_Click" CausesValidation="False" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="License no. cannot be empty." ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="The license number should be in the year range of 1900-2099." ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red" ValidationExpression="^(([A-Z]{2}[0-9]{2})( )|([A-Z]{2}-[0-9]{2}))((19|20)[0-9][0-9])[0-9]{7}$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                        <div class="col-md-12">
                            <label>Consignee Name:</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Consignee Name">
                                </asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="PAN No. cannot be empty." ControlToValidate="TextBox5" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ErrorMessage="The PAN No. is not valid." ControlToValidate="TextBox5" ForeColor="Red" ValidationExpression="[A-Z]{5}[0-9]{4}[A-Z]{1}" Display="Dynamic"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                            </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Package:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Package">
                                    </asp:TextBox>
                                    <asp:Button class="btn btn-primary form-group form-inline" ID="Button7" runat="server" Text="Go" OnClick="Button3_Click" CausesValidation="False" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Truck No. cannot be empty." ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="The truck number format is not valid." ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="^[A-Z]{2}[0-9]{2}[A-Z]{2}[0-9]{4}$" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Description:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Description:" TextMode="Date">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Name cannot be empty." ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ErrorMessage="Name can only have alphabets." ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>HSN Code:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="HSN Code">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Name cannot be empty." ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ErrorMessage="Name can only have alphabets." ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Private mark:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Private mark">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Name cannot be empty." ControlToValidate="TextBox3" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ErrorMessage="Name can only have alphabets." ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Invoice No.:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="Package">
                                    </asp:TextBox>
                                    <asp:Button class="btn btn-primary form-group form-inline" ID="Button8" runat="server" Text="Go" OnClick="Button3_Click" CausesValidation="False" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Truck No. cannot be empty." ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ErrorMessage="The truck number format is not valid." ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="^[A-Z]{2}[0-9]{2}[A-Z]{2}[0-9]{4}$" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Value(in Rs.):</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox14" runat="server" placeholder="Value">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Name cannot be empty." ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server" ErrorMessage="Name can only have alphabets." ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Truck No.:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox15" runat="server" placeholder="HSN Code">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Name cannot be empty." ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator15" runat="server" ErrorMessage="Name can only have alphabets." ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Payment Mode:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox16" runat="server" placeholder="Private mark">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Name cannot be empty." ControlToValidate="TextBox3" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator16" runat="server" ErrorMessage="Name can only have alphabets." ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
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
