<?php
$mysql_host ='localhost';
$mysql_user ='root';
$mysql_pward ='';
$mysql_db='techfest';
$coun_err='Could not connect';
global $connect;
$connect = mysqli_connect($mysql_host,$mysql_user,$mysql_pward,$mysql_db);

if(!$connect){
    die($coun_err);
}
?>