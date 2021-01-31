<!DOCTYPE html>
<html class="no-js" lang="zxx">
<%@page import = "CCINFOM.*, java.util.*, java.sql.*"%>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--=== Favicon ===-->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

    <title>Table One Query One</title>

    <!--=== Bootstrap CSS ===-->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!--=== Slicknav CSS ===-->
    <link href="assets/css/plugins/slicknav.min.css" rel="stylesheet">
    <!--=== Magnific Popup CSS ===-->
    <link href="assets/css/plugins/magnific-popup.css" rel="stylesheet">
    <!--=== Owl Carousel CSS ===-->
    <link href="assets/css/plugins/owl.carousel.min.css" rel="stylesheet">
    <!--=== Gijgo CSS ===-->
    <link href="assets/css/plugins/gijgo.css" rel="stylesheet">
    <!--=== FontAwesome CSS ===-->
    <link href="assets/css/font-awesome.css" rel="stylesheet">
    <!--=== Theme Reset CSS ===-->
    <link href="assets/css/reset.css" rel="stylesheet">
    <!--=== Main Style CSS ===-->
    <link href="style.css" rel="stylesheet">
    <!--=== Responsive CSS ===-->
    <link href="assets/css/responsive.css" rel="stylesheet">


    <!--[if lt IE 9]>
        <script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="loader-active" style="background-image: url(assets/img/blackred.jpg); background-size: 100% ;">

    <!--== Preloader Area Start ==-->
    <div class="preloader">
        <div class="preloader-spinner">
            <div class="loader-content">
                <img src="assets/img/preloader.gif" alt="JSOFT">
            </div>
        </div>
    </div>
    <!--== Preloader Area End ==-->

    <!--== Header Area Start ==-->
    <header id="header-area" class="fixed-top">

        <!--== Header Bottom Start ==-->
        <div id="header-bottom">
            <div class="container">
                <div class="row">
                    <!--== Logo Start ==-->
                    <div class="col-lg-4">
                        <a href="index.jsp" class="logo">
                            <img src = "assets/img/zero_logo.png">            
                        </a>
                    </div>
                    <!--== Logo End ==-->

                    <!--== Main Menu Start ==-->
                    
                    <div class="col-lg-8 d-none d-xl-block">
                        <nav class="mainmenu alignright">
                            <ul>
                                <li><a href="index.jsp">Slice</a> </li>
                                <li><a href="inp_rollup.jsp">Roll Up</a></li>
                                <li><a href="process_drilldown.jsp">Drill Down</a></li>
                                <li><a href="inp_dice.jsp">Dice</a></li>
                            </ul>
                        </nav>
                    </div>
                   
                    <!--== Main Menu End ==-->
                </div>
            </div>
        </div>
        <!--== Header Bottom End ==-->
    </header>
    <!--== Header Area End ==-->
    <br>
    <br>
    <!--== Login Page Content Start ==-->
    <section id="lgoin-page-wrap" class="section-padding">
        <div id="cur">
            <h1 style= "font-family: Verdana; font-size : 400%; text-align:center ; color: white" >
                TEAMS<br>
                MOST WINS
            </h1>
        </div>
        <br>
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-8 m-auto">
                	<div class="login-page-content">
                		<div class="login-form">
                                    <%
                                        // 1. Connect to the database
                                        Queries q = new Queries();
                                        ResultSet rs = null;
                                        String v_operation = request.getParameter("operation");
                                        String v_stat = request.getParameter("stat");

                                        Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
                                        Connection conn;
                                        conn = DriverManager.getConnection("jdbc:mysql://phtfaw4p6a970uc0.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/l3c6nom2ws5gn61d?useSSL=false&allowPublicKeyRetrieval=true&useTimezone=true&serverTimezone=UTC&user=ttgfmlfy3hablbf1&password=egiw82qb6mhb9s1f");

                                        if(v_operation.equals("Slice"))
                                           rs = q.slice(v_stat);
                                        else if(v_operation.equals("Rollup")) 
                                           rs = q.slice(v_stat);
                                        else if(v_operation.equals("Dice")) 
                                           rs = q.slice(v_stat);
                                        else
                                           rs = q.slice(v_stat);
                                        rs.next();
                                     %>
                                    <form action="index.jsp">
                                            <div class="username">
                                                <strong>Season</strong>
                                                <p><%=v_season%> - <%=v_season2%><p>
                                            </div>
                                            <br>
                                            <div class="username">
                                                <strong>Team Name</strong>
                                                <p><%=rs.getString("team")%><p>
                                            </div>
                                            <br>
                                            <div class="username">
                                                <strong>Wins</strong>
                                                <p><%=rs.getString("wins")%><p>
                                            </div>
                                            <br>
                                            <div class="log-btn">
                                                    <button type="submit"><i class="fa fa-check-square"></i> Proceed</button>
                                            </div>
                                    </form>                                             
                		</div>
                	</div>
                </div>
        	</div>
        </div>
    </section
    <!--== Login Page Content End ==-->

    <!--== Scroll Top Area Start ==-->
    <div class="scroll-top">
        <img src="assets/img/scroll-top.png" alt="JSOFT">
    </div>
    <!--== Scroll Top Area End ==-->

    <!--=======================Javascript============================-->
    <!--=== Jquery Min Js ===-->
    <script src="assets/js/jquery-3.2.1.min.js"></script>
    <!--=== Jquery Migrate Min Js ===-->
    <script src="assets/js/jquery-migrate.min.js"></script>
    <!--=== Popper Min Js ===-->
    <script src="assets/js/popper.min.js"></script>
    <!--=== Bootstrap Min Js ===-->
    <script src="assets/js/bootstrap.min.js"></script>
    <!--=== Gijgo Min Js ===-->
    <script src="assets/js/plugins/gijgo.js"></script>
    <!--=== Vegas Min Js ===-->
    <script src="assets/js/plugins/vegas.min.js"></script>
    <!--=== Isotope Min Js ===-->
    <script src="assets/js/plugins/isotope.min.js"></script>
    <!--=== Owl Caousel Min Js ===-->
    <script src="assets/js/plugins/owl.carousel.min.js"></script>
    <!--=== Waypoint Min Js ===-->
    <script src="assets/js/plugins/waypoints.min.js"></script>
    <!--=== CounTotop Min Js ===-->
    <script src="assets/js/plugins/counterup.min.js"></script>
    <!--=== YtPlayer Min Js ===-->
    <script src="assets/js/plugins/mb.YTPlayer.js"></script>
    <!--=== Magnific Popup Min Js ===-->
    <script src="assets/js/plugins/magnific-popup.min.js"></script>
    <!--=== Slicknav Min Js ===-->
    <script src="assets/js/plugins/slicknav.min.js"></script>

    <!--=== Main Js ===-->
    <script src="assets/js/main.js"></script>
                                 
</body>

</html>