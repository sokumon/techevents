<?php
include "include/db.php";
if($_SERVER["REQUEST_METHOD"] == "POST"){
    $content = file_get_contents("php://input");
    $decoded = json_decode($content);
    $sql = "SELECT * from users where moodleid='$decoded->moodleid' and password='$decoded->password'";
    $result = mysqli_query($connect,$sql);
    if(mysqli_num_rows($result)>0){
        while($row=mysqli_fetch_assoc($result)){
            $response= array("status"=>"success","verified"=>$row["verfified"],"moodleid"=>$row["moodleid"],"points"=>$row["points"],"year"=>$row["year"],"role"=>$row["type"],"displayName"=>$row["name"]);
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