<?php
session_start();
if(isset('submit')){

	//Start from here
	if(isset($_SESSION['cart'])){
		$item_array_id=array_column($_SESSION['cart'], column:"product_id");
		if(!in_array($_POST['product_id'], $item_array_id)){
			$count=count($_SESSION['cart']);
			$item_array=array(
           'product_id'=$_POST['product_id'],
			);

			$_SESSION['cart'][$count]=$item_array;
			echo"Product is added";
			
		}else{
			echo"product is already added to cart";
		}
	}else{
		$item_array=array(
               'product_id'=$_POSt['product_id'],
		);
		$_SESSION['cart'][0]=$item_array;
	}
	//End here
}

?>