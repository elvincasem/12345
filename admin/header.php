<?php
ob_start();
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>CHARMS - CHED RO1 Initiative and not for sale.</title>
	<!-- Custom CSS by Elvin -->
	<link href="dist/css/custom.css" rel="stylesheet">
	
    <!-- Bootstrap Core CSS -->
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
	
	<!-- DataTables CSS -->
    <link href="bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="dist/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
  <!--  <link href="bower_components/morrisjs/morris.css" rel="stylesheet"> -->

    <!-- Custom Fonts -->
    <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	
	
	<!-- searchable list -->
    <script type="text/javascript" src="bower_components/jquery/dist/jquery.min.js"></script>
   <!-- <script type="text/javascript" src="js/sol.js"></script>
	<script src="js/sol.js"></script>
	<link href="js/sol.css" rel="stylesheet">
	<script type="text/javascript" src="js/select2.full.js"></script> -->
	<script type="text/javascript" src="dist/js/select2.full.js"></script>
	<link href="dist/css/select2.min.css" type="text/css" rel="stylesheet" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<style>
.datepicker{z-index:1151 !important;}
.itemvalues{color:#337ab7;}

</style>

 <script type="text/javascript">
$(document).ready(function() {
  $(".js-example-basic-single").select2();
  $(".js-example-basic-single2").select2();
  $(".js-example-basic-single3").select2();
});
</script>
</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                
				<img src="images/header-admin.png">
				
            </div>
            <!-- /.navbar-header -->
<?php include("so.php");?>
            

            <?php include('navigation.php');?>
        </nav>

        