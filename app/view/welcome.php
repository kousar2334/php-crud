<?php
session_start();
//require_once('app/userController.php');
require_once __DIR__.('/../../vendor/autoload.php');
$user=new User();
$districts=$user->getDistrict();
$userInfo=$user->getusers();
?>
<!DOCTYPE html>
<html>
<head>
	<title>php crud</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>
<body>

<div class="container-fluid">
  <?php
            if(isset($_SESSION['success_msg']) && !empty($_SESSION['success_msg'])){?>
               <p class="alert alert-success"><?php echo $_SESSION['success_msg'];?></p>
              <?php  unset($_SESSION['success_msg']);
            }
            
           
            if(isset($_SESSION['delete_msg']) && !empty($_SESSION['delete_msg'])){?>
               <p class="alert alert-danger"><?php echo $_SESSION['delete_msg'];?></p>
               <?php unset($_SESSION['delete_msg']);
            }
             if(isset($_SESSION['update_msg']) && !empty($_SESSION['update_msg'])){?>
               <p class="alert alert-success"><?php echo $_SESSION['update_msg'];?></p>
               <?php unset($_SESSION['update_msg']);
            }
            ?>
	<center><h2>PHO CRUD</h2></center>
	<table class="table">
		<tr>
			<th>Name</th>
      <th>Image</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Action</th>
		</tr>
    <?php 
     if (!empty($userInfo)) {
    foreach ($userInfo as $user) {
      ?>
    <tr>
      <td><?php echo $user['name']; ?></td>
      <td><img src="app/public/images/<?php echo $user['image']; ?>" style="width:50px;height: 40px; " ></td>
      <td><?php echo $user['email']; ?></td>
      <td><?php echo $user['phone']; ?></td>
      <td>
        <a href="app/view/userinfo.php?view=<?php echo $user['id']; ?>" class="btn btn-primary">View</a>
        <a href="app/view/edituser.php?edit=<?php echo $user['id']; ?>" class="btn btn-info">Edit</a>
        <a href="app/controller/userController.php?delete=<?php echo $user['id']; ?>" class="btn btn-danger" onclick="return confirm('Are Sure To Delete');" >Delete</a>
      </td>
    </tr>
  <?php } }?>
	</table>
	<center><h3>Insert User Data</h3></center>
   
<form method="post" action="app/controller/userController.php" enctype="multipart/form-data">
  <div class="form-group">
    <label for="exampleFormControlInput1">Name</label>
    <input type="text" class="form-control" placeholder="Enter name" name="name">
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">Email address</label>
    <input type="email" class="form-control"  placeholder="Enter Email" name="email">
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">Mobile Phone</label>
    <input type="text" class="form-control" placeholder="Enter Phone Number" name="phone">
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
    <label for="exampleFormControlInput1">Image</label>
    <input type="file" class="form-control" name="image">
  </div>
<div class="form-group">
	<input type="submit" name="" value="Save" class="btn btn-primary">
</div>  
</form>
</div>
</body>
</html>
<script>
 $(document).ready(function(){
     $('#district').change(function(){
      var district_id=$(this).val();
       console.log(district_id); 
       $.ajax({
        url:"app/controller/thanaController.php",
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