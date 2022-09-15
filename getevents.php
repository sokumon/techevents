<?php
include "include/db.php";
include "include/cors.php";
if($_SERVER["REQUEST_METHOD"] == "POST"){
    $content = file_get_contents("php://input");
    $decoded = json_decode($content);
    $sql = "SELECT * from event";
    $response_ename= array();
    $response_eid = array();
    $response_ehead= array();
    $response_edate = array();
    $response_evenue = array();
    $result = mysqli_query($connect,$sql);
    if(mysqli_num_rows($result)>0){
        while($row=mysqli_fetch_assoc($result)){
            array_push($response_eid,$row["eid"]);
            array_push($response_ename,$row["ename"]);
            array_push($response_ehead,$row["ehead"]);
            array_push($response_edate,$row["edate"]);
            array_push($response_evenue,$row["evenue"]);
        }
        $response= array("eid"=>$response_eid,"ename"=>$response_ename,"ehead"=>$response_ehead,"edate"=>$response_edate,"evenue"=>$response_evenue);
        $response=json_encode($response);
        echo $response;


    }else{
            $response= array("status"=>"failed");
            $response=json_encode($response);
            echo $response;
    }
}
?>