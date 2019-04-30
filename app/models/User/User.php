<?php
//namespace App\Models\User;
class User{
    public $id="";
	public $name="";
	public $email="";
	public 	$phone="";
	public $district="";
	public $thana="";
	public $image="";
	private $conn="";
	public function __construct()
	{
		$this->conn=new mysqli('localhost','root','','test') or die();
	}
	public function getUsers()
	{
		
		 $sql="SELECT * from user";
		 $result = mysqli_query($this->conn,$sql);
		 if(mysqli_num_rows($result)>0){
		 	while($row=mysqli_fetch_array($result)){
			$this->user[]=$row;
		 }
		 return $this->user;
		 }
		
		 else{
		 	echo "no result";
		 }
		 
		
	}
	public function getDistrict()
	{
		$mysqli=new mysqli('localhost','root','','test') or die();
		$query=$mysqli->query("SELECT * from district ");
		while($row=$query->fetch_assoc()){
			$this->data[]=$row;
		}
		return $this->data;
	}
	public function dataProcess($data)
	{
		if (array_key_exists('name', $data)) {
			$this->name=$data['name'];
		}
        
        if (array_key_exists('email', $data)) {
			$this->email=$data['email'];
		}

       if (array_key_exists('phone', $data)) {
			$this->phone=$data['phone'];
		}
        if (array_key_exists('district', $data)) {
			$this->district=$data['district'];
		}
		if (array_key_exists('thana',$data)) {
			$this->thana=$data['thana'];
		}
		if (array_key_exists('id',$data)) {
			$this->id=$data['id'];
		}
		if (array_key_exists('image',$data)) {
			$this->image=$data['image'];
		}
        
	}
	public function getThana($district_id)
	{
		$mysqli=new mysqli('localhost','root','','test') or die();
		$query=$mysqli->query("SELECT * FROM thana WHERE district_id=$district_id");
		while($row=$query->fetch_assoc()){
			$this->data[]=$row;
		}
		return $this->data;
	}
	public function storeData()
	{
	session_start();
    $mysqli=new mysqli('localhost','root','','test');
    $query=$mysqli->query("INSERT INTO user(name,email,phone,district_id,thana_id,image) VALUES('$this->name','$this->email','$this->phone','$this->district','$this->thana','$this->image')");
    $_SESSION['success_msg']="Data Added successfully";
    header('location:../../index.php');
	}
	public function deleteUser($user_id)
	{  session_start();
		$mysqli=new mysqli('localhost','root','','test') or die();
		$query=$mysqli->query("DELETE FROM user WHERE user.id=$user_id");
		$_SESSION['delete_msg']="A User has benn Deleted";
		header('location:../../index.php');
	}
	public function viewUser($user_id)
	{
		$mysqli=new mysqli('localhost','root','','test') or die();
		$query=$mysqli->query("SELECT user.id as user_id,user.name as user_name,district.name as district_name,thana.name as thana_name,phone,email FROM user JOIN district 
       ON user.district_id = district.id JOIN thana ON user.thana_id=thana.id WHERE user.id=$user_id");
		
		while ($row=$query->fetch_assoc()) {
			$this->userInfo[]=$row;
		}
		return $this->userInfo;

	}
	public function updateUser(){
		session_start();
		$mysqli=new mysqli('localhost','root','','test') or die();
		$query=$mysqli->query("UPDATE user SET name='$this->name',email='$this->email',phone='$this->phone',district_id='$this->district',thana_id='$this->thana' WHERE user.id=$this->id");
		$_SESSION['update_msg']="Data Upadte successfully";
    header('location:../../index.php');
	}
}