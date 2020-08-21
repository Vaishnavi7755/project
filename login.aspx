<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="project.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="style.css" rel="stylesheet" />
     <script src="https://kit.fontawesome.com/ebd2a6b83a.js" crossorigin="anonymous"></script>
</head>
<body>
    <p>

    </p>
    <form id="form1" runat="server">
       <section>
           <img src="Stock/background.jpg" class="panel" />
       </section>
        <div class="sec2">
            <div class="container">
                <div class="social">
                    <a href="https://www.facebook.com/Vaishnavi-Sharma-163873604340783/?ref=settings" target="_blank"><i class="fab fa-facebook fa-3x"></i></a>
                    <a href="https://www.instagram.com" target="_blank"><i class="fab fa-instagram fa-3x"></i></a>
                </div>
                <div class="content">
                    <h2>Sign-up</h2>

                    <asp:TextBox ID="TextBox1" placeholder="Username" runat="server"></asp:TextBox><br />
                    <asp:TextBox ID="TextBox2" placeholder="Password" runat="server" Style=" height:30px; border:0; margin-top:2.5vh; margin-left:4vw; border-radius:20px;" TextMode="Password"></asp:TextBox><br />
                    <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" />

                    <asp:Label ID="Label1" Style="padding-left:4vw; padding-top:2vw; align-items:center;" Font-Size="Large" ForeColor="Red" BorderWidth="2px" BorderColor="Black" Font-Bold="true" BackColor="White" runat="server"></asp:Label>
                </div>
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" ProviderName="<%$ ConnectionStrings:projectConnectionString.ProviderName %>" SelectCommand="SELECT `user`, pwd FROM login"></asp:SqlDataSource>
    </form>
</body>
</html>
