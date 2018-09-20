<%@page import="java.sql.DriverManager"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page
	import="java.util.*,
 java.io.IOException
 , java.io.PrintWriter
, java.sql.ResultSet
, javax.annotation.Resource
, javax.servlet.ServletException
, javax.servlet.annotation.WebServlet
, javax.servlet.http.HttpServlet
, javax.servlet.http.HttpServletRequest
, javax.servlet.http.HttpServletResponse
, javax.servlet.http.HttpSession
, javax.sql.DataSource

, java.sql.Connection
, java.sql.Statement"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Aura products</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">

    <link rel="stylesheet" href="assets/css/normalize.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
    <link rel="stylesheet" href="assets/scss/style.css">
    <link href="assets/css/lib/vector-map/jqvmap.min.css" rel="stylesheet">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<body>


        <!-- Left Panel -->

    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">

            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="./"><img src="images/aura_logo.png" alt="Logo"></a>
                <a class="navbar-brand hidden" href="./"><img src="images/aura_logo2.png" alt="Logo"></a>
            </div>

            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="index.jsp"> <i class="menu-icon fa fa-dashboard"></i>Dashboard </a>
                    </li>
                    <h3 class="menu-title">Company details</h3><!-- /.menu-title -->
                    <li >
						<a href="daily_line.jsp"> <i class="menu-icon fa fa-calendar"></i>Today </a>
                    </li>
                    <li >
                        <a href="line_summary.jsp"> <i class="menu-icon fa fa-list-alt"></i>Summary </a>
                    </li>
                    <li>
                        <a href="line_report.jsp"> <i class="menu-icon fa fa-file"></i>Report </a>
                    </li>
                    <li>
                        <a href="add_details.jsp"> <i class="menu-icon fa fa-plus"></i>Add new </a>
                    </li>
                
                
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside><!-- /#left-panel -->

    <!-- Left Panel -->

    <!-- Right Panel -->

    <div id="right-panel" class="right-panel">

        <!-- Header-->
         <header id="header" class="header">

            <div class="header-menu">

                <div class="col-sm-7">
                    <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa fa-tasks"></i></a>
                    
                </div>

                <div class="col-sm-5">
                    <div class="user-area dropdown float-right">
                    <img src="images/flag/srilanka.png" alt="Girl in a jacket" width="40px" height="30px">
                        
                    </div>


                </div>
            </div>

        </header><!-- /header -->
        <!-- Header-->

        <div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>Dashboard</h1>
                    </div>
                </div>
            </div>
            
        </div>
 <div class="content mt-3">
 <img src="images/productline.png" width="1100px" height="400px">
 </div>
        <div class="content mt-3">

           <div class="col-sm-6 col-lg-6">
                <div class="card text-white bg-flat-color-1">
                    <div class="card-body pb-0">
                        <%
	                       
	                       try 
                      		{
	                    	   
	                    	   String connectionURL = "jdbc:mysql://localhost:3306/product";
	                    	   Connection connection = null;
	                       	
	                       		Statement  myStmt = null;
	                       		ResultSet myRs = null;
	                       		
	                       		Class.forName("com.mysql.jdbc.Driver").newInstance();
	                       	 connection = DriverManager.getConnection(connectionURL, "root", "1234");
	                       			String sql = "SELECT COUNT(*) FROM product.employee;";
	                       			myStmt =connection.createStatement();
	                       			myRs = myStmt.executeQuery(sql);
	                       			
	                       			while(myRs.next())
	                       			{String srt = myRs.getString("COUNT(*)");
	                       			int count = Integer.parseInt(srt);	%>
                        <h4 class="mb-0">
                            <span class="count"><%=count %></span>
                        </h4>
                        <p class="text-light">Employees count</p>
<% 	}
	                       		}
	                       		catch (Exception exc) 
	                    		{
	                    			exc.printStackTrace();
	                    			

	                    		}
	                       	
	                       
	                       %>

                    </div>

                </div>
            </div>
            <!--/.col-->

            <div class="col-sm-6 col-lg-6">
                <div class="card text-white bg-flat-color-2">
                    <div class="card-body pb-0">
                        <%
	                       
	                       try 
                      		{
	                    	   
	                    	   String connectionURL = "jdbc:mysql://localhost:3306/product";
	                    	   Connection connection = null;
	                       	
	                       		Statement  myStmt = null;
	                       		ResultSet myRs = null;
	                       		
	                       		Class.forName("com.mysql.jdbc.Driver").newInstance();
	                       	 connection = DriverManager.getConnection(connectionURL, "root", "1234");
	                       			String sql = "SELECT COUNT(*) FROM product.productitem;";
	                       			myStmt =connection.createStatement();
	                       			myRs = myStmt.executeQuery(sql);
	                       			
	                       			while(myRs.next())
	                       			{String srt = myRs.getString("COUNT(*)");
	                       			int count = Integer.parseInt(srt);	%>
                        <h4 class="mb-0">
                            <span class="count"><%=count %></span>
                        </h4>
                        <p class="text-light">Product</p>
<% 	}
	                       		}
	                       		catch (Exception exc) 
	                    		{
	                    			exc.printStackTrace();
	                    			

	                    		}
	                       	
	                       
	                       %>
                        

                        

                    </div>
                </div>
            </div>
            <!--/.col-->

            
            <!--/.col-->


    <!-- Right Panel -->

    <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>


    <script src="assets/js/lib/chart-js/Chart.bundle.js"></script>
    <script src="assets/js/dashboard.js"></script>
    <script src="assets/js/widgets.js"></script>
    <script src="assets/js/lib/vector-map/jquery.vmap.js"></script>
    <script src="assets/js/lib/vector-map/jquery.vmap.min.js"></script>
    <script src="assets/js/lib/vector-map/jquery.vmap.sampledata.js"></script>
    <script src="assets/js/lib/vector-map/country/jquery.vmap.world.js"></script>
    <script>
        ( function ( $ ) {
            "use strict";

            jQuery( '#vmap' ).vectorMap( {
                map: 'world_en',
                backgroundColor: null,
                color: '#ffffff',
                hoverOpacity: 0.7,
                selectedColor: '#1de9b6',
                enableZoom: true,
                showTooltip: true,
                values: sample_data,
                scaleColors: [ '#1de9b6', '#03a9f5' ],
                normalizeFunction: 'polynomial'
            } );
        } )( jQuery );
    </script>

</body>
</html>
