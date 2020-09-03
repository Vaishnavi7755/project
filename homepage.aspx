<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="project.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <marquee scrollamount="20" direction="left" behavior="scroll">
           <p class="container-fluid" style="color:darkblue; font-size:60px; background-color:powderblue; text-align:center;"> Visual Transport .pvt .ltd</p>
        <img src="Stock/home21.jpg" class="img-fluid" width="1500px" height="300px" />
            </marquee>
    </section>
    <section>
        <div class="container" aria-disabled="True">
            <div class="row">
                <div class="col-12">
                    <h2 style="margin-top:25px; text-align:center;">Our features</h2>
                    <p style="margin-bottom:25px; text-align:center;"><b>Our 3 primary features</b></p>
                </div>
            </div>
             <div class="row">
                <div class="col-md-4" style="text-align:center" aria-disabled="True">
                    <centre>
                    <img src="Stock/digidata.png" width="150px" style="margin-top:20px; text-align:center;"/>
                    <h4 style="margin-top:15px;">Digital processing</h4>
                    <p class="text-justify">Our company has developed and evaluated its website in such a way that the agents can add the
                        driver details, truck details, consignee, consignor and generate the bill online and hence does 
                        not have to go through the hardship of papaerwork.
                    </p>
                    </centre>
                </div>
                <div class="col-md-4">
                    <centre>
                    <img src="Stock/transport.jpg" width="150px"/>
                    <h4>Transportation made simple</h4>
                    <p class="text-justify">Our company provides the agents with gudowns to store the items
                        and transport accordingly. Connections to different truck owners and drivers is also
                        provided for easy transportation medium adjustments.
                    </p>
                    </centre>
                </div>         
                <div class="col-md-4">
                    <centre>
                    <img src="Stock/branches.png" width="150px"/>
                    <h4>Aligned branches</h4>
                    <p class="text-justify">Our company has different branches in different parts of the 
                        country which are then centrally aligned and connected to the two main branches
                        in <b>Mumbai</b> and <b>Pune</b>. This helps us to monitor different branches 
                        with easy and connect with the agents.
                    </p>
                    </centre>
                </div>
            </div>
        </div>
    </section>
     <section>
        <marquee scrollamount="20" direction="left" behavior="scroll">
        <img src="Stock/homedown.jpg" class="img-fluid"  />
            </marquee>
    </section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2 style="margin-top:25px; text-align:center;">More</h2>
                    <p style="margin-bottom:25px; text-align:center;"><b>For more information about us.</b></p>
                </div>
            </div>
             <div class="row">
                <div class="col-md-6">
                    <centre>
                    <img src="Stock/call.png" width="100px" style="margin-top:20px; "/>
                    <h4 style="margin-top:15px;">Call us</h4>
                    <p class="text-justify">
                        For more information about our company call our center branch in <b>Mumbai:</b><br />
                       <b> Mobile number:</b>8668567554
                    </p>
                    </centre>
                </div>
                <div class="col-md-6">
                    <centre>
                    <img src="Stock/visit.png" width="200px"/>
                    <h4>Visit us</h4>
                    <p class="text-justify">
                        Visit our head branches for more details.<br />
                        <b>Pune:</b>74, Shukrawar peth, Empire Building, Near Domino's, Kothrud, Pune.<br />
                        <b>Mobile no.:</b>7489851104<br />
                        <b>Mumbai:</b>Lane-5, Parkvilla Building,Floor-15, Near MacDonalds', Ville Parle, Mumbai.<br />
                        <b>Mobile no.:</b>8668567554<br />
                    </p>
                    </centre>
                </div>
                 </div>
            </div>
</asp:Content>
