<?php

require_once __DIR__.('/../../vendor/autoload.php');
$user=new User();
?>

<!DOCTYPE html>
<html>
<head>
	<title>User Info</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	<style type="text/css">
	table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;    
}
input{
	border:0px;
}

	</style>
</head>
<body>
	<div class="container"></div>
	<?php if (isset($_GET['view'])) {
	$user_id=$_GET['view'];
	$userInfo=$user->viewUser($user_id);
	foreach ($userInfo as $users) {
		
	
?> <center>
	<table>
		<tr >
			<th>Name</th>
			<td><?php echo $users['user_name'];?></td>
		</tr>
		<tr>
			<th>Email</th>
			<td><?php echo $users['email'];?></td>
		</tr>
		<tr>
			<th>Phone</th>
			<td><?php echo $users['phone'];?></td>
		</tr>
		<tr>
			<th>District</th>
			<td><?php echo $users['district_name'];?></td>
		</tr>
		<tr>
			<th>Thana</th>
			<td><?php echo $users['thana_name'];?></td>
		</tr>
	</table>
<?php } } ?>
</center>
</body>
</body>
</html>