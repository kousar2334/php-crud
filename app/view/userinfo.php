<?php

require_once __DIR__.('/../../vendor/autoload.php');
$user=new User();
if (isset($_GET['view'])) {
	$user_id=$_GET['view'];
	echo "<pre>";
	print_r($userInfo=$user->viewUser($user_id)) ;
	
}?>

<!DOCTYPE html>
<html>
<head>
	<title>User Info</title>
</head>
<body>
</body>
</html>