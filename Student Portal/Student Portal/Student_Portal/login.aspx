<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Student_Portal.Student_Portal.login" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Login to Portal</title>

    <!-- Fontfaces CSS-->
    <link href="../Bootstrap_CSS/css/font-face.css" rel="stylesheet" media="all">
    <link href="../Bootstrap_CSS/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="../Bootstrap_CSS/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="../Bootstrap_CSS/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="../Bootstrap_CSS/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="../Bootstrap_CSS/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="../Bootstrap_CSS/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="../Bootstrap_CSS/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="../Bootstrap_CSS/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="../Bootstrap_CSS/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="../Bootstrap_CSS/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="../Bootstrap_CSS/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="../Bootstrap_CSS/css/theme.css" rel="stylesheet" media="all">

    <!-- BOOTSTRAP 4 SOURCE FILES -->
    <link rel="stylesheet" type="text/css" href="../Bootstrap_CSS/bootstrap/dist/css/bootstrap.min.css">
	<script type="text/javascript" src="../Bootstrap_CSS/bootstrap/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../Bootstrap_CSS/bootstrap/js/dist/alert.js"></script>
	<script type="text/javascript" src="../Bootstrap_CSS/bootstrap/assets/js/vendor/popper.min.js"></script>
	<script type="text/javascript" src="../Bootstrap_CSS/bootstrap/jquery/jquery.min.js"></script>
    <!-- BOOTSTRAP 4 SOURCE FILES ENDS HERE -->

    <style type="text/css">
        .auto-style1 {
            width: 313px;
            height: 191px;
        }
        .auto-style2 {
            width: 40%;
            height: 196px;
        }
    </style>

</head>

<body style="padding-top:5%; padding-bottom:5%;">

   <div class="jumbotron bg-grey" style=" width:40%; margin:auto; box-shadow:0 4px 8px 0 rgba(0,0,0,0.3), 0 6px 20px 0 rgba(0,0,0,0.25);">
       <h2 style="text-align:center;">Login</h2>
        <form id="loginform" runat="server">
            
            <div class="form-group">
                <label><strong>User Email:</strong></label>
                <asp:TextBox ID="user_email" runat="server" class="form-control" placeholder="Enter email" ></asp:TextBox>
            </div>
            <div class="form-group">
                <label><strong>User Password:</strong></label>
                <asp:TextBox ID="user_pass" runat="server" Class="form-control" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <asp:RequiredFieldValidator ID="emailvalidate" runat="server" ErrorMessage="Email Error! Check it again." ForeColor="Red" ControlToValidate="user_email"></asp:RequiredFieldValidator> <br />
                <asp:RequiredFieldValidator ID="passvalidate" runat="server" ErrorMessage="Password Error! Check it again." ForeColor="Red" ControlToValidate="user_pass"></asp:RequiredFieldValidator>

            </div>
            <br />
            <asp:Button ID="student_login" CssClass="btn btn-success btn-block" runat="server" Text="Student Login" OnClick="Student_login_Click" />
            <hr style="width:90%; margin:10px; text-align:center" />
            
                <asp:Button ID="teacher_login_submit" CssClass="btn btn-primary btn-block" runat="server" Text="Teacher Login" OnClick="Teacher_submit_Click" />
            
            <hr style="width:90%; margin:10px; text-align:center" />
            <div class="form-group" style="text-align:center;">
                <asp:Button runat="server" CssClass="btn btn-primary" Style="width:45%;" text="Facbook"/>  &nbsp; &nbsp;
                <asp:Button runat="server" CssClass="btn btn-danger" Style="width:45%;" Text="Google" /> 
                <hr style="width:90%; margin:10px;" />
                <p><b>Sign Up here </b> <a href="#">Register</a> </p>
            </div>

        </form>
   </div>

    <!-- Jquery JS-->
    <script src="../Bootstrap_CSS/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="../Bootstrap_CSS/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="../Bootstrap_CSS/vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="./Bootstrap_CSS/vendor/slick/slick.min.js">
    </script>
    <script src="../Bootstrap_CSS/vendor/wow/wow.min.js"></script>
    <script src="../Bootstrap_CSS/vendor/animsition/animsition.min.js"></script>
    <script src="../Bootstrap_CSS/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="../Bootstrap_CSS/vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="../Bootstrap_CSS/vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="../Bootstrap_CSS/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="../Bootstrap_CSS/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="../Bootstrap_CSS/vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="../Bootstrap_CSS/vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="../Bootstrap_CSS/js/main.js"></script>

    

</body>

</html>
<!-- end document-->
