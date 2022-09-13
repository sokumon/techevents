<?php
include "include/db.php";
if($_SERVER["REQUEST_METHOD"] == "POST"){
    $content = file_get_contents("php://input");
    $decoded = json_decode($content);
    $sql = "INSERT INTO `participate`(`epid`,`eid`,`moodleid`) VALUES(0,'$decoded->eid','$decoded->moodleid')";
    $result = mysqli_query($connect,$sql);
    
    if($result==1){
        $response= array("status"=>"success");
        $response=json_encode($response);
        echo $response;
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