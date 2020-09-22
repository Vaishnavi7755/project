<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home1.aspx.cs" Inherits="project.home1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-4 mx-auto">
                <centre>
                  <div class="form-group">
                      <a href="consignee.aspx"><input class="btn btn-danger btn-block btn-lg" id="Button1" type="button" value="Add Consignee" style="margin-top:20px;" /></a>
                  </div>
                </centre>
                <centre>
                  <div class="form-group">
                      <a href="consignor.aspx"><input class="btn btn-danger btn-block btn-lg" id="Button2" type="button" value="Add Consignor" /></a>
                  </div>
                </centre>
                <centre>
                  <div class="form-group">
                      <a href="enquiry.aspx"><input class="btn btn-danger btn-block btn-lg" id="Button3" type="button" value="Add Truck Details" /></a>
                  </div>
                </centre>
                <centre>
                  <div class="form-group">
                      <a href="enquiry.aspx"><input class="btn btn-danger btn-block btn-lg" id="Button4" type="button" value="Add Bill" /></a>
                  </div>
                </centre>
                <centre>
                  <div class="form-group">
                      <a href="enquiry.aspx"><input class="btn btn-danger btn-block btn-lg" id="Button5" type="button" value="Add Stock Details" /></a>
                  </div>
                </centre>
            </div>
        </div>
    </div>
</asp:Content>
