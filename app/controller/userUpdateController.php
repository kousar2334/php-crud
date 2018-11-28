<?php 
require_once __DIR__.('/../../vendor/autoload.php');
$user=new User();
if ($_SERVER['REQUEST_METHOD']=='POST') {


	$user->dataProcess($_POST);
	 $user->updateUser();
}
?>