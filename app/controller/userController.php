<?php

require_once __DIR__.('/../../vendor/autoload.php');
$user=new User();
if ($_SERVER['REQUEST_METHOD']=='POST') {
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
