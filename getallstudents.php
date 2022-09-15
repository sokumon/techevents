<?php
include "include/db.php";
include "include/cors.php";
if($_SERVER["REQUEST_METHOD"] == "POST"){
    $content = file_get_contents("php://input");
    $decoded = json_decode($content);
    $sql = "SELECT * from users";
    $response = array();
    $result = mysqli_query($connect,$sql);
    if(mysqli_num_rows($result)>0){
        while($row=mysqli_fetch_assoc($result)){
            $response_data = array("moodleid"=>$row["moodleid"],"name"=>$row["name"],"points"=>$row["points"],"year"=>$row["year"]);
            $response_data =(object)$response_data;
            array_push($response,$response_data);
        }
        $response=json_encode($response);
        echo $response;


    }else{
            $response= array("status"=>"failed");
            $response=json_encode($response);
            echo $response;
    }
}
?>