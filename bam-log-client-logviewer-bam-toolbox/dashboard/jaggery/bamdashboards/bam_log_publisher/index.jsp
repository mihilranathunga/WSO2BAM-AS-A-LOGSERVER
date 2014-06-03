<!DOCTYPE html>
<html class="no-js"> 
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>BAM Dashboard - WSO2 Bam Log Client Logs</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width">
  <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
  <link href="../resources/css/bootstrap.css" rel="stylesheet">
  <link href="../resources/css/bootstrap-theme.css" rel="stylesheet">
  <link href="../resources/css/bootstrap-missing.css" rel="stylesheet"> 
  <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet"> 

  <style>
  body {
    padding-top: 50px;
    padding-bottom: 20px;
    }.pagination-centered {
      text-align: center;
    }

    .dropdown-menu {
background: #FFFFFF !important;
}
.dropdown-menu li a {
color: #1D0404 !important;
}

    </style>

    <link rel="stylesheet" href="../resources/css/main.css">
    <link rel="stylesheet" href="../resources/font-awesome/css/font-awesome.min.css">
    <script src="../resources/js/vendor/jquery-1.10.1.min.js"></script>
  </head>

  <body>


    <div id="wrap">
      <div class="navbar navbar-inverse navbar-fixed-top main-menu">
        <div class="container" style="max-width: 95%;">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="../../../carbon"><img src="logo-inside.png"/>
            </a>
          </div>
          <div class="navbar-collapse collapse main-menu-inside">
<!--             <ul class="nav navbar-nav pull-left menu1" id="leftnav"></ul>
 -->          </div>
          <!--/.navbar-collapse -->
        </div>
      </div>

      <div class="container">
        <div class="container content-starter" >
          <div class="row">
            <div class="col-lg-12">
              <h1 style="font-size: 26px;"><i class="icon-cog"></i> BAM Log Client Logs</h1>
            </div>
          </div>
        </div>

        <div class="container content-section">

          <div class="col-lg-12 ">

            <div class="row">
              <div class="col-xs-4">
                <label for="query">Select a Host </label>
                <select name="hostName" id="hostName" class="form-control">
                  <option selected="selected" disabled="disabled">Select a Host Address</option>
                  
                  <option value="ALL">ALL</option>
                  
                  
                </select>
              </div>
              <div class="col-xs-4">
                <label for="query">Select a FileKey</label>
                <select name="log" id="fileKey" class="form-control">
                  <option selected="selected" disabled="disabled">All</option>
                </select>
              </div>
              <div class="col-xs-4">
                <label for="query">Max rows</label>
                <select id="limit-dd" name="basic-combo">
                  <option selected="selected" disabled="disabled">Select a Limit</option>
                  <option value="ALL">ALL</option>
                </select>
              </div>
            </div>
            <div class="row">

              <div class="col-xs-4">
                <label for="query">Start time *</label>
                <!--<input name="startTime" id="startTime" class="form-control" type="text" />-->
                <div id="datetimepicker1" class="input-append datetimepicker" >
                  <input data-format="MM/dd/yyyy HH:mm:ss PP" type="text" name="startTime" id="from-time" class="form-control">

                  <span class="add-on"> <i data-time-icon="icon-time" data-date-icon="icon-calendar"> </i> </span>
                 <!--  <div class="help-block">
                    MM/dd/yyyy HH:mm:ss PP
                  </div> -->

                </div>
              </div>
              <div class="col-xs-4">
                <label for="query">End time *</label>
                <!--<input name="endTime" id="endTime" class="form-control" type="text" />-->
                <div id="datetimepicker2" class="input-append datetimepicker">
                  <input data-format="MM/dd/yyyy HH:mm:ss PP" type="text" name="endTime" id="to-time" class="form-control">

                  <span class="add-on"> <i data-time-icon="icon-time" data-date-icon="icon-calendar"> </i> </span>
                  <!-- <div class="help-block">
                    MM/dd/yyyy HH:mm:ss PP
                  </div> -->
                </div>
              </div>
              <div class="col-xs-2">
               <label for="query">Clear</label>
               <button id="clearSelectionBtn" class="btn btn-primary btn-small filter-btn" style="float: left;">Clear</button>
             </div>
             <div class="col-xs-2">
               <label for="query">Submit</label>
               <button id="submitBtn" class="btn btn-primary btn-small filter-btn" style="float: left;">Submit</button>
             </div>
           </div>
         </div>

          <div class="row" style="min-height:700px; padding-top:10px;">
          <div class="col-lg-12">
            <iframe style="min-height:1200px" id="displayLogs" src="gadgets/log-viewer.jag?filekey=All&hostIP=All&fromTime=All&toTime=All" class="single-column-gadget"></iframe>
          </div>
        </div>

        <!-- /container -->
        <div id="push"></div>
      </div>


      <footer id="footer">
        <div class="container">
          <p class="muted credit">&copy; WSO2 2014</p>
        </div>
      </footer>

      <input type="hidden" id="resource_type" value="Endpoint"/>
      <input type="hidden" name="tenantId" id="tenantId" value= "<%=  session.getAttribute( "tenantId" )%>"/>
      <input type="hidden" name="domainId" id="domainId" value= "<%=  session.getAttribute( "domain" )%>"/>




      <script src="../resources/js/vendor/bootstrap.min.js"></script>
      <script type="text/javascript" src="scripts/bootstrap-datetimepicker.min.js"></script>
      <script src="../resources/js/vendor/jquery.validate.min.js"></script>
      <script type="text/javascript" src="../resources/js/bamdashboard.js"></script>
      <script type="text/javascript" src="scripts/bam.dashboard.main.js"></script>
      <script type="text/javascript">
      var currentTab = "WSO2 Private PAAS Metering";
      </script>
      <script type="text/javascript" src="../navigation.populator.js"></script>
    </body>
    </html>