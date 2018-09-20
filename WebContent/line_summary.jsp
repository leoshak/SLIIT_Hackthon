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
<%@ page import="java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@page import="java.text.*"%>
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

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<body>
        <!-- Left Panel -->
        <%response.addHeader("Refresh", "5"); %>

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
                    <li >
                        <a href="index.jsp"> <i class="menu-icon fa fa-dashboard"></i>Dashboard </a>
                    </li>
                    <h3 class="menu-title">Company details</h3><!-- /.menu-title -->
                    <li >
						<a href="daily_line.jsp"> <i class="menu-icon fa fa-calendar"></i>Today </a>
                    </li>
                    <li class="active">
                        <a href="line_summary.jsp"> <i class="menu-icon fa fa-list-alt"></i>Summary </a>
                    </li>
                    <li>
                        <a href="line_report.jsp"> <i class="menu-icon fa fa-file"></i>Report </a>
                    </li>
                    <li>
                        <a href="add_details.jsp"> <i class="menu-icon fa fa-plus"></i>Add new </a>
                    </li>
                
                <li>
                <a class="n hidden" href="./"> <img src="images/productline.png" alt="Logo"></a>
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
            <div class="animated fadeIn">
                <div class="row">
                
    <% Date date = new Date();
    DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
String strDate = dateFormat.format(date);
	                       
	                       try 
                      		{
	                    	   
	                    	   String connectionURL = "jdbc:mysql://localhost:3306/product";
	                    	   Connection connection = null;
	                       	
	                       		Statement  myStmt = null;
	                       		ResultSet myRs = null;
	                       		ResultSet myRs2 = null;

	                       		ResultSet myRs3 = null;
	                       		ResultSet myRs4 = null;
	                       		ResultSet myRs5 = null;
	                       		ResultSet myRs6 = null;
	                       		ResultSet myRs7 = null;
	                       		ResultSet myRs8 = null;
	                       		
	                       		Class.forName("com.mysql.jdbc.Driver").newInstance();
	                       	 connection = DriverManager.getConnection(connectionURL, "root", "1234");
	                       			String sql = "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'product';";
	                       			myStmt =connection.createStatement();
	                       			myRs = myStmt.executeQuery(sql);
	                       			
	                       			if(myRs.next())
	                       			{String srt = myRs.getString("COUNT(*)");
	                       			int count = Integer.parseInt(srt);	
	                       			count=count-2;
	                       			%>
                                    <% for(int i=1; i<=count; i++){
                                    	String sql2 = "SELECT * FROM product.line"+i+" where dateN LIKE('%"+strDate+"%');";
	                       			
	                       			myRs2 = myStmt.executeQuery(sql2);
	                       			if(myRs2.next())
	                       			{
	                       				String lineId=myRs2.getString("lineId");
	                       				String managerid=myRs2.getString("managerid");
	                       				String helper1=myRs2.getString("helper1");
	                       				String helper2=myRs2.getString("helper2");
	                       				String helper3=myRs2.getString("helper3");
	                       				String helper4=myRs2.getString("helper4");
	                       				String helper5=myRs2.getString("helper5");
	                       			%>
                <div class="col-lg-12">
                <div class="card-header">
                            <h4>Line <%=i%> </h4>
                        </div>
				<div class="col-lg-6">
				<div class="card">
                        <div class="card-header">
                            <h4></h4>
                            
                            <h6>Manager name:-<%=managerid %></h6>
                            <h6>helper 1 name:-<%=helper1 %></h6>
                            <h6>helper 2 name:-<%=helper2 %></h6>
                            <h6>helper 3 name:-<%=helper3 %></h6>
                            <h6>helper 4 name:-<%=helper4 %></h6>
                            <h6>helper 5 name:-<%=helper5 %></h6>
                        </div>
                        <div class="card-body">
                        </div>
                        </div>
                        
				</div>
	         <div class="col-lg-6">
                    <div class="card">
                        <div class="card-header"><%String t="100%"; 
                       %>
                            <h4><%=strDate%></h4>
                        </div>
                        <div class="card-body">
                            <p class="muted">To create a default progress bar, add a <code>.progress-bar-striped and .progress-bar-animated</code> class to a <code>&lt;div&gt;</code> element:</p>
                          <h6>Step 1</h6>
                          <div class="progress mb-2">
                              <div class="progress-bar bg-success progress-bar-striped progress-bar-animated" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
                          </div>
                          <h6>Step 2</h6>
                          <div class="progress mb-2">
                              <div class="progress-bar bg-info progress-bar-striped progress-bar-animated" role="progressbar" style="width: <%=t%>" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"><%=t%></div>
                          </div>
                          <h6>Step 3</h6>
                          <div class="progress mb-2">
                              <div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">75%</div>
                          </div>
                          <h6>Step 4</h6>
                          <div class="progress mb-2">
                              <div class="progress-bar bg-danger progress-bar-striped progress-bar-animated" role="progressbar" style="width: 90%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">90%</div>
                          </div>
                          <h6>Step 5</h6>
                          <div class="progress mb-2">
                              <div class="progress-bar bg-primary progress-bar-striped progress-bar-animated" role="progressbar" style="width: 90%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">90%</div>
                          </div>
                        </div>
                    </div>

                    

                </div>
				</div>
				<%} }%>
                        
                        <% 	}
	                       		}
	                       		catch (Exception exc) 
	                    		{
	                    			exc.printStackTrace();
	                    			

	                    		}
	                       	
	                       
	                       %>
                </div> <!-- .row -->
            </div><!-- .animated -->
        </div><!-- .content -->


    </div><!-- /#right-panel -->

    <!-- Right Panel -->


    <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>


</body>
</html>
