<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="salaryreport1.aspx.cs" Inherits="project.salaryreport1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Salary Report</title>
  
   <script language="javascript" type="text/javascript">  
       function printDiv(div1) {
           //Get the HTML of div  
           var divElements = document.getElementById(div1).innerHTML;
           //Get the HTML of whole page  
           var oldPage = document.body.innerHTML;
           //Reset the page's HTML with div's HTML only  
           document.body.innerHTML = "<html><head><title></title></head><body>" + divElements + "</body>";
           //Print Page  
           window.print();
           //Restore orignal HTML  
           document.body.innerHTML = oldPage;
           //disable postback on print button  
           return false;
       }
          </script>  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 col-sm-5">
                <div class="card" style="margin-bottom: 10px; margin-top: 10px;">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center><img src="Stock/report.png" width="150px" /></center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center><h4 style="margin-top:15px;">Generate report.</h4>
                                    </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-7">
                                <label>Select month:</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="January" Value="1" />
                                        <asp:ListItem Text="February" Value="2" />
                                        <asp:ListItem Text="March" Value="3" />
                                        <asp:ListItem Text="April" Value="4" />
                                        <asp:ListItem Text="May" Value="5" />
                                        <asp:ListItem Text="June" Value="6" />
                                        <asp:ListItem Text="July" Value="7" />
                                        <asp:ListItem Text="August" Value="8" />
                                        <asp:ListItem Text="September" Value="9" />
                                        <asp:ListItem Text="October" Value="10" />

                                        <asp:ListItem Value="11">November</asp:ListItem>
                                        <asp:ListItem Value="12">December</asp:ListItem>

                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Select Month." InitialValue="-1" ControlToValidate="DropDownList1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <label>Year:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Year">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Year cannot be empty" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                           <%-- <div class="col-md-4">
                                <label>Status:</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server">
                                       <asp:ListItem Text="Select" Value="select" />
                                        <asp:ListItem Text="Paid" Value="1" />
                                        <asp:ListItem Text="Unpaid" Value="2" />
                                    </asp:DropDownList>
                                </div>
                            </div> --%>
                        </div>
                        <div class="row">
                            <div class="col-8 mx-auto">
                                <centre>
                                 <div class="form-group">
                                  <asp:Button ID="Button1" CssClass="btn btn-success btn-block btn-lg" runat="server" Text="Generate report" OnClick="Button1_Click" />
                              </div>
                                    </centre>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="homepage.aspx"><< Back to Home</a><br />
                <br />
            </div>
            <div class="col-md-7 col-sm-7">
                <div class="card" style="margin-bottom: 10px; margin-top: 10px;">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center><h4>Monthly Report:</h4>
                                    </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div id="div1" class="col">
                                <div style="overflow-x: auto; width: 1040px">
                                    <div class="overflow-auto">
                                       
                                        <table width="80%" id="pnlGridView" runat="server"  class="ContentTable">
                                            <tr>
                                                <td colspan="6" align="centre">
                                                    <h3 style="text-align:center;">Paid Unpaid Salary Report</h3>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td colspan="4">
                                                    <asp:GridView CssClass="table table-striped table-bordered" ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" Style="margin-right: 0px" EmptyDataText="No record found.">
                                                        <Columns>
                                                            <asp:BoundField DataField="agentid" HeaderText="Agent ID" />
                                                            <asp:BoundField DataField="aname" HeaderText="Name" />
                                                            <asp:BoundField DataField="date" HeaderText="Date" />
                                                            <asp:BoundField DataField="bsalary" HeaderText="Basic Salary" />
                                                            <asp:BoundField DataField="netsalary" HeaderText="Net salary" />
                                                            <asp:BoundField DataField="status" HeaderText="Status" />
                                                        </Columns>
                                                    </asp:GridView>
                                                </td>
                                            </tr>
                                          <%--  <tr>
                                                <td colspan="6" align="centre">
                                                    <label>Total salary paid:</label>
                                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Year" ReadOnly="True">
                                    </asp:TextBox>
                                                </td>
                                            </tr> --%> 
                                        </table>
                                    </div>
                                </div>
                            </div>
                            </div>
                            <div class="row">
                            <div class="col-8 mx-auto">
                                <centre>
                                 <div class="form-group">
                            <input type="button" Class="btn btn-success btn-block btn-lg" value="Print Report" align="right" onclick="javascript: printDiv('div1')" />
                        </div>
                         </centre>
                                </div>
                                </div>
                           
                        
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
