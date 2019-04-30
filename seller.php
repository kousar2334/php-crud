<?php
session_start();
ob_start();
//$user_type = NULL;
if ($_SESSION['user_id'] == NULL) {
    header("location:index.php");
    
}
$user_id = $_GET['profile'];

include('controller/SelectSellerInfo.php');
$ctlr = new SelectSellerInfo();
$sellerinfo = $ctlr->getSellerInfo($user_id);

include('controller/viewSellerProduct.php');
$sellerProductsctlr=new viewSellerProduct();
$sellerProducts=$sellerProductsctlr->getSellerProductBYid($user_id);

?>
<!DOCTYPE html>
<html>
    <head>
        <title>Seller Dashboard-Surplsb2b</title>
        <link href="public/css/custom.css" rel="stylesheet"> 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

   <!-- Optional theme -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

   <!-- Latest compiled and minified JavaScript -->
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" type="text/css" rel="stylesheet"/>

    </head>
    <body>
        <!--start header-->
        <div id="header">
            <div id="logo">
                 <img src="img/logo.png" alt="Logo" style="width: 250%;height: 100%;"/>
            </div>
            <div id="lang">
                <a href="https://translate.google.com/translate?sl=auto&tl=bn&u=http%3A%2F%2Fwww.surplusb2b.biz%2F" target="_blank" style="color:#c61b07;text-decoration: none;padding-right:8px;">English</a>
            </div>

            <div id="user_box">
                <?php
                if (isset($_SESSION['user_type']) != NULL) {
                    $user_type = $_SESSION['user_type'];
                    if ($user_type == 'Seller') {
                        ?>
                        <div class="dropdown">
                            <button class="dropbtn"> <i class="fa fa-user"></i> <?php echo $_SESSION['user_name']; ?></button>
                            <div class="dropdown-content">
                                <a href="seller-dashboard.php?profile=<?php echo $_GET['profile'];?>">My Account</a>
                                <a href="logout-seller.php">Logout</a>

                            </div>
                        </div> 
                    <?php } else {
                        ?>
                        <div class="dropdown">
                            <button class="dropbtn"><i class="fa fa-user"></i> <?php echo $_SESSION['user_name']; ?></button>
                            <div class="dropdown-content">
                                <a href="#">My Account</a>
                                <a href="logout-seller.php">Logout</a>

                            </div>
                        </div> 
                    <?php }
                } else { ?>
                    <a href="login.php" style="color:#c61b07;text-decoration: none;"><span class="glyphicon glyphicon-log-out"></span> Login</a>
                    <a  href="register.php" style="color:#c61b07;text-decoration: none;margin-left: 5px;"><span class="glyphicon glyphicon-edit"></span> Register</a>

                    <?php
                }
                ?>


            </div>
            <div id="search_bar">
                <form>
                    <input type="" name="" style="width:75%;">
                    <input type="submit" name="Search" value="Search" style="background-color: white;border:1px solid gray;">
                </form>

            </div>
            <div id="social_links">
                <a href="#"><img src="public/images/icons/facebook-icon.png" width="28px" height="28px"></a>
                <a href="#"><img src="public/images/icons/google.png" width="20px" height="20px"></a>
                <a href="#"><img src="public/images/icons/Linkedin_icon.png" width="20px" height="20px"></a>
                <a href="#"><img src="public/images/icons/twitter.png" width="25px" height="25px"></a>
            </div>
            <button style="margin-top:32px;margin-left: 10px;background-color: white;border:1px solid gray;">FILTER</button>

        </div>
          <!-- end header-->
          <!--start menu bar -->
        <div id="menu_bar">
            <a href="" class="home_btn">HOME</a>
            <ul>
                <li><a href="#news">SUPPLIER</a></li>
                <li><a href="#contact">FACTORY</a></li>
                <li><a href="#about">BUYER</a></li>
                <li><a href="#news">BUYING LEADS</a></li>
                <li><a href="#contact">AD POSTING GUIDE</a></li>
                <li><a href="#about">SERVICES</a></li>
            </ul>

        </div>
        <!--End menu bar-->
        <!-- side bar start -->
         <div id="side_bar">
             
             <?php foreach($sellerinfo as $sellerinfo) { ?>
             <div class="user_info_area">
                 <div class="row" style="width:100%;">
                     <div class="user_image_box">
                  <img src="public/images/images.png" alt="user image" width="70%" height="70%" style="float:left;margin-left:20%;border-radius:50%;">
                 </div>
                 </div>
                 <div class="row" style="margin-left:5px;margin-top:5px;">
                     <div class="user_info">
                     <p><b>Name : </b><?php echo $sellerinfo['name']?></p>
                     <p><b>Email :</b> <?php echo $sellerinfo['email']?></p>
                     <p><b>Phone :</b> <?php echo "017XXXXXXXXXX"; ?></p>
                     <p><b>Type : </b><?php echo $type = $sellerinfo['type']?></p>
                 </div>
                     
                 </div>
             </div>
             <?php }?>
             
             <div class="widget_bar">
                 <p style="border-bottom:1px solid gray">WIDGET LIST</p>
             </div>
             
         </div>
        
     <!-- side bar End -->
     
     <!-- start body container , middle position of page -->
        <div id="body_container" class="container">
            <div class="row" style="height:40px;background-color:#e3e4e5;">
                  <div class="col-sm-2">
                      <a href="buyer-message.php?id=<?php echo $user_id;?>" class="btn btn-primary">INBOX</a>  
                   </div>
                 <div class="col-sm-2">
                     <a href="make-advertise.php?id=<?php echo $user_id;?>" class="btn btn-primary">POST YOUR AD</a>  
                </div>
                <div class="col-sm-2">
                    <a href="your-total-panding-advertise.php?profile=<?php echo $user_id;?>" class="btn btn-primary">PENDING</a>  
                </div>
                <div class="col-sm-6">
                    
                </div>
                  
              </div>
           <div class=row style="margin-top:10px">
                     <?php  foreach($sellerProducts as $products){ ?>
         <div id="product_details">
                <div id="product_image_box">
                    <p style="font-size: 11px;"><b>PRODUCT CODE: <?php echo $products['product_code']; ?><b></p>
                                <div id="product_image">
                                    <!--<img src="public/images/product-1.jpg" alt="product image" width="100%" height="100%">-->
                                    <a href="product_description.php?productId=<?php echo $products['id'];?>"><img src="<?php echo $products['product_img']?>" alt="product image" width="100%" height="100%"></a> 
                               
                                </div>
                                </div>
                                <div id="product_description">
                                    <!--<p style="font-size: 13px;">Supplier:Code Tree</p>-->
                                    <!--<p style="font-size: 13px;">Item Description:</p>-->
                                    <!--<p style="font-size: 13px;">Fabric:</p>-->
                                     <p style="font-size: 13px;" ><?php echo $type;?>:<?php echo $products['product_name']?></p>
                                    <p  style="font-size: 13px;" class="product_description">Item Description: 
                                    <?php
                                    
                                     echo $string =  $products['product_description'];
                                    // $firsttenwords = shorten_string($string, 10);
                                        // echo $firsttenwords;  
                                    
                                    ?>
                                    </p>
                                   
                                </div>

                                <div id="price_info">
                                    <p style="font-size: 10px;">star supplier</p>

                                    <div class="price_info_table">
                                        <table border="1" width="95%">
                                            <tr>
                                                <th style="font-size:12px;border-bottom: 1px solid black;">QUANTITY</th>
                                            </tr>
                                            <tr>
                                                <td style="font-size: 10px;"><?php echo $products['product_qty']?></td>
                                            </tr>
                                        </table>
                                    </div>

                                    <div class="price_info_table">
                                        <table border="1" width="95%">
                                            <tr>
                                                <th style="font-size:12px;border-bottom: 1px solid black;">PRICE</th>
                                            </tr>
                                            <tr>
                                                <td style="font-size: 10px;"><?php echo $products['product_price']?></td>
                                            </tr>
                                        </table>
                                    </div>

                                    <div class="price_info_table">
                                        <table border="1" width="100%">
                                            <tr>
                                                <th style="font-size:12px;border-bottom: 1px solid black;">GROSS WEIGHT</th>
                                            </tr>
                                            <tr>
                                                <td style="font-size: 10px;"><?php echo $products['product_weight']?></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="price_info_table">
                                        <table border="1" width="95%">
                                            <tr>
                                                <th style="font-size:12px;border-bottom: 1px solid black;">VOLUME</th>
                                            </tr>
                                            <tr>
                                                <td style="font-size: 10px;"><?php echo $products['product_volume']?></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!--<div class="price_info_table">-->
                                    <!--    <table border="1" width="95%">-->
                                    <!--        <tr>-->
                                    <!--            <th style="font-size:12px;border-bottom: 1px solid black;">VALUE</th>-->
                                    <!--        </tr>-->
                                    <!--        <tr>-->
                                    <!--            <td style="font-size: 10px;">USS 38</td>-->
                                    <!--        </tr>-->
                                    <!--    </table>-->
                                    <!--</div>-->
                                    <!--<div class="price_info_table">-->
                                    <!--    <table border="1" width="100%">-->
                                    <!--        <tr>-->
                                    <!--            <th style="font-size:12px;border-bottom: 1px solid black;">VOLUME WEIGHT</th>-->
                                    <!--        </tr>-->
                                    <!--        <tr>-->
                                    <!--            <td style="font-size: 10px;">10.5 KGS</td>-->
                                    <!--        </tr>-->
                                    <!--    </table>-->
                                    <!--</div>-->

                                </div>
                                <div id="submit_btn_container" style="margin-top:10px;">
                                    <a href="add-to-top-search.php?productId=<?php echo $products['id'];?>" class="btn btn-primary"> Add to Top Ad</a>
			                       <a href="add-to-featured.php?productId=<?php echo $products['id'];?>" style="margin-top:2px;" class="btn btn-primary">  Add to Featured</a>
		                        	<a href="add-to-secondary.php?productId=<?php echo $products['id'];?>" style="margin-top:2px;"  class="btn btn-primary"> Add to Secondary</a>
                                </div>
                                </div>
                                <?php   } ?>
              </div>
         </div>
    
            <!--End body container-->
            <!--start right side bar container-->
            <div id="right_sidebar_container" class="container">
                <p style="border-bottom:1px solid gray; "><b>FEATURED AD(SCROLING)</b></p>
            </div>
        
           <!--End Right side bar container-->
   </body>
 </html>
