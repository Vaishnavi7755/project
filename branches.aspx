<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="branches.aspx.cs" Inherits="project.branches" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 62px;
        }
        .auto-style2 {
            width: 160px;
        }
        .auto-style3 {
            width: 345px;
        }
        .auto-style4 {
            width: 142px;
        }
        .auto-style6 {
            width: 115px;
        }
        .auto-style7 {
            width: 94px;
        }
        .auto-style8 {
            width: 62px;
            height: 60px;
        }
        .auto-style9 {
            width: 160px;
            height: 60px;
        }
        .auto-style10 {
            width: 345px;
            height: 60px;
        }
        .auto-style11 {
            width: 142px;
            height: 60px;
        }
        .auto-style13 {
            width: 115px;
            height: 60px;
        }
        .auto-style14 {
            width: 94px;
            height: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="Stock/branches1.png" class="img-fluid" />
    </section>
    <section>
        <div class="container" style="margin-bottom:50px;">
            <div class="row">
                <div class="col-12">
                    <h2 style="margin-bottom:25px;">Some of our important branches and sub branches are:</h2>
                </div>
            </div>
            <table style="width:100%;" border="1">
                <tr style="background-color:indianred; font-size:x-large; text-align:center;">
                    <td class="auto-style1">Sr. No</td>
                    <td class="auto-style2">Station name</td>
                    <td class="auto-style3">Address</td>
                    <td class="auto-style4">Officer</td>
                    <td class="auto-style6">State</td>
                    <td class="auto-style6">Zip code</td>
                    <td class="auto-style7">Tel#</td>
                </tr>
                <tr>
                    <td class="auto-style1">1.</td>
                    <td class="auto-style2">Mumbai</td>
                    <td class="auto-style3">Lane-5, Parkvilla Building,Floor-15, Near MacDonalds&#39;, Ville Parle, Mumbai.</td>
                    <td class="auto-style4">Rohit Kumar</td>
                    <td class="auto-style6">Maharashtra</td>
                    <td class="auto-style6">147514</td>
                    <td class="auto-style7">8668567554</td>
                </tr>
                <tr>
                    <td class="auto-style1">2.</td>
                    <td class="auto-style2">Pune</td>
                    <td class="auto-style3">
                        <p class="MsoNormal">
                            74, Shukrawar peth, Empire Building, Near Domino&#39;s, Kothrud, Pune.</p>
                    </td>
                    <td class="auto-style4">Vijay Kale</td>
                    <td class="auto-style6">Maharashtra</td>
                    <td class="auto-style6">254865</td>
                    <td class="auto-style7">7489851104</td>
                </tr>
                <tr>
                    <td class="auto-style1">3.</td>
                    <td class="auto-style2">Sangli</td>
                    <td class="auto-style3">11, Ruchi Colony Gita Nivas, Madhavnagar, Sangli.</td>
                    <td class="auto-style4">Rajesh Sharma</td>
                    <td class="auto-style6">Maharashtra</td>
                    <td class="auto-style6">478595</td>
                    <td class="auto-style7">7785463201</td>
                </tr>
                <tr>
                    <td class="auto-style1">4.</td>
                    <td class="auto-style2">Jaipur</td>
                    <td class="auto-style3">Lane-7, JaiBhavani Building, Floor-5, Jaipur.</td>
                    <td class="auto-style4">Sumer Singh</td>
                    <td class="auto-style6">Rajasthan</td>
                    <td class="auto-style6">455145</td>
                    <td class="auto-style7">9654785213</td>
                </tr>
                <tr>
                    <td class="auto-style1">5.</td>
                    <td class="auto-style2">Kolkata&nbsp;</td>
                    <td class="auto-style3">55, Matakripa building, Groundfloor, Kolkata.</td>
                    <td class="auto-style4">Mayank Dubey</td>
                    <td class="auto-style6">West Bengal</td>
                    <td class="auto-style6">125475</td>
                    <td class="auto-style7">9965823654</td>
                </tr>
                <tr>
                    <td class="auto-style1">6.</td>
                    <td class="auto-style2">Chandigarh</td>
                    <td class="auto-style3">
                        <p class="MsoNormal">
                            <span>B/8, Tara Mandal Appartment Gurukul Colony<o:p>.</o:p></span></p>
                    </td>
                    <td class="auto-style4">Gopal Singh</td>
                    <td class="auto-style6">Punjab</td>
                    <td class="auto-style6">412587</td>
                    <td class="auto-style7">8546741253</td>
                </tr>
                <tr>
                    <td class="auto-style1">7.</td>
                    <td class="auto-style2">Begusarai</td>
                    <td class="auto-style3"><span>15-387, Near Khargaon Saizing, Kala Nagar, Ring Road.</span></td>
                    <td class="auto-style4">Suresh Sharma</td>
                    <td class="auto-style6">Bihar</td>
                    <td class="auto-style6">652874</td>
                    <td class="auto-style7">7846521591</td>
                </tr>
                <tr>
                    <td class="auto-style8">8.</td>
                    <td class="auto-style9">Muzaffarpur</td>
                    <td class="auto-style10">
                        <p class="MsoNormal">
                            <span>Old Motihari Road, Barriya<o:p>.</o:p></span></p>
                    </td>
                    <td class="auto-style11">Kailash Sharma</td>
                    <td class="auto-style13">Bihar</td>
                    <td class="auto-style13">455214</td>
                    <td class="auto-style14">0744852210</td>
                </tr>
                <tr>
                    <td class="auto-style1">9.</td>
                    <td class="auto-style2">Siliguri</td>
                    <td class="auto-style3">
                        <p class="MsoNormal">
                            <span>G D College, Ratanpur Road, opp. St. Joseph School<o:p></o:p></span>.</p>
                    </td>
                    <td class="auto-style4">Anil Kumar Dubey</td>
                    <td class="auto-style6">West Bengal</td>
                    <td class="auto-style6">145448</td>
                    <td class="auto-style7">6587110240</td>
                </tr>
                <tr>
                    <td class="auto-style1">10.</td>
                    <td class="auto-style2">Ahemdabad</td>
                    <td class="auto-style3">
                        <p class="MsoNormal">
                            S<span>tadium Road, Near Goverdhan Mandir<o:p>.</o:p></span></p>
                    </td>
                    <td class="auto-style4">Vinod Kumar</td>
                    <td class="auto-style6">Gujarat</td>
                    <td class="auto-style6">200120</td>
                    <td class="auto-style7">9985741102</td>
                </tr>
                <tr>
                    <td class="auto-style1">11.</td>
                    <td class="auto-style2">Aurangabad</td>
                    <td class="auto-style3">
                        <p class="MsoNormal">
                            <span>Godown No.-4, Nanhera Road, Near Supari Factory<o:p>.</o:p></span></p>
                    </td>
                    <td class="auto-style4">Shambhu Sharan</td>
                    <td class="auto-style6">Maharashtra</td>
                    <td class="auto-style6">325562</td>
                    <td class="auto-style7">8744452036</td>
                </tr>
                <tr>
                    <td class="auto-style1">12.</td>
                    <td class="auto-style2">Nashik</td>
                    <td class="auto-style3">
                        <p class="MsoNormal">
                            <span>17/6 Mathura Road, Opp. Metro Pillar No.-755<o:p>.</o:p></span></p>
                    </td>
                    <td class="auto-style4">Rajiv Singh</td>
                    <td class="auto-style6">Maharashtra</td>
                    <td class="auto-style6">451254</td>
                    <td class="auto-style7">9574555211</td>
                </tr>
                <tr>
                    <td class="auto-style1">13.</td>
                    <td class="auto-style2">Asansol</td>
                    <td class="auto-style3">
                        <p class="MsoNormal">
                            E<span>ast of Kotwali, Dr. Rajender Prasad Road<o:p></o:p></span>.</p>
                    </td>
                    <td class="auto-style4">Akshay Thakur</td>
                    <td class="auto-style6">West Bengal</td>
                    <td class="auto-style6">745854</td>
                    <td class="auto-style7">9372105839</td>
                </tr>
                <tr>
                    <td class="auto-style1">14.</td>
                    <td class="auto-style2">Churu</td>
                    <td class="auto-style3">
                        <p class="MsoNormal">
                            G<span>odhiyari Road, Near Munshi Pokhar, Churu.</span></p>
                    </td>
                    <td class="auto-style4">Pavan Sharma</td>
                    <td class="auto-style6">Rajasthan</td>
                    <td class="auto-style6">856965</td>
                    <td class="auto-style7">7558293755</td>
                </tr>
                <tr>
                    <td class="auto-style1">15.</td>
                    <td class="auto-style2">Biharganj</td>
                    <td class="auto-style3">Y<span>adavpur Road, Near Saraswati Talkies, Biharganj.</span></td>
                    <td class="auto-style4">Anirudh Soni</td>
                    <td class="auto-style6">Bihar</td>
                    <td class="auto-style6">741258</td>
                    <td class="auto-style7">9561481104</td>
                </tr>
                <tr>
                    <td class="auto-style1">16.</td>
                    <td class="auto-style2">Kishanganj</td>
                    <td class="auto-style3">
                        <p class="MsoNormal">
                            T<span>uesa Road,Near Saraswati Vidya Mandir<o:p></o:p></span>, Kishanganj.</p>
                    </td>
                    <td class="auto-style4">Shrikant Shah</td>
                    <td class="auto-style6">Bihar</td>
                    <td class="auto-style6">852369</td>
                    <td class="auto-style7">9875411203</td>
                </tr>
                <tr>
                    <td class="auto-style1">17.</td>
                    <td class="auto-style2">Satara</td>
                    <td class="auto-style3">
                        <p class="MsoNormal">
                            B<span>/8, Tara Mandal Appartment Gurukul colony<o:p></o:p></span>.</p>
                    </td>
                    <td class="auto-style4">Hrushank Waghmare</td>
                    <td class="auto-style6">Maharashtra</td>
                    <td class="auto-style6">745654</td>
                    <td class="auto-style7">7745889330</td>
                </tr>
                <tr>
                    <td class="auto-style1">18.</td>
                    <td class="auto-style2">Solapur</td>
                    <td class="auto-style3">
                        <p class="MsoNormal">
                            <span>1293, Bhadrawati Peth, Akkalkot Road, Near Water Tank.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span>
                        </p>
                    </td>
                    <td class="auto-style4">Nikhil Patil</td>
                    <td class="auto-style6">Maharashtra</td>
                    <td class="auto-style6">412321</td>
                    <td class="auto-style7">9855541100</td>
                </tr>
                <tr>
                    <td class="auto-style1">19.</td>
                    <td class="auto-style2">Jalgaon</td>
                    <td class="auto-style3">C-13, MIDC Area, Lane-5, GovindHare Building, Jalgaon.</td>
                    <td class="auto-style4">Karan Kamble</td>
                    <td class="auto-style6">Maharashtra</td>
                    <td class="auto-style6">951753</td>
                    <td class="auto-style7">8562147530</td>
                </tr>
                <tr>
                    <td class="auto-style1">20.</td>
                    <td class="auto-style2">Nagpur</td>
                    <td class="auto-style3">
                        <p class="MsoNormal">
                            O<span>pp. Satyapal Roadways, Khargaon Road, Wadi-23<o:p></o:p></span>.</p>
                    </td>
                    <td class="auto-style4">Vishvesh Rathi</td>
                    <td class="auto-style6">Maharashtra</td>
                    <td class="auto-style6">789321</td>
                    <td class="auto-style7">8552130074</td>
                </tr>
            </table>
        </div>
    </section>
</asp:Content>
