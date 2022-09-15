<?php
    if (isset($_SERVER['HTTP_ORIGIN'])) {
        // Decide if the origin in $_SERVER['HTTP_ORIGIN'] is one
        // you want to allow, and if so:
        header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
        header('Access-Control-Allow-Credentials: true');
        header('Access-Control-Max-Age: 86400');    // cache for 1 day
    }
    
    // Access-Control headers are received during OPTIONS requests
    if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
        
        if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
            // may also be using PUT, PATCH, HEAD etc
            header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
        
        if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
            header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");
    
        exit(0);
    }
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