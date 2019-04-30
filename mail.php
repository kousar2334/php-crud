<?php
session_start();
ob_start();
include('db_connect.php');
$error = NULL;
$msg = NULL;

$_SESSION['seller_id'] = NULL;
$_SESSION['buyer_id'] = NULL;

use PHPMailer\PHPMailer\PHPMailer;

if (isset($_POST['submit'])) {
    $name = $_POST["name"];
    $email = $_POST["email"];
    $password = $_POST["password"];
    $confirm_password = $_POST["confirm_password"];
    $type = $_POST["type"];
    $organize = $_POST["organize"];
    $seller_type = $_POST["seller_type"];
    $sql = "SELECT id FROM user where email='$email'";
    $result = $conn->query($sql);
    if (mysqli_num_rows($result) > 0) {
        $error = "Already Have an account in this email !! ";
    } else {
        if ($password == $confirm_password) {
              $token = 'sdfbaluixyzmalwpfbuiwASUGNFWPOCCLOAQPOACMXE1234567890!@$()*';
              $token = str_shuffle($token);
            $token = substr($token,0,6);
            // echo $token;
            // exit();
            //echo "matcheed";
            $confirm_password = MD5($confirm_password);
            if ($type == 'Seller') {
                
              
                
                $sql = "INSERT INTO user(name, email, password,type,seller_type,organize,token) VALUES ('$name', '$email', '$confirm_password', '$type', '$seller_type', '$organize', '$token')";
                if ($conn->query($sql) === TRUE) {
                    $last_id = $conn->insert_id;
                    $link = "http://surplusb2b.biz/email-verification.php?email=$email&token=$token";
                    include_once "PHPMailer/PHPMailer.php";
                    $mail = new PHPMailer();
                    $mail->setFrom('verify@surplusb2b.biz');
                    $mail->addAddress($email,$name);
                    $mail->Subject = "Please Verify your account !!";
                    $mail->IsHTML(true);
                    $mail->Body = "
                        Your code For Surplusb2b Is : $token 
                    ";
                    if($mail->send()){
             
                         header("Location: /confirm.php?id=$last_id");
                    }else{
                         $msg = "Something went wrong  !! try again !";
                    }
                    
                    
                    
                } else {
                    $error = "Error: " . $sql . "<br>" . $conn->error;
                }
            } else {
                
                $sql = "INSERT INTO user(name, email, password,type,status,token) VALUES ('$name', '$email', '$confirm_password', '$type', '0', '$token')";
                if ($conn->query($sql) === TRUE) {
                   $last_id = $conn->insert_id;
                    $link = "http://surplusb2b.biz/email-verification.php?email=$email&token=$token";
                    include_once "PHPMailer/PHPMailer.php";
                    $mail = new PHPMailer();
                    $mail->setFrom('verify@surplusb2b.biz');
                    $mail->addAddress($email,$name);
                    $mail->Subject = "Please Verify your account !!";
                    $mail->IsHTML(true);
                    $mail->Body = "
                        Your code For Surplusb2b Is : $token 
                    ";
                    if($mail->send()){
             
                         header("Location: /confirm.php?id=$last_id");
                    }else{
                         $msg = "Something went wrong  !! try again !";
                    }
                    
                } else {
                    $error = "Error: " . $sql . "<br>" . $conn->error;
                }
            }
        } else {
            $error = "Password Has Not Matched !! Please try Again ? ";
        }
    }
}

include ('models/PostRequirementModel.php');

include('controller/viewSellerProduct.php');
$sellerProductsctlr=new viewSellerProduct();

