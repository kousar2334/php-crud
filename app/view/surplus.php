<!DOCTYPE html>
<html>
<head>
  <title></title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>
<body>
<form method="post" action="" enctype="multipart/form-data">
  <div class="form-group">
    <label for="exampleFormControlInput1">Product Name</label>
    <input type="text" class="form-control" placeholder="Enter Phone Number" name="pdoduct_name">
  </div>
<div class="form-group">
<input type="checkbox" name="negotiable"  id="inputEmail"> Negotiable

 </div>
 
   <div class="form-group">
    <label for="exampleFormControlInput1">Image</label>
    <input type="file" class="form-control" name="product_image[]" multiple="">
  </div>
<div class="form-group">
  <input type="submit" name="" value="Save" class="btn btn-primary">
</div>  
</form>
</body>
</html>