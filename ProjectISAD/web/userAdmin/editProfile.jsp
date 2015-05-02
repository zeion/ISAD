
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<sql:query dataSource="test" var ="member">
    SELECT * 
    FROM Member_Data
    WHERE member_id = ${param.id};
</sql:query>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>แก้ไขข้อมูลส่วนตัว</title>
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
                                    <span class="hidden-xs">${sessionScope.person.firstname} ${sessionScope.person.lastname}</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="../template/dist/img/admin.jpg" class="img-circle" alt="User Image" />
                                        <p>
                                            ${sessionScope.person.firstname} ${sessionScope.person.lastname}
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
                                            <a href="../login.html" class="btn btn-default btn-flat">ออกจากระบบ</a>
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
                        แก้ไขข้อมูลส่วนตัว
                    </h1>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <form class="form-horizontal" action="../editProfile.do" method="post">
                            <div class="col-xs-12">
                                <div class="box">
                                    <div class="box-body">
                                        <div class="form-group">
                                            <label class="control-label col-sm-2">ชื่อ:</label>
                                            <div class="col-sm-10">
                                                <p class="form-control-static">${member.rows[0].member_firstname}</p>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" >นามสกุล:</label>
                                            <div class="col-sm-10">
                                                <p class="form-control-static">${member.rows[0].member_lastname}</p>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" >ชื่อเล่น:</label>
                                            <div class="col-sm-2">
                                                <input type="text" class="form-control" name="nickname" value="${member.rows[0].member_nickname}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" >เพศ:</label>
                                            <div class="col-sm-10">
                                                <p class="form-control-static">
                                                    <c:if test="${member.rows[0].member_sex == 1}">
                                                        ชาย
                                                    </c:if>
                                                    <c:if test="${member.rows[0].member_sex == 0}">
                                                        หญิง
                                                    </c:if></p>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2">วันเกิด:</label>
                                            <div class="col-sm-10">
                                                <p class="form-control-static">${member.rows[0].member_bd}</p>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" >อีเมล:</label>
                                            <div class="col-sm-3">
                                                <p class="form-control-static">${member.rows[0].member_email}</p>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" >การศึกษา:</label>
                                            <div class="col-sm-2">
                                                <input type="text" class="form-control" name="edu" value="${member.rows[0].member_edu}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" >อาชีพ:</label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control" name="job" value="${member.rows[0].member_job}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" >ที่อยู่:</label>
                                            <div class="col-sm-5">
                                                <textarea class="form-control" name="address" rows="3">${member.rows[0].member_address}</textarea>

                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" >จังหวัด:</label>
                                            <div class="col-sm-2">
                                                <select class="form-control" name="province">
                                                    <option selected="selected" style="display: none;" value="${member.rows[0].member_address}">${member.rows[0].member_province}</option>
                                                    <option value="กรุงเทพมหานคร">กรุงเทพมหานคร</option>
                                                    <option value="กระบี่">กระบี่ </option>
                                                    <option value="กาญจนบุรี">กาญจนบุรี </option>
                                                    <option value="กาฬสินธุ์">กาฬสินธุ์ </option>
                                                    <option value="กำแพงเพชร">กำแพงเพชร </option>
                                                    <option value="ขอนแก่น">ขอนแก่น</option>
                                                    <option value="จันทบุรี">จันทบุรี</option>
                                                    <option value="ฉะเชิงเทรา">ฉะเชิงเทรา </option>
                                                    <option value="ชัยนาท">ชัยนาท </option>
                                                    <option value="ชัยภูมิ">ชัยภูมิ </option>
                                                    <option value="ชุมพร">ชุมพร </option>
                                                    <option value="ชลบุรี">ชลบุรี </option>
                                                    <option value="เชียงใหม่">เชียงใหม่ </option>
                                                    <option value="เชียงราย">เชียงราย </option>
                                                    <option value="ตรัง">ตรัง </option>
                                                    <option value="ตราด">ตราด </option>
                                                    <option value="ตาก">ตาก </option>
                                                    <option value="นครนายก">นครนายก </option>
                                                    <option value="นครปฐม">นครปฐม </option>
                                                    <option value="นครพนม">นครพนม </option>
                                                    <option value="นครราชสีมา">นครราชสีมา </option>
                                                    <option value="นครศรีธรรมราช">นครศรีธรรมราช </option>
                                                    <option value="นครสวรรค์">นครสวรรค์ </option>
                                                    <option value="นราธิวาส">นราธิวาส </option>
                                                    <option value="น่าน">น่าน </option>
                                                    <option value="นนทบุรี">นนทบุรี </option>
                                                    <option value="บึงกาฬ">บึงกาฬ</option>
                                                    <option value="บุรีรัมย์">บุรีรัมย์</option>
                                                    <option value="ประจวบคีรีขันธ์">ประจวบคีรีขันธ์ </option>
                                                    <option value="ปทุมธานี">ปทุมธานี </option>
                                                    <option value="ปราจีนบุรี">ปราจีนบุรี </option>
                                                    <option value="ปัตตานี">ปัตตานี </option>
                                                    <option value="พะเยา">พะเยา </option>
                                                    <option value="พระนครศรีอยุธยา">พระนครศรีอยุธยา </option>
                                                    <option value="พังงา">พังงา </option>
                                                    <option value="พิจิตร">พิจิตร </option>
                                                    <option value="พิษณุโลก">พิษณุโลก </option>
                                                    <option value="เพชรบุรี">เพชรบุรี </option>
                                                    <option value="เพชรบูรณ์">เพชรบูรณ์ </option>
                                                    <option value="แพร่">แพร่ </option>
                                                    <option value="พัทลุง">พัทลุง </option>
                                                    <option value="ภูเก็ต">ภูเก็ต </option>
                                                    <option value="มหาสารคาม">มหาสารคาม </option>
                                                    <option value="มุกดาหาร">มุกดาหาร </option>
                                                    <option value="แม่ฮ่องสอน">แม่ฮ่องสอน </option>
                                                    <option value="ยโสธร">ยโสธร </option>
                                                    <option value="ยะลา">ยะลา </option>
                                                    <option value="ร้อยเอ็ด">ร้อยเอ็ด </option>
                                                    <option value="ระนอง">ระนอง </option>
                                                    <option value="ระยอง">ระยอง </option>
                                                    <option value="ราชบุรี">ราชบุรี</option>
                                                    <option value="ลพบุรี">ลพบุรี </option>
                                                    <option value="ลำปาง">ลำปาง </option>
                                                    <option value="ลำพูน">ลำพูน </option>
                                                    <option value="เลย">เลย </option>
                                                    <option value="ศรีสะเกษ">ศรีสะเกษ</option>
                                                    <option value="สกลนคร">สกลนคร</option>
                                                    <option value="สงขลา">สงขลา </option>
                                                    <option value="สมุทรสาคร">สมุทรสาคร </option>
                                                    <option value="สมุทรปราการ">สมุทรปราการ </option>
                                                    <option value="สมุทรสงคราม">สมุทรสงคราม </option>
                                                    <option value="สระแก้ว">สระแก้ว </option>
                                                    <option value="สระบุรี">สระบุรี </option>
                                                    <option value="สิงห์บุรี">สิงห์บุรี </option>
                                                    <option value="สุโขทัย">สุโขทัย </option>
                                                    <option value="สุพรรณบุรี">สุพรรณบุรี </option>
                                                    <option value="สุราษฎร์ธานี">สุราษฎร์ธานี </option>
                                                    <option value="สุรินทร์">สุรินทร์ </option>
                                                    <option value="สตูล">สตูล </option>
                                                    <option value="หนองคาย">หนองคาย </option>
                                                    <option value="หนองบัวลำภู">หนองบัวลำภู </option>
                                                    <option value="อำนาจเจริญ">อำนาจเจริญ </option>
                                                    <option value="อุดรธานี">อุดรธานี </option>
                                                    <option value="อุตรดิตถ์">อุตรดิตถ์ </option>
                                                    <option value="อุทัยธานี">อุทัยธานี </option>
                                                    <option value="อุบลราชธานี">อุบลราชธานี</option>
                                                    <option value="อ่างทอง">อ่างทอง </option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" >โทรศัพท์:</label>
                                            <div class="col-sm-2">
                                                <input type="text" class="form-control" name="phone" value="${member.rows[0].member_phone}">
                                            </div>
                                        </div>
                                    </div><!-- /.box-body -->                               
                                </div><!-- /.box -->
                                <button type="submit" class="btn btn-primary pull-right" style="margin-left: 1%;"  name="id" value="${param.id}">ยืนยัน</button>
                                <a class="btn btn-default pull-right" href="showProfile.jsp?id=${param.id}">ยกเลิก</a>
                            </div><!-- /.col -->
                        </form>
                    </div><!-- /.row -->
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

