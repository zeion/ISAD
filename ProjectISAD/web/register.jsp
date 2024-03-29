<%-- 
    Document   : register
    Created on : May 17, 2015, 2:52:24 AM
    Author     : Admin
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>สมัครสมาชิก</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- Bootstrap 3.3.2 -->
        <link href="template/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- Font Awesome Icons -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="template/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
        <!-- iCheck -->
        <link href="template/plugins/iCheck/square/blue.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="register-page" style="background-image: url(template/dist/img/bg/login_bg.png); background-position: center center; background-repeat: no-repeat; background-attachment: fixed; background-size: cover; background-color: #464646;">
        <div class="register-box">
            <div class="register-logo">
              <img style="max-width: 410px; width: 100%; opacity: 0.81;" src="template/dist/img/icon/logo/logo.png">
            </div>

            <div class="register-box-body" style="border-radius: 3%; opacity: 0.90;">
                <p class="login-box-msg">มูลนิธิธรรมกิจไพศาล</p>
                <c:if test="${param.status eq 'fail'}">
                    <p class="danger" style="color: red">โปรดใส่ข้อมูลให้ถูกต้อง</p>
                </c:if>
                
                <form action="Register.do" method="post">
                    <div class="row">
                        <div class="col-xs-6">
                            <div class="form-group has-feedback">
                                <input type="text" name="firstname" class="form-control" placeholder="ชื่อ"/>

                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="form-group has-feedback">
                                <input type="text" name="lastname" class="form-control" placeholder="นามสกุล"/>

                            </div>
                        </div>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="text" name="nickname" class="form-control" placeholder="ชื่อเล่น"/>
                        <span class="glyphicon glyphicon-user form-control-feedback"></span>
                    </div>

                    <div class="row" >
                        <div class="col-xs-12">
                            <div class="form-group">
                                <select name="sex" class="form-control" >
                                <option value="" style="display: none;">เพศ</option>
                                <option value="male">ชาย</option>
                                <option value="female">หญิง</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <p>วันเกิด</p>
                    <div class="row" >
                        <div class="col-xs-3">
                            <div class="form-group">
                                <select name="day" style="  display: block;
                                                            width: 100%;
                                                            height: 34px;
                                                            padding-left: 3px;
                                                            font-size: 14px;
                                                            line-height: 1.42857143;
                                                            color: #555;
                                                            background-color: #fff;
                                                            background-image: none;
                                                            border: 1px solid #ccc;
                                                            border-radius: 0px;" >
                                    <option value="" style="display: none;">วันที่</option>

                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                    <option value="13">13</option>
                                    <option value="14">14</option>
                                    <option value="15">15</option>
                                    <option value="16">16</option>
                                    <option value="17">17</option>
                                    <option value="18">18</option>
                                    <option value="19">19</option>
                                    <option value="20">20</option>
                                    <option value="21">21</option>
                                    <option value="22">22</option>
                                    <option value="23">23</option>
                                    <option value="24">24</option>
                                    <option value="25">25</option>
                                    <option value="26">26</option>
                                    <option value="27">27</option>
                                    <option value="28">28</option>
                                    <option value="29">29</option>
                                    <option value="30">30</option>
                                    <option value="31">31</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-5">
                            <select name="month" class="form-control" >
                                <option value="" style="display: none;">เดือน</option>
                                <option value="1">มกราคม</option>
                                <option value="2">กุมภาพันธ์</option>
                                <option value="3">มีนาคม</option>
                                <option value="4">เมษายน</option>
                                <option value="5">พฤษภาคม</option>
                                <option value="6">มิถุนายน </option>
                                <option value="7">กรกฎาคม</option>
                                <option value="8">สิงหาคม</option>
                                <option value="9">กันยายน</option>
                                <option value="10">ตุลาคม</option>
                                <option value="11">พฤศจิกายน</option>
                                <option value="12">ธันวาคม</option>
                            </select>
                        </div>
                        <div class="col-xs-4">
                            <select name="year" class="form-control" >
                                <option value="" style="display: none;">ปี</option>
                                <option value="2015">2015</option>
                                <option value="2014">2014</option>
                                <option value="2013">2013</option>
                                <option value="2012">2012</option>
                                <option value="2011">2011</option>
                                <option value="2010">2010</option>
                                <option value="2009">2009</option>
                                <option value="2008">2008</option>
                                <option value="2007">2007</option>
                                <option value="2006">2006</option>
                                <option value="2005">2005</option>
                                <option value="2004">2004</option>
                                <option value="2003">2003</option>
                                <option value="2002">2002</option>
                                <option value="2001">2001</option>
                                <option value="2000">2000</option>
                                <option value="1999">1999</option>
                                <option value="1998">1998</option>
                                <option value="1997">1997</option>
                                <option value="1996">1996</option>
                                <option value="1995">1995</option>
                                <option value="1994">1994</option>
                                <option value="1993">1993</option>
                                <option value="1992">1992</option>
                                <option value="1991">1991</option>
                                <option value="1990">1990</option>
                                <option value="1989">1989</option>
                                <option value="1988">1988</option>
                                <option value="1987">1987</option>
                                <option value="1986">1986</option>
                                <option value="1985">1985</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group has-feedback">
                        <input type="text" name="email" class="form-control" placeholder="อีเมล"/>
                        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="password" name="password" class="form-control" placeholder="รหัสผ่าน"/>
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="password" name="repassword" class="form-control" placeholder="ยืนยัน รหัสผ่าน"/>
                        <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="text" name="phone" class="form-control" placeholder="เบอร์โทรศัพท์"/>
                        <span class="glyphicon glyphicon-earphone form-control-feedback"></span>
                    </div>

<!--                    <p>ที่อยู่</p>
                    <div class="form-group has-feedback">
                      <textarea class="form-control" name="address" rows="5"></textarea>
                    </div>-->

                    <div class="form-group has-feedback">
                        <select class="form-control" name="province">
                          <option selected="selected" style="display: none;">จังหวัด</option>
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


                    <div class="row">
<!--                        <div class="col-xs-8">
                            <div class="checkbox icheck">
                                <label>
                                    <input type="checkbox"> ฉันยอมรับ <a href="#">ข้อตกลง</a>
                                </label>
                            </div>
                        </div> /.col -->
                        <div class="col-xs-12">
                            <span><a href="login.html" class="text-center">ฉันได้เป็นสมาชิกเรียบร้อยแล้ว</a></span><button type="submit" class="btn btn-primary btn-flat pull-right">ลงทะเบียน</button>
                        </div><!-- /.col -->
                    </div>
                </form>

                <!--        <div class="social-auth-links text-center">
                          <p>- OR -</p>
                          <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign up using Facebook</a>
                          <a href="#" class="btn btn-block btn-social btn-google-plus btn-flat"><i class="fa fa-google-plus"></i> Sign up using Google+</a>
                        </div>-->

                
            </div><!-- /.form-box -->
        </div><!-- /.register-box -->

        <!-- jQuery 2.1.3 -->
        <script src="template/plugins/jQuery/jQuery-2.1.3.min.js"></script>
        <!-- Bootstrap 3.3.2 JS -->
        <script src="template/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- iCheck -->
        <script src="template/plugins/iCheck/icheck.min.js" type="text/javascript"></script>
        <script>
            $(function () {
                $('input').iCheck({
                    checkboxClass: 'icheckbox_square-blue',
                    radioClass: 'iradio_square-blue',
                    increaseArea: '20%' // optional
                });
            });
        </script>
    </body>
</html>

