<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>รายชื่อสมาชิก</title>
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
                                    <img src="../template/dist/img/user2-160x160.jpg" class="user-image" alt="User Image"/>
                                    <span class="hidden-xs">สมหมาย ใจดีจัง</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="../template/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
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
                                        <div class="pull-left">
                                            <a href="#" class="btn btn-default btn-flat">ข้อมูลส่วนตัว</a>
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
                            <img src="../template/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
                        </div>
                        <div class="pull-left info">
                            <p>สมหมาย ใจดีจัง</p>

                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li class="header">เมนู</li>
                        <li>
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
                                <li><a href="createAct.html"><i class="fa fa-circle-o"></i> สร้างกิจกรรม</a></li>
                                <li><a href="listAct.html"><i class="fa fa-circle-o"></i> กิจกรรมที่กำลังดำเนินการ</a></li>
                                <li><a href="confirmAct.html"><i class="fa fa-circle-o"></i> ยืนยันการเข้าร่วมกิจกรรม</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-users"></i>
                                <span>จัดการสมาชิก</span>
                                <i class="fa fa-angle-left pull-right"></i>
                                
                                ${user}
                            </a>
                            <ul class="treeview-menu">
                                <li class="active"><a href="listMem.html"><i class="fa fa-circle-o"></i> รายชื่อสมาชิก</a></li>
                                <li><a href="confirmMem.html"><i class="fa fa-circle-o"></i> ยืนยันการสมัครสมาชิก</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-file-text"></i>
                                <span>สร้างเอกสารรายงาน</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="pages/UI/general.html"><i class="fa fa-circle-o"></i> รายงานส่วนบุคคล</a></li>
                                <li><a href="pages/UI/icons.html"><i class="fa fa-circle-o"></i>รายงานตามรูปแบบ</a></li>
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
                        รายชื่อสมาชิก
                    </h1>                    
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12" >
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">รายชื่อสมาชิก</h3>
                                </div><!-- /.box-header -->
                                <form role="form">
                                    <div class="box-body">
                                        <table id="example1" class="table table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <th>ชื่อ</th>
                                                    <th>นามสกุล</th>
                                                    <th>ชื่อเล่น</th>
                                                    <th>อายุ</th>
                                                    <th>จังหวัด</th>
                                                    <th>อาชีพ</th>
                                                    <th>ตัวเลือก</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <sql:query dataSource="test" var ="memlist">
                                                    SELECT * 
                                                    FROM Member_User 
                                                    JOIN Member_Data 
                                                    USING (member_id)
                                                </sql:query>
                                                    
                                                <c:forEach var="member" items="${Member.showMem('1',applicationScope['connection'])}">
                                                    <tr>
                                                        <td>${member.member_firstname}</td>
                                                        <td>${member.member_lastname}</td>
                                                        <td>${member.member_nickname}</td>
                                                        <td></td>
                                                        <td>กรุงเทพ</td>
                                                        <td>วิศวกร</td>
                                                        <td><button type="submit" class="btn btn-box-tool"><i class="fa fa-info-circle"></i></button> <button type="submit" class="btn btn-box-tool"><i class="fa fa-wrench"></i></button></td>
                                                    </tr>
                                                </c:forEach>
                                                   
                                                <tr>
                                                    <td>ธีระพล</td>
                                                    <td>แย้มเดช</td>
                                                    <td>นัท</td>
                                                    <td>20</td>
                                                    <td>กรุงเทพ</td>
                                                    <td>วิศวกร</td>
                                                    <td><button type="submit" class="btn btn-box-tool"><i class="fa fa-info-circle"></i></button> <button type="submit" class="btn btn-box-tool"><i class="fa fa-wrench"></i></button></td>
                                                </tr>
                                                <tr>
                                                    <td>ธีระพล</td>
                                                    <td>เทศเวทินากร</td>
                                                    <td>ต้น</td>
                                                    <td>35</td>
                                                    <td>ปธุมธานี</td>
                                                    <td>รับจ้าง</td>
                                                    <td><button type="submit" class="btn btn-box-tool"><i class="fa fa-info-circle"></i></button> <button type="submit" class="btn btn-box-tool"><i class="fa fa-wrench"></i></button></td>
                                                </tr>  
                                                <tr>
                                                    <td>กิติคุณ</td>
                                                    <td>ขาวล้ำเลิศ</td>
                                                    <td>ตาล</td>
                                                    <td>18</td>
                                                    <td>กรุงเทพ</td>
                                                    <td>นักเรียน</td>
                                                    <td><button type="submit" class="btn btn-box-tool"><i class="fa fa-info-circle"></i></button> <button type="submit" class="btn btn-box-tool"><i class="fa fa-wrench"></i></button></td>
                                                </tr>
                                                <tr>
                                                    <td>วีระ</td>
                                                    <td>แย้มเดช</td>
                                                    <td>นัท</td>
                                                    <td>20</td>
                                                    <td>กรุงเทพ</td>
                                                    <td>วิศวกร</td>
                                                    <td><button type="submit" class="btn btn-box-tool"><i class="fa fa-info-circle"></i></button> <button type="submit" class="btn btn-box-tool"><i class="fa fa-wrench"></i></button></td>
                                                </tr>
                                                <tr>
                                                    <td>ธีระพล</td>
                                                    <td>เทศเวทินากร</td>
                                                    <td>ต้น</td>
                                                    <td>35</td>
                                                    <td>ปธุมธานี</td>
                                                    <td>รับจ้าง</td>
                                                    <td><button type="submit" class="btn btn-box-tool"><i class="fa fa-info-circle"></i></button> <button type="submit" class="btn btn-box-tool"><i class="fa fa-wrench"></i></button></td>
                                                </tr> 
                                                <tr>
                                                    <td>กิติคุณ</td>
                                                    <td>ขาวล้ำเลิศ</td>
                                                    <td>ตาล</td>
                                                    <td>18</td>
                                                    <td>กรุงเทพ</td>
                                                    <td>นักเรียน</td>
                                                    <td><button type="submit" class="btn btn-box-tool"><i class="fa fa-info-circle"></i></button> <button type="submit" class="btn btn-box-tool"><i class="fa fa-wrench"></i></button></td>
                                                </tr>
                                                <tr>
                                                    <td>วีระ</td>
                                                    <td>แย้มเดช</td>
                                                    <td>นัท</td>
                                                    <td>20</td>
                                                    <td>กรุงเทพ</td>
                                                    <td>วิศวกร</td>
                                                    <td><button type="submit" class="btn btn-box-tool"><i class="fa fa-info-circle"></i></button> <button type="submit" class="btn btn-box-tool"><i class="fa fa-wrench"></i></button></td>
                                                </tr>
                                                <tr>
                                                    <td>วีระ</td>
                                                    <td>แย้มเดช</td>
                                                    <td>นัท</td>
                                                    <td>20</td>
                                                    <td>กรุงเทพ</td>
                                                    <td>วิศวกร</td>
                                                    <td><button type="submit" class="btn btn-box-tool"><i class="fa fa-info-circle"></i></button> <button type="submit" class="btn btn-box-tool"><i class="fa fa-wrench"></i></button></td>
                                                </tr>
                                                <tr>
                                                    <td>วีระ</td>
                                                    <td>แย้มเดช</td>
                                                    <td>นัท</td>
                                                    <td>20</td>
                                                    <td>กรุงเทพ</td>
                                                    <td>วิศวกร</td>
                                                    <td><button type="submit" class="btn btn-box-tool"><i class="fa fa-info-circle"></i></button> <button type="submit" class="btn btn-box-tool"><i class="fa fa-wrench"></i></button></td>
                                                </tr>
                                                <tr>
                                                    <td>วีระ</td>
                                                    <td>แย้มเดช</td>
                                                    <td>นัท</td>
                                                    <td>20</td>
                                                    <td>กรุงเทพ</td>
                                                    <td>วิศวกร</td>
                                                    <td><button type="submit" class="btn btn-box-tool"><i class="fa fa-info-circle"></i></button> <button type="submit" class="btn btn-box-tool"><i class="fa fa-wrench"></i></button></td>
                                                </tr>
                                                <tr>
                                                    <td>วีระ</td>
                                                    <td>แย้มเดช</td>
                                                    <td>นัท</td>
                                                    <td>20</td>
                                                    <td>กรุงเทพ</td>
                                                    <td>วิศวกร</td>
                                                    <td><button type="submit" class="btn btn-box-tool"><i class="fa fa-info-circle"></i></button> <button type="submit" class="btn btn-box-tool"><i class="fa fa-wrench"></i></button></td>
                                                </tr>
                                                <tr>
                                                    <td>วีระ</td>
                                                    <td>แย้มเดช</td>
                                                    <td>นัท</td>
                                                    <td>20</td>
                                                    <td>กรุงเทพ</td>
                                                    <td>วิศวกร</td>
                                                    <td><button type="submit" class="btn btn-box-tool"><i class="fa fa-info-circle"></i></button> <button type="submit" class="btn btn-box-tool"><i class="fa fa-wrench"></i></button></td>
                                                </tr>
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th>ชื่อ</th>
                                                    <th>นามสกุล</th>
                                                    <th>ชื่อเล่น</th>
                                                    <th>อายุ</th>
                                                    <th>จังหวัด</th>
                                                    <th>อาชีพ</th>
                                                    <th>ตัวเลือก</th>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div><!-- /.box-body -->
                                </form>
                            </div><!-- /.box -->
                        </div><!-- /.col -->
                    </div><!-- /.row -->
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

