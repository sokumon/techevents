<?php
include "include/db.php";
if($_SERVER["REQUEST_METHOD"] == "POST"){
    $content = file_get_contents("php://input");
    $decoded = json_decode($content);
    $sql = "SELECT * from users";
    $response_ename= array();
    $response_eid = array();
    $response_ehead= array();
    $response_edate = array();
    $response_evenue = array();
    $result = mysqli_query($connect,$sql);
    if(mysqli_num_rows($result)>0){
        while($row=mysqli_fetch_assoc($result)){
            array_push($response_eid,$row["moodleid"]);
            array_push($response_ename,$row["name"]);
            array_push($response_ehead,$row["password"]);
            array_push($response_edate,$row["type"]);
            array_push($response_evenue,$row["year"]);
        }
        $response= array("moodleid"=>$response_eid,"name"=>$response_ename,"password"=>$response_ehead,"type"=>$response_edate,"year"=>$response_evenue);
        $response=json_encode($response);
        echo $response;


    }else{
            $response= array("status"=>"failed");
            $response=json_encode($response);
            echo $response;
    }
}
?>