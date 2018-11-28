<?php

require_once __DIR__.('/../../vendor/autoload.php');
$user=new User();
if ($_SERVER['REQUEST_METHOD']=='POST') {
 $thanas=$user->getThana($_POST['district_id']);
$output="";
foreach ($thanas as $thana) {
    $output.='<option value="'.$thana['id'].'">'.$thana['name'].'</option>';
}
echo $output;
}
