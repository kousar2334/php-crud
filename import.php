<?php
$connection = mysqli_connect('localhost','root','','test');
$filename = 'Backup-2019.04.28.sql';
$handle = fopen($filename,"r+");
$contents = fread($handle,filesize($filename));
$sql = explode(';',$contents);
foreach($sql as $query){
  $result = mysqli_query($connection,$query);
  if($result){
      echo '<tr><td><br></td></tr>';
      echo '<tr><td>'.$query.' <b>SUCCESS</b></td></tr>';
      echo '<tr><td><br></td></tr>';
  }
}
fclose($handle);
echo 'Successfully imported';
?>