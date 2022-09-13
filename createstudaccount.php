<?php
include "include/db.php";
$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://script.google.com/macros/s/AKfycbz4_uiR35fCw9Hh1doeDSQQC-ROy3kpKHPuAAysxNV2uKV8flRVz1WW-oYFx9jaGo_c1w/exec',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
));

$response = curl_exec($curl);
curl_close($curl);
$count =0; 
$obj = json_decode($response,true);
for ($i=0; $i < count($obj["users"]) ; $i++) {
$moodleid = $obj["users"][$i];
$moodleid = (string)$moodleid;

$name= $obj["name"][$i];
$pword = $obj["users"][$i]."@Apsit";
$points = 0;
$type = "Student";
$verifided = "No";
$year = "TE";
$sql = "INSERT INTO `users`(`moodleid`, `name`, `password`, `points`, `type`, `verfified`,`year`) VALUES ('$moodleid','$name','$pword','$points','$type','$verifided','$year')";
// echo $sql;
if(mysqli_query($connect,$sql)){
    $count++;
}
else{
    echo "try again";
}
}
echo "<h1>Hello World</h1>";
?>

