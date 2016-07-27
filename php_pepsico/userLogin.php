<?php

require("Conn.php");
require("MySQLDao.php");
$correo = $_POST["correo"];
$passw = $_POST["passw"];
$returnValue = array();

if(empty($correo) || empty($passw))
{
$returnValue["status"] = "error";
$returnValue["message"] = "Missing required field";
echo json_encode($returnValue);
return;
}

//$secure_password = md5($password);

$dao = new MySQLDao();
$dao->openConnection();
$userDetails = $dao->getUserDetailsWithPassword($correo,$passw);

if(!empty($userDetails))
{
$returnValue["status"] = "Success";
$returnValue["message"] = "User is registered";
echo json_encode($returnValue);
} else {

$returnValue["status"] = "error";
$returnValue["message"] = "User is not found";
echo json_encode($returnValue);
}

$dao->closeConnection();

?>
