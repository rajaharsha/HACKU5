<?php session_start(); ?>
<?php 
if (isset($_SESSION)){
 if ($_SESSION['FBID']){
 $_SESSION['LOGIN_SCOPE'] = "FB";
}
// elseif(){
//  $_SESSION['LOGIN_SCOPE'] = "GOOGLE";
// }
}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="http://alvarez.is/demo/dashio/favicon.png">

    <title>DASHIO - Bootstrap Admin + Front-End template</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
    <link href="assets/css/customstyle.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a href="index.html" class="logo"><b>DASH<span>IO</span></b></a>
            <!--logo end-->
            
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <?php if (!isset($_SESSION['LOGIN_SCOPE'])){ ?>
                    <li><button onclick="window.location.href='fbconfig.php'" class="btn btn-facebook fblogin" type="submit"><i class="fa fa-facebook"></i> Facebook</button></li>
                    <li><button onclick="window.location.href='fbconfig.php'" class="btn btn-theme04 fblogin"><i class="fa fa-google-plus"></i> Google</button></li>
                    <?php } ?>
                    <?php if (isset($_SESSION['LOGIN_SCOPE'])){ ?>
                    <li><a class="logout" href="logout.php">Logout</a></li>
                    <?php } ?>
            	</ul>
            </div>
        </header>
      <!--header end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a href="profile.html"><img src="<?php if (isset($_SESSION['LOGIN_SCOPE'])){ echo $_SESSION['IMAGE'];} 
                  else{ echo "assets/img/ui-sam.jpg"; }?>" class="img-circle" width="80"></a></p>
              	  <h5 class="centered"><?php if (isset($_SESSION['LOGIN_SCOPE'])){ echo $_SESSION['FULLNAME'];} else{ echo "Dinesh Paladhi";} ?></h5>
              	  	
                  <li class="mt">
                      <a href="index.html">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>

                  <li class="mt">
                      <a href="index.html">
                          <i class="fa fa-desktop"></i>
                          <span>My Profile</span>
                      </a>
                  </li>

                  <li class="mt">
                      <a href="index.html">
                          <i class="fa fa-cogs"></i>
                          <span>Settings</span>
                      </a>
                  </li>

                  <li class="mt">
                      <a href="index.html">
                          <i class="fa fa-comments-o"></i>
                          <span>FAQ</span>
                      </a>
                  </li>

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">

          <div class="row search">
            <div class="col-md-4">
            <form class="form-horizontal  style-form" action="#">
                <div class="input-group ">
                    <input type="text" class="form-control" placeholder="search modes">
                      <span class="input-group-btn">
                      <button class="btn btn-theme" type="button"><i class="fa fa-search"></i></button>
                      </span>
                </div>
            </form>
            </div>
              <button type="button" style="margin-right:3%;" class="btn btn-theme pull-right"><i class="fa fa-plus-circle"></i> Create</button>
          </div>
          <div class="row search">
              <div class="col-md-12">
                  <form role="form" class="form-horizontal">
                      <div class="form-group">
                          <div class="col-md-5">
                              <input type="text" placeholder="Mode name" id="f-name" class="form-control">
                          </div>
                          <button type="button" class="btn btn-theme"><i class="fa fa-plus-circle"></i></button>
                      </div>
                      <div class="form-group">
                         <div class="col-md-5">
                            <div class="input-group">
                                <input type="text" class="form-control">
                                <div class="input-group-btn">
                                    <button type="button" class="btn btn-theme02"><i class="fa fa-times"></i></button>
                                </div>
                            </div>
                          </div>
                      </div>
                      <button class="btn btn-theme" type="submit">Submit</button>
                  </form>
              </div>
          </div>

          <div class="row">
           <div class="col-md-12">
              <div class="border-head">
                  <h3>USER MODES</h3>
              </div>  
              <div class="row">
                <div class="col-md-3 mb">
                  <!-- WHITE PANEL - TOP USER -->
                  <div class="white-panel pn">
                    <div class="white-header">
                      <h5>ENTERTAINMENT</h5>
                    </div>
                    <p><img src="assets/img/ui-zac.jpg" class="img-circle" width="80"></p>
                      <div class="row">
                        <div class="col-md-6">
                          <p class="small mt basecolor">UPVOTE</p>
                           <div class="col-md-3 col-md-offset-2 text-center">
                              <i style="font-size:20px; float: left; color:red" class="fa fa-heart fa-2x" aria-hidden="true"></i>                          
                              <span style="margin-left: 8px;"> 12 </span>
                            </div>
                          </div>
                        <div class="col-md-6">
                          <p class="small mt basecolor">SHARE</p>
                          <div class="switch has-switch deactivate"><div class="switch-animate switch-on"><input type="checkbox" checked="" disabled="" data-toggle="switch"><span class="switch-left">ON</span><label>&nbsp;</label><span class="switch-right">OFF</span></div></div>
                        </div>
                      </div>
                  </div>
                </div><!-- /col-md-4 -->
                <div class="col-md-3 mb">
                  <!-- WHITE PANEL - TOP USER -->
                  <div class="white-panel pn">
                    <div class="white-header">
                      <h5>ENTERTAINMENT</h5>
                    </div>
                    <p><img src="assets/img/ui-zac.jpg" class="img-circle" width="80"></p>
                    
                      <div class="row">
                        <div class="col-md-6">
                          <p class="small mt basecolor">UPVOTE</p>
                           <div class="col-md-3 col-md-offset-2 text-center">
                              <i style="font-size:20px; float: left; color:red" class="fa fa-heart fa-2x" aria-hidden="true"></i>                          
                              <span style="margin-left: 8px;"> 12 </span>
                            </div>
                          </div>
                        <div class="col-md-6">
                          <p class="small mt basecolor">SHARE</p>
                          <div class="switch has-switch deactivate"><div class="switch-animate switch-on"><input type="checkbox" checked="" disabled="" data-toggle="switch"><span class="switch-left">ON</span><label>&nbsp;</label><span class="switch-right">OFF</span></div></div>
                        </div>
                      </div>
                  </div>
                </div>
                <!-- /col-md-4 -->
                <div class="col-md-3 mb">
                  <!-- WHITE PANEL - TOP USER -->
                  <div class="white-panel pn">
                    <div class="white-header">
                      <h5>ENTERTAINMENT</h5>
                    </div>
                    <p><img src="assets/img/ui-zac.jpg" class="img-circle" width="80"></p>
                    
                      <div class="row">
                        <div class="col-md-6">
                          <p class="small mt basecolor">UPVOTE</p>
                           <div class="col-md-3 col-md-offset-2 text-center">
                              <i style="font-size:20px; float: left; color:red" class="fa fa-heart fa-2x" aria-hidden="true"></i>                          
                              <span style="margin-left: 8px;"> 12 </span>
                            </div>
                          </div>
                        <div class="col-md-6">
                          <p class="small mt basecolor">SHARE</p>
                          <div class="switch has-switch deactivate"><div class="switch-animate switch-on"><input type="checkbox" checked="" disabled="" data-toggle="switch"><span class="switch-left">ON</span><label>&nbsp;</label><span class="switch-right">OFF</span></div></div>
                        </div>
                      </div>
                  </div>
                </div>

                <div class="col-md-3 mb">
                  <!-- WHITE PANEL - TOP USER -->
                  <div class="white-panel pn">
                    <div class="white-header">
                      <h5>ENTERTAINMENT</h5>
                    </div>
                    <p><img src="assets/img/ui-zac.jpg" class="img-circle" width="80"></p>
                    
                      <div class="row">
                        <div class="col-md-6">
                          <p class="small mt basecolor">UPVOTE</p>
                           <div class="col-md-3 col-md-offset-2 text-center">
                              <i style="font-size:20px; float: left; color:red" class="fa fa-heart fa-2x" aria-hidden="true"></i>                          
                              <span style="margin-left: 8px;"> 12 </span>
                            </div>
                          </div>
                        <div class="col-md-6">
                          <p class="small mt basecolor">SHARE</p>
                          <div class="switch has-switch deactivate"><div class="switch-animate switch-on"><input type="checkbox" checked="" disabled="" data-toggle="switch"><span class="switch-left">ON</span><label>&nbsp;</label><span class="switch-right">OFF</span></div></div>
                        </div>
                      </div>
                  </div>
                </div>
              </div><!-- /row -->
            </div><!-- /col-md-12 END SECTION MIDDLE -->     
      <!-- **********************************************************************************************************************************************************
      RIGHT SIDEBAR CONTENT
      *********************************************************************************************************************************************************** -->                  
                  
              </div><!-- --/row ---->
          </section><! --/wrapper -->
      </section><!-- /MAIN CONTENT -->

      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              2014 - Alvarez.is
              <a href="blank.html#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>

  </body>
</html>