$ctrl=new PostRequirementModel();
$totalBuyingleads=$ctrl->getTotalBuyingLeads();
$countryInfo=$ctrl->countryInfo();
// print_r($countryInfo);
// die();
$product_code=$totalBuyingleads+1;
$user_id=$_SESSION['user_id'];
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Buying & Selling products- Surplsb2b</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="public/css/custom.css" rel="stylesheet"> 
        <link href="public/css/mobile_layout.css" rel="stylesheet">
        <link href="public/css/image_slider.css" rel="stylesheet">
        <link href="public/css/product_image_slider.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
        <script src="public/js/custom.js"></script>

  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

   <!-- Optional theme -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

   <!-- Latest compiled and minified JavaScript -->
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" type="text/css" rel="stylesheet"/>
 <script type="text/javascript">


            window.addEventListener('load', function () {
                document.getElementById("organize").style.display = 'none';
            }, true);


            function Sellertype() {
                var type = document.getElementById("type").value;
                if (type == 'Seller') {
                    document.getElementById("organize").style.display = 'block';
                } else {
                    document.getElementById("organize").style.display = 'none';
                }
            }
        </script>  
        <style>
 #main_container{
     margin:0px;padding:0px;border:0px;width:98.9%;
 }
     @media all and (max-width: 700px){
         
        #main_container{
     width:98%;
 }#wrap_search_bar{
     margin-left:-10px;
 }
 
     }
     
 </style>
    </head>
    <body class="container" style="margin:0px;padding:0px;border:0px;width:98.9%;">
        <div class="row" style="padding:0px,margin:0px;"><!--Start header section-->
            <div class="col-md-12" style="padding:0px,margin:0px;">
            <?php include('layouts/header.php');?>
            
        </div>
        </div><!--End header section-->
       
    
     
        <div id="body_container" class="container">
            
          <div class="row" style="margin-top:0px;width:99.3%;margin-left:5px;" ><!--After header and menu bar-->
              <section id="left_side_container">
              <div class="col-sm-2" style="padding:0px;width:17%;margin-left:-15px;"><!--start left side bar-->
                  <div class="user_info_area"  style="border:0px;margin-left:0px;">
                 <div class="row"id="catById" >
                     <p style="margin-left:15px;color:#707172;"><i class="fa fa-tasks"></i> CATEGORIES</p>
                      <?php include('categoryList.php');?>
                 </div>
             </div>
             <div class="widget_bar">
                 <?php include('layouts/widget_box.php'); ?>
             </div>
              </div><!--End left side bar-->
              </section>
              <div class="col-md-10" style="margin-left:10px;"><!--Middle position section -->
                  <?php include('layouts/hidden_search.php');?>
            <?php include('layouts/filter_area.php');?>
                 
                  <div class="row" style="margin-top:5px;margin-left:opx;"><!---Product view body-->
                    <div class="col-sm-10" id="product_view_body" style="margin-left:0px;">
                     <div class="row" style="margin-top:5px;"><!--start product view-->
                       <div class="col-sm-12">
                           
                        <div class="row">
                             <div class="col-sm-3">
                                
                            </div>
                                  <div class="col-sm-6 col-md-6 col-xs-12" style="box-shadow:0 0 1px 0 gray;text-align:center;padding-bottom:50px;">
                                          <div class="login-form">
                <div class="main-div">
                    <div class="login-form">
                <div class="main-div">
                    <div class="panel">
                        <h2>User Registration </h2>
                        <p>Please enter your information</p>

                        <span style="color:red;"><?php
if ($error != NULL) {
    echo "Warning !" . $error;
    $error = NULL;
}
?> </span> 
                        <span style="color:green;"><?php
                            if ($msg != NULL) {
                                echo $msg;
                                $msg = NULL;
                            }
?> </span>
                    </div>
                    <form id="Login" method="post" action="">

                        <div class="form-group">


                            <input type="name" name="name" class="form-control" id="inputEmail" placeholder="Full Name" required>

                        </div>
                        <div class="form-group">


                            <input type="email" name="email" class="form-control" id="inputEmail" placeholder="Email Address" required>

                        </div>
                        <div class="form-group">

                            <input type="password" name="password" class="form-control" id="inputPassword" placeholder="Password" required>

                        </div>
                        <div class="form-group">

                            <input type="password" name="confirm_password" class="form-control" id="inputPassword" placeholder="Confirm Password" required>

                        </div>
                        <div class="form-group">

                            <select class="form-control" name="type" id="type" onchange="Sellertype()" required>
                                <option value="">Select User Type</option>
                                <option value="Seller">Seller</option>
                                <option value="Buyer">Buyer</option>
                            </select>


                        </div>
                        <div class="form-group" name="organize" id="organize">
                            
                         <select class="form-control" name="seller_type" id="seller_type">
                                <option value="Supplier">Supplier</option>
                                <option value="Factory">Factory</option>
                            </select>
<p></p>
                            <input type="name" name="organize" class="form-control" id="inputEmail" placeholder="Organize Name">

                        </div>
                        <button type="submit" class="btn btn-primary" name="submit">Regsiter</button>
                        <p>Already have an account? <a href="login.php">Login </a></p>
                    </form>
                </div>
                <!--<p class="botto-text"> Designed by Code Tree</p>-->
            </div>
                </div>
            <!--<p class="botto-text"> Designed by Code Tree</p>-->
            </div>
                                      </div>
                                       <div class="col-sm-3">
                                
                            </div>
                                      </div>
                     
                     
                     
                     
                           
                           </div>
                           </div><!--End product view-->
                           
                       
                    </div>
                     <div class="col-xs-12" id="hidden_wiget_box"><!--Start hidden wiget box-->
                         <?php include('layouts/hidden_wiget_box.php'); ?>
                         
                     </div><!--End hidden wiget box-->
                     <script src="public/js/hidden_wiget_box.js"></script>
                    <?php include('layouts/right_side_bar.php'); ?>
                
                        </div>
                    </div><!--End Milddle position body including right side bar-->
                    
                 </div> 
                  <?php include('layouts/footer.php');?>
                
              </div>
              </div>
            </div>
              
           <!--End body container-->
            <script src="public/js/widget_box.js"></script>
             <script src="public/js/windowScroll.js"></script>
     </body>
  </html>
