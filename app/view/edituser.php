<?php
require_once __DIR__.('/../../vendor/autoload.php');
$user=new User();
$districts=$user->getDistrict();

if (isset($_GET['edit'])) {
	$user_id=$_GET['edit'];
	$users=$user->viewUser($user_id);
foreach ($users as $user_info) {
 
?>
<!DOCTYPE html>
<html>
<head>
	<title>Edit User</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
<center><h1>Edit User</h1></center>
<form method="post" action="../controller/userUpdateController.php">
	<input type="hidden" name="id" value="<?php echo $user_info['user_id'];?>">
  <div class="form-group">
    <label for="exampleFormControlInput1">Name</label>
    <input type="text" class="form-control" placeholder="Enter name" name="name" value="<?php echo $user_info['user_name'];?>">
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">Email address</label>
    <input type="email" class="form-control"  placeholder="Enter Email" name="email" value="<?php echo $user_info['email'];?>">
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">Mobile Phone</label>
    <input type="text" class="form-control" placeholder="Enter Phone Number" name="phone" value="<?php echo $user_info['phone'];?>">
  </div>

  <div class="form-group">
    <label for="exampleFormControlSelect1">District</label>
    <select class="form-control"  name="district" id="district">
      <option>Select District</option>
      <?php foreach ($districts as $district) { ?>
      <option value="<?php echo $district['id']; ?>"><?php echo $district['name'];?></option>
     <?php }?>
    </select>
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect1">Thana</label>
    <select class="form-control" name="thana" id="thana">
      
      <option>Select Thana</option>
    </select>
  </div>
<div class="form-group">
	<input type="submit" name="" value="Update" class="btn btn-primary" id="update">
</div>  
</form>
<?php } }?>
</div>
</body>
</html>
<script>
 $(document).ready(function(){
     $('#district').change(function(){
      var district_id=$(this).val();
       console.log(district_id); 
       $.ajax({
        url:"../controller/thanaController.php",
        method:"POST",
        data:{'district_id':district_id},
        
        success:function(data){
       console.log(data);
       $('#thana').html(data);
        },
       
       });
       
    });
   });

</script>