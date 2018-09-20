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
    <link rel="stylesheet" href="assets/css/lib/chosen/chosen.min.css">

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
                    <li >
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
                    <li class="active">
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
            <div class="animated fadeIn">

                <div class="row">

                    <div class="col-xs-6 col-sm-6">
                        <div class="card">
                        <form id="contact" action="Addemp" method="post">
                            <div class="card-header">
                                <strong>Add details employee</strong> 
                            </div>
                            <div class="card-body card-block">
                                <div class="form-group">
                                    <label class=" form-control-label">Full name</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-user"></i></div>
                                        <input name="empFull" type="text" class="form-control" id="empFull"
										placeholder="Full name..." required="" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class=" form-control-label">NIC No</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-id-card"></i></div>
                                        <input name="empNIC" type="text" class="form-control" id="empNIC"
										placeholder="NIC No . ..." required="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class=" form-control-label">Email</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-envelope"></i></div>
									<input name="empEmail" type="email" class="form-control"
										id="empEmail" placeholder="Email..." required="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class=" form-control-label">Date of Birth</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                                        <input name="empDate" type="date" class="form-control" id="empDate"
										required="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class=" form-control-label">Type</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-male"></i></div>
                                        <select name="emptype" id="emptype" class="form-control">
                                        <option value="">Select one</option>
										  <option value="manager">Manager</option>
										  <option value="helper">Helper</option>
										</select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    
                                    <button type="submit" class="btn btn-success btn-lg btn-block">Add employee</button>
                                </div>
                            </div>
                            </form>
                        </div>
                    </div>

                   



                </div>


            </div><!-- .animated -->
        </div><!-- .content -->


    </div><!-- /#right-panel -->

    <!-- Right Panel -->


    <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="assets/js/lib/chosen/chosen.jquery.min.js"></script>

    <script>
        jQuery(document).ready(function() {
            jQuery(".standardSelect").chosen({
                disable_search_threshold: 10,
                no_results_text: "Oops, nothing found!",
                width: "100%"
            });
        });
    </script>

</body>
</html>
