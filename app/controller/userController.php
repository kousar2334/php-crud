<?php

require_once __DIR__.('/../../vendor/autoload.php');
$user=new User();
if ($_SERVER['REQUEST_METHOD']=='POST') {
	$image_name=$_FILES['image']['name'];
	$image_type=$_FILES['image']['type'];
     $image_location=$_FILES['image']['tmp_name'];
     $image_size=$_FILES['image']['size'];
     $imagepath="../public/images/".$image_name;
	move_uploaded_file($image_location, $imagepath);
    $_POST['image']=$image_name;
	$user->dataProcess($_POST);
    $user->storeData();
    

}
if (isset($_GET['delete'])) {
     $user_id=$_GET['delete'] ;
     $user->deleteUser($user_id);

}
if (isset($_GET['update'])) {
	$user_id=$_GET['update'];
	echo $user_id;
}
