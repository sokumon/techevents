<?php
include "include/db.php";
include "include/cors.php";
if($_SERVER["REQUEST_METHOD"] == "POST"){
    $points=0;
    $content = file_get_contents("php://input");
    $decoded = json_decode($content);
    $sql1 ="SELECT points from users where moodleid= $decoded->moodleid";
    $result = mysqli_query($connect,$sql1);
    if(mysqli_num_rows($result)>0){
        while($row=mysqli_fetch_assoc($result)){
            $points = $row["points"];
        }
    }
    $points = (int)$points + (int)$decoded->points;
    if($points >= 0){
        $sql= "UPDATE users SET points = $points WHERE moodleid = $decoded->moodleid ";
        $result = mysqli_query($connect,$sql);
        if($result){
            $response= array("status"=>"success");
            $response=json_encode($response);
            echo $response;
        }else{
            $response= array("status"=>"failure");
            $response=json_encode($response);
            echo $response;
        }
    }else{
        $response= array("status"=>"Negative Points");
        $response=json_encode($response);
        echo $response;
    }
    // if(mysqli_num_rows($result)>0){
    //     while($row=mysqli_fetch_assoc($result)){
    //         $response= array("points"=>$row["points"]);
    //         $response=json_encode($response);
    //         echo $response;
    //     }
    // }else{
    //         $response= array("status"=>"failed");
    //         $response=json_encode($response);
    //         echo $response;
    // }
}else{
    $response= array("status"=>"Wrong method");
    $response=json_encode($response);
    echo $response;
}
?>