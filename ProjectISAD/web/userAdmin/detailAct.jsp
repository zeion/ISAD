<%-- 
    Document   : detailAct
    Created on : Apr 30, 2015, 8:41:57 PM
    Author     : Admin
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<sql:query dataSource="test" var ="event">
    SELECT * 
    FROM Event_Active
    JOIN Event_List
    USING (event_ID)
    JOIN Location
    USING (location_ID)
    WHERE event_active_ID = ${param.id}
</sql:query>

<sql:query dataSource="test" var ="ev_num">
    SELECT count(*) AS count
    FROM Event_Request
    GROUP BY event_active_ID
    HAVING event_active_ID = ${param.id}
</sql:query>


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
        <!-- Theme style -->
        <link href="../template/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
        <!-- DATA TABLES -->
        <link href="../template/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
        <!-- iCheck for checkboxes and radio inputs -->
        <link href="../template/plugins/iCheck/all.css" rel="stylesheet" type="text/css" />
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
                <a href="mainpage.html" class="logo">มูลนิธิธรรมกิจไพศาล</a>
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
                                    <img src="../template/dist/img/admin.jpg" class="user-image" alt="User Image"/>
                                    <span class="hidden-xs">สมหมาย ใจดีจัง</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="../template/dist/img/admin.jpg" class="img-circle" alt="User Image" />
                                        <p>
                                            สมหมาย ใจดีจัง
                                            <small>เจ้าหน้าที่ส่วนกลาง</small>
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
<!--                                        <div class="pull-left">
                                            <a href="#" class="btn btn-default btn-flat">ข้อมูลส่วนตัว</a>
                                        </div>-->
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
                            <img src="../template/dist/img/admin.jpg" class="img-circle" alt="User Image" />
                        </div>
                        <div class="pull-left info">
                            <p>สมหมาย ใจดีจัง</p>

                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li class="header">เมนู</li>
                        <li class="active">
                            <a href="mainpage.html">
                                <i class="fa fa-home"></i> <span>ตารางกิจกรรม</span> <i class="fa fa-angle-left pull-right"></i>
                            </a>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-pencil"></i>
                                <span>จัดการกิจกรรม</span><i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="createAct.jsp"><i class="fa fa-circle-o"></i> สร้างกิจกรรม</a></li>
                                <li><a href="listAct.jsp"><i class="fa fa-circle-o"></i> กิจกรรมที่กำลังดำเนินการ</a></li>
                                <li><a href="confirmAct.jsp"><i class="fa fa-circle-o"></i> ยืนยันการเข้าร่วมกิจกรรม</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-users"></i>
                                <span>จัดการสมาชิก</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="listMem.jsp"><i class="fa fa-circle-o"></i> รายชื่อสมาชิก</a></li>
                                <li><a href="confirmMem.jsp"><i class="fa fa-circle-o"></i> ยืนยันการสมัครสมาชิก</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-file-text"></i>
                                <span>สร้างเอกสารรายงาน</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="listMemReport.jsp"><i class="fa fa-circle-o"></i> รายงานข้อมูลส่วนบุคคล</a></li>
                                <li><a href="listActReport.jsp"><i class="fa fa-circle-o"></i>รายงานกิจกรรม</a></li>
                            </ul>
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
                    <c:forEach var="row" items="${event.rows}"> 
                        <div class="col-md-12">
                            <div class="box box-solid">                    
                                <div class="box-header with-border">
                                    <h3 class="box-title">${row.event_name}</h3>
                                </div><!-- /.box-header -->
                                <div class="box-body">
                                    <dl class="dl-horizontal">
                                        <dt><span class="glyphicon glyphicon-calendar"></span></dt>
                                        <dd>${row.event_start}</dd>
                                        <dt><span class="glyphicon glyphicon-time"></span></dt>
                                        <dd>ระยะเวลา ${row.event_day} วัน</dd>
                                        <dt><span class="glyphicon glyphicon-map-marker"></span></dt>
                                        <dd>${row.location_name} - ${row.location_area}</dd>
                                        <dd class="text-muted">${row.location_address} ${row.location_province}</dd>
                                        <dt>สมัคร / ทั้งหมด</dt>
                                        <dd><span class="text-success"><c:forEach var="num" items="${ev_num.rows}">${num.count}</c:forEach></span> / <span class="text-danger">${row.event_amount}</span></dd>
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
                                <a class="btn btn-primary pull-right" href="editActDetail.jsp">แก้ไข</a>
                            </div>
                    </c:forEach> 
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

                //Flat red color scheme for iCheck
                $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
                    checkboxClass: 'icheckbox_flat-green',
                    radioClass: 'iradio_flat-green'
                });
            });
        </script>
    </body>
</html>