<?php
include "include/db.php";
include "include/cors.php";
if($_SERVER["REQUEST_METHOD"] == "POST"){
    $content = file_get_contents("php://input");
    $decoded = json_decode($content);
    $reponse_events=array();
    $sql = "SELECT * from `event` where `eid` in (SELECT `eid` from `participate` where moodleid=$decoded->moodleid)";
    $result = mysqli_query($connect,$sql);
    if(mysqli_num_rows($result)>0){
        while($row=mysqli_fetch_assoc($result)){
            array_push($response_events,$row["eid"]);
        }
        $response= array("events"=>$response_events);
        $response=json_encode($response);
        echo $response;
    }else{
            $response= array("status"=>"No Registered Events");
            $response=json_encode($response);
            echo $response;
    }
}else{
    $response= array("status"=>"Wrong method");
    $response=json_encode($response);
    echo $response;
}
?>