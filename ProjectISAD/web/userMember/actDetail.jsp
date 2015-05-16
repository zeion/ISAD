<%-- 
    Document   : actDetail
    Created on : May 2, 2015, 12:08:07 AM
    Author     : Nichnon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>รายละเอียดกิจกรรม</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- Bootstrap 3.3.2 -->
        <link href="../template/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- Font Awesome Icons -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- fullCalendar 2.2.5-->
        <link href="../template/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css" />
        <link href="../template/plugins/fullcalendar/fullcalendar.print.css" rel="stylesheet" type="text/css" media='print' />
        <!-- Theme style -->
        <link href="../template/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link href="../template/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="skin-blue">
        <div class="wrapper">

            <header class="main-header">
                <!-- Logo -->
                <a href="index2.html" class="logo">มูลนิธิธรรมกิจไพศาล</a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top" role="navigation">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>
                    <!-- Navbar Right Menu -->
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!-- Messages: style can be found in dropdown.less-->
                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="../template/dist/img/user0.jpg" class="user-image" alt="User Image"/>
                                    <span class="hidden-xs">${sessionScope.person.firstname} ${sessionScope.person.lastname}</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="../template/dist/img/user0.jpg" class="img-circle" alt="User Image" />
                                        <p>
                                            ${sessionScope.person.firstname} ${sessionScope.person.lastname}
                                            <small>สมาชิก</small>
                                        </p>
                                    </li>
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="showProfile.jsp" class="btn btn-default btn-flat">ข้อมูลส่วนตัว</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="../logout.do" class="btn btn-default btn-flat">ออกจากระบบ</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="../template/dist/img/user0.jpg" class="img-circle" alt="User Image" />
                        </div>
                        <div class="pull-left info">
                            <p>${sessionScope.person.firstname} ${sessionScope.person.lastname}</p>

                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li class="header">เมนู</li>
                        <li class="active">
                            <a href="mainpage.jsp">
                                <i class="fa fa-home"></i> <span>ตารางกิจกรรม</span> <i class="fa fa-angle-left pull-right"></i>
                            </a>
                        </li>
                        <li>
                            <a href="checkAct.jsp">
                                <i class="fa fa-pencil"></i>
                                <span>ตรวจสอบสิทธิ์เข้ากิจกรรม</span><i class="fa fa-angle-left pull-right"></i>
                            </a>
                        </li>
                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        รายละเอียดกิจกรรม
                    </h1>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="col-md-12">
                        <div class="box box-solid">
                            <div class="box-header with-border">
                                <h3 class="box-title">หมิงเต้าปัน 2</h3>
                            </div><!-- /.box-header -->
                            <div class="box-body">
                                <dl class="dl-horizontal">
                                    <dt><span class="glyphicon glyphicon-calendar"></span></dt>
                                    <dd>1 มกราคม 2558</dd>
                                    <dt><span class="glyphicon glyphicon-time"></span></dt>
                                    <dd>1 วัน</dd>
                                    <dt><span class="glyphicon glyphicon-map-marker"></span></dt>
                                    <dd>มูลนิธิธรรมกิจไพศาล</dd>
                                    <dd class="text-muted">มูลนิธิธรรมกิจไพศาล เลขที่ 19 ซ.เฉลิมพระเกียรติ ร.9 47 แยก 1 หนองบอน เขตประเวศ  กรุงเทพมหานคร</dd>                                 
                                    <dt>สมัคร / ทั้งหมด</dt>
                                    <dd><span class="text-success">10</span> / <span class="text-danger">20</span></dd>
                                </dl>
                            </div><!-- /.box-body -->
                        </div><!-- /.box -->
                    </div>
                    <div class="col-md-12">
                        <div class="box box-solid">
                            <div class="box-body">
                                <dl class="dl-horizontal">
                                    <dt>รายละเอียด</dt>
                                    <dd>เป็นกิจกรรมที่จัดขึ้นสำหรับผู้ที่เข้ามาสถานธรรมครั้งแรก โดยจะมีการอธิบายเกี่ยวกับสถานธรรม</dd>
                                </dl>
                            </div><!-- /.box-body -->
                        </div><!-- /.box -->
                    </div>
                </section><!-- /.content -->
            </div><!-- /.content-wrapper -->
        </div><!-- ./wrapper -->

        <!-- jQuery 2.1.3 -->
        <script src="../template/plugins/jQuery/jQuery-2.1.3.min.js"></script>
        <!-- Bootstrap 3.3.2 JS -->
        <script src="../template/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- FastClick -->
        <script src='../template/plugins/fastclick/fastclick.min.js'></script>
        <!-- AdminLTE App -->
        <script src="../template/dist/js/app.min.js" type="text/javascript"></script>
        <!-- SlimScroll -->
        <script src="../template/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <!-- DATA TABES SCRIPT -->
        <script src="../template/plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
        <script src="../template/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
        <!-- iCheck 1.0.1 -->
        <script src="../template/plugins/iCheck/icheck.min.js" type="text/javascript"></script>
        <!-- InputMask -->
        <script src="../template/plugins/input-mask/jquery.inputmask.js" type="text/javascript"></script>
        <script src="../template/plugins/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
        <script src="../template/plugins/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
        <!-- page script -->
        <script type="text/javascript">
            $(function () {
                $("#example1").dataTable();
                $('#example2').dataTable({
                    "bPaginate": true,
                    "bLengthChange": false,
                    "bFilter": false,
                    "bSort": true,
                    "bInfo": true,
                    "bAutoWidth": false
                });

                //Datemask dd/mm/yyyy
                $("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});

                //Red color scheme for iCheck
                $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
                    checkboxClass: 'icheckbox_minimal-red',
                    radioClass: 'iradio_minimal-red'
                });
            });




        </script>
    </body>
</html>
