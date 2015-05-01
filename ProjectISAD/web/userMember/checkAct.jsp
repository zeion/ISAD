<%-- 
    Document   : checkAct
    Created on : May 2, 2015, 12:05:16 AM
    Author     : Nichnon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>ตรวจสอบสิทธิ์</title>
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
<!--                                    <img src="../template/dist/img/user2-160x160.jpg" class="user-image" alt="User Image"/>-->
                                    <span class="hidden-xs">สมหมาย ขายหอยทะเล</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
<!--                                        <img src="../template/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />-->
                                        <p>
                                            สมหมาย ขายหอยทะเล
                                            <small>สมาชิก</small>
                                        </p>
                                    </li>
                                    <!-- Menu Body -->
                                    <!-- <li class="user-body">
                                      <div class="col-xs-4 text-center">
                                        <a href="#">Followers</a>
                                      </div>
                                      <div class="col-xs-4 text-center">
                                        <a href="#">Sales</a>
                                      </div>
                                      <div class="col-xs-4 text-center">
                                        <a href="#">Friends</a>
                                      </div>
                                    </li> -->
                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="profile.jsp" class="btn btn-default btn-flat">ข้อมูลส่วนตัว</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="#" class="btn btn-default btn-flat">ออกจากระบบ</a>
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
<!--                            <img src="../template/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />-->
                        </div>
                        <div class="pull-left info">
                            <p>สมหมาย ขายหอยทะเล</p>

                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li class="header">เมนู</li>
                        <li class="active">
                            <a href="#">
                                <i class="fa fa-home"></i> <span>ตารางกิจกรรม</span> <i class="fa fa-angle-left pull-right"></i>
                            </a>
                        </li>
                        <li>
                            <a href="checkAct.jsp">
                                <i class="fa fa-pencil"></i>
                                <span>ตรวจสอบสิทธิ์เข้ากิจกรรม</span><i class="fa fa-angle-left pull-right"></i>
                            </a>
                        </li>
                        <!-- <li class="treeview">
                            <a href="#">
                                <i class="fa fa-user"></i>
                                <span>จัดการข้อมูลส่วนตัว</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="pages/charts/morris.html"><i class="fa fa-circle-o"></i> ดูข้อมูลส่วนตัว</a></li>
                                <li><a href="pages/charts/flot.html"><i class="fa fa-circle-o"></i> แก้ไขข้อมูลส่วนตัว</a></li>
                            </ul>
                        </li> -->
                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        ตรวจสอบสิทธิ์เข้าร่วมกิจกรรม
                    </h1>
                </section>
                <!-- Main content -->
                <section class="content">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">รายชื่อกิจกรรมที่ร้องขอ</h3>
                        </div><!-- /.box-header -->
                        <form role="form">
                            <div class="box-body">
                                <table id="example1" class="table table-bordered table-hover">
                                    <col style="width:10%">
                                    <col style="width:14%">
                                    <col style="width:14%">
                                    <col style="width:13%">
                                    <col style="width:45%">
                                    <thead>
                                    <th style="text-align: center;">ชื่อกิจกรรม</th>
                                    <th style="text-align: center;">วันที่จัดกิจกรรม</th>
                                    <th style="text-align: center;">วันที่สมัคร</th>
                                    <th style="text-align: center;">จำนวนคนที่สมัคร</th>
                                    <th style="text-align: center;">รายละเอียด</th>
                                    <th style="text-align: center;">สถานะ</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>หมิงเต้าปัน1</td>
                                            <td>1 มกราคม 2558</td>
                                            <td>20 ธันวาคม 2557</td>
                                            <td style="text-align: center;">7</td>
                                            <td>เป็นกิจกรรมที่จัดขึ้นสำหรับผู้ที่เข้ามาสถานธรรมครั้งแรกโดยจะมีการอธิบายถึงสถานธรรมเรา</td>
                                            <td><p class="text-success">ผ่าน</p></td>
                                        </tr>
                                        <tr>
                                            <td>หมิงเต้าปัน2</td>
                                            <td>2 กุมภาพันธ์ 2558</td>
                                            <td>27 มกราคม 2558</td>
                                            <td style="text-align: center;">15</td>
                                            <td>เป็นกิจกรรมที่จัดขึ้นสำหรับผู้ที่เข้ามาสถานธรรมครั้งแรกโดยจะมีการอธิบายถึงสถานธรรมเรา</td>
                                            <td><p class="text-muted">รอ</p></td>
                                        </tr>
                                        <tr>
                                            <td>หมิงเต้าปัน10</td>
                                            <td>4 มีนาคม 2558</td>
                                            <td>14 กุมภาพันธ์ 2558</td>
                                            <td style="text-align: center;">9</td>
                                            <td>เป็นกิจกรรมที่จัดขึ้นสำหรับผู้ที่เข้ามาสถานธรรมครั้งแรกโดยจะมีการอธิบายถึงสถานธรรมเรา</td>
                                            <td><p class="text-danger">ไม่ผ่าน</p></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div><!-- /.box-body -->
                            <button type="button" class="btn btn-primary pull-right" style="margin: 1%;">ล้างข้อมูล</button>
                        </form>
                    </div><!-- /.box -->
                </section><!-- /.content -->
            </div><!-- /.content-wrapper -->
            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>Version</b> 2.0
                </div>
                <strong>Copyright &copy; 2014-2015 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights reserved.
            </footer>
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
    </body>
</html>