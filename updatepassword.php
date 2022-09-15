<?php
include "include/db.php";
include "include/cors.php";
if($_SERVER["REQUEST_METHOD"] == "POST"){
    $content = file_get_contents("php://input");
    $decoded = json_decode($content);
    $sql = "UPDATE users set password = $decoded->password , where moodleid='$decoded->moodleid'";
    echo $sql;
    // $result = mysqli_query($connect,$sql);
    // if($result){
    //     $response= array("status"=>"success");
    //     $response=json_encode($response);
    //     echo $response;
    // }

}else{
    $response= array("status"=>"Wrong method");
    $response=json_encode($response);
    echo $response;
}
?>