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
                                <center><img src="Stock/vtpl.png" width="500px" height="200px" class="auto-style1" /></center>
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
                            <div class="col-md-3">
                                <label>GR Number:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="GR Number:">
                                    </asp:TextBox>
                                    <asp:Button class="btn btn-primary form-group form-inline" ID="Button3" runat="server" Text="Go" OnClick="Button3_Click" CausesValidation="False" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="GR No. cannot be empty." ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="The GR number can only have 6 numbers.." ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="^[0-9]{1,6}$" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label>Date:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date" TextMode="Date">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Date cannot be empty." ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label>From:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="From">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="From cannot be empty." ControlToValidate="TextBox7" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="The city can only have alphabets." ControlToValidate="TextBox7" Display="Dynamic" ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label>To:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="To">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="The destiny cannot be empty." ControlToValidate="TextBox3" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="The city can only have alphabets." ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>GST No.:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="GST No.">
                                    </asp:TextBox>
                                    <asp:Button class="btn btn-primary form-group form-inline" ID="Button6" runat="server" Text="Go" OnClick="Button6_Click" CausesValidation="False" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="GST no. cannot be empty." ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="The GST no should be in the format- Example-27ABBPG8136H1ZR." ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red" ValidationExpression="[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <label>Consignor Name:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Consignor Name">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Name cannot be empty." ControlToValidate="TextBox5" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Name can only have alphabets." ControlToValidate="TextBox5" ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>GST No.:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="GST No.">
                                    </asp:TextBox>
                                    <asp:Button class="btn btn-primary form-group form-inline" ID="Button5" runat="server" Text="Go" OnClick="Button5_Click" CausesValidation="False" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="GST no. cannot be empty." ControlToValidate="TextBox8" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="The GST no should be in the format- Example-27ABBPG8136H1ZR." ControlToValidate="TextBox8" Display="Dynamic" ForeColor="Red" ValidationExpression="[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <label>Consignee Name:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Consignee Name">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Name cannot be empty." ControlToValidate="TextBox9" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ErrorMessage="Name can only have alphabets." ControlToValidate="TextBox9" ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <label>Package:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Package">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Package quantity cannot be empty." ControlToValidate="TextBox6" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="The package quantity cannot have alphabets in it." ControlToValidate="TextBox6" ForeColor="Red" ValidationExpression="^[0-9]+$" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label>Description:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Description:" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Description cannot be empty." ControlToValidate="TextBox10" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label>HSN Code:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="HSN Code">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="HSN Code cannot be empty." ControlToValidate="TextBox11" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ErrorMessage="The HSN Code cannot have alphabets in it." ControlToValidate="TextBox11" Display="Dynamic" ForeColor="Red" ValidationExpression=" ^(^[0][1-9]+)|([1-9]\d*)$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label>Private mark:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Private mark">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Private mark cannot be empty." ControlToValidate="TextBox12" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ErrorMessage="The Private mark cannot have alphabets in it." ControlToValidate="TextBox12" ForeColor="Red" ValidationExpression=" ^(^[0][1-9]+)|([1-9]\d*)$" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <label>Invoice No.:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="Invoice">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Invoice No. cannot be empty." ControlToValidate="TextBox13" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ErrorMessage="The Invoice No. cannot have alphabets in it." ControlToValidate="TextBox13" ForeColor="Red" ValidationExpression="^(^[0][1-9]+)|([1-9]\d*)$" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label>Value(in Rs.):</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox14" runat="server" placeholder="Value">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Value cannot be empty." ControlToValidate="TextBox14" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server" ErrorMessage="The Value cannot have alphabets in it ." ControlToValidate="TextBox14" Display="Dynamic" ForeColor="Red" ValidationExpression="^(^[0][1-9]+)|([1-9]\d*)$"></asp:RegularExpressionValidator>
                                </div>
                            </div> 
                            <div class="col-md-3">
                                <label>Truck Number:</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" OnDataBinding="Button1_Click" DataTextField="truckid" DataValueField="truckid" CssClass="form-control">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:visualtransportConnectionString %>" SelectCommand="SELECT [truckid] FROM [Truck]"></asp:SqlDataSource>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Select a truck." InitialValue="-1" ControlToValidate="DropDownList1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label>Payment mode:</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Select" Value="select" />
                                        <asp:ListItem Text="To pay" Value="To pay" />
                                        <asp:ListItem Text="To be billed" Value="To be billed" />
                                        <asp:ListItem Text="Billing" Value="Billing" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Select payment mode." ControlToValidate="DropDownList2" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Actual weight:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox21" runat="server" placeholder="Actual weight">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="The actual weight has to be entered." ControlToValidate="TextBox21" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Charged Weight:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox22" runat="server" placeholder="Charged Weight">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ErrorMessage="The charged weight has tp be entered." ControlToValidate="TextBox22" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Amount:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox23" runat="server" placeholder="Amount">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ErrorMessage="Amount should be entered." ControlToValidate="TextBox23" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator23" runat="server" ErrorMessage="The Total charged amount cannot have alphabets in it ." ControlToValidate="TextBox23" Display="Dynamic" ForeColor="Red" ValidationExpression="^(^[0][1-9]+)|([1-9]\d*)$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                   
                    <div class="row">
                        <div class="col-6 mx-auto">
                            <centre>
                                 <div class="form-group">
                                  <asp:Button ID="Button1" CssClass="btn btn-success btn-block btn-lg" runat="server" Text="Add" OnClick="Button1_Click" />

                              </div>
                                    </centre>
                        </div>
                        <div class="col-6 mx-auto">
                            <centre>
                                 <div class="form-group">
                                  <asp:Button ID="Button2" CssClass="btn btn-warning btn-block btn-lg" runat="server" Text="Update" OnClick="Button2_Click" CausesValidation="False" />

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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:visualtransportConnectionString %>" SelectCommand="SELECT * FROM [bill]"></asp:SqlDataSource>
                        <div class="col">
                            <div style="overflow-x: auto; width: 500px">
                                <div class="overflow-auto">
                                    <asp:GridView CssClass="table table-striped table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="GR No" DataSourceID="SqlDataSource1" AllowPaging="True">
                                        <Columns>
                                            <asp:BoundField DataField="GR No" HeaderText="GR No" ReadOnly="True" SortExpression="GR No" />
                                            <asp:BoundField DataField="Date " HeaderText="Date " SortExpression="Date " />
                                            <asp:BoundField DataField="from" HeaderText="from" SortExpression="from" />
                                            <asp:BoundField DataField="to" HeaderText="to" SortExpression="to" />
                                            <asp:BoundField DataField="crid" HeaderText="crid" SortExpression="crid" />
                                            <asp:BoundField DataField="crname" HeaderText="crname" SortExpression="crname" />
                                            <asp:BoundField DataField="cid" HeaderText="cid" SortExpression="cid" />
                                            <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
                                            <asp:BoundField DataField="package" HeaderText="package" SortExpression="package" />
                                            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                                            <asp:BoundField DataField="HSNcode" HeaderText="HSNcode" SortExpression="HSNcode" />
                                            <asp:BoundField DataField="privatemark" HeaderText="privatemark" SortExpression="privatemark" />
                                            <asp:BoundField DataField="invoiceno" HeaderText="invoiceno" SortExpression="invoiceno" />
                                            <asp:BoundField DataField="value" HeaderText="value" SortExpression="value" />
                                            <asp:BoundField DataField="truckid" HeaderText="truckid" SortExpression="truckid" />
                                            <asp:BoundField DataField="paymentmode" HeaderText="paymentmode" SortExpression="paymentmode" />
                                            <asp:BoundField DataField="actual" HeaderText="actual" SortExpression="actual" />
                                            <asp:BoundField DataField="charged" HeaderText="charged" SortExpression="charged" />
                                            <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
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
