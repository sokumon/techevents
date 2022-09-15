<?php
include "include/db.php";
include "include/cors.php";
if(isset($_POST["Submit"])){
    $eid = $_POST['eid'];
    $ename = $_POST["ename"];
    $ehead = $_POST["ehead"];
    $edate = $_POST["edate"];
    $evenue = $_POST["evenue"];
    $sql = "INSERT INTO `event`(`eid`, `ename`, `ehead`, `edate`, `evenue`) VALUES ($eid,'$ename','$ehead','$edate','$evenue')";
    if(mysqli_query($connect,$sql)){
        echo "Data Entered";
    }
    else{
        echo "try again";
    }
}else{
    echo "Put Everything";
}
?>
<form action="addevents.php" method="POST">
    <h2>eid</h2>
    <input type="text" name="eid" id="">
    <br>
    <h2>ename</h2>
    <input type="text" name="ename" id="">
    <br>
    <h2>ehead</h2>
    <input type="text" name="ehead" id="">
    <br>
    <h2>edate</h2>
    <input type="text" name="edate" id="">
    <br>
    <h2>evenue</h2>
    <input type="text" name="evenue" id="">
    <br>
    <br>
    <input name="Submit" type="submit" value="Submit">
</form>