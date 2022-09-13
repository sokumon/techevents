<?php
include "include/db.php";
if($_SERVER["REQUEST_METHOD"] == "POST"){
    $content = file_get_contents("php://input");
    $decoded = json_decode($content);
    $sql = "SELECT * from users where moodleid='$decoded->moodleid'";
    $result = mysqli_query($connect,$sql);
    if(mysqli_num_rows($result)>0){
        while($row=mysqli_fetch_assoc($result)){
            $response= array("points"=>$row["points"]);
            $response=json_encode($response);
            echo $response;
        }
    }else{
            $response= array("status"=>"failed");
            $response=json_encode($response);
            echo $response;
    }
}else{
    $response= array("status"=>"Wrong method");
    $response=json_encode($response);
    echo $response;
}
?>