<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "moviedatabase";

$conn = new mysqli($servername, $username, $password, $dbname);

//checkdate
if($conn->connect_error){
	die("Connection failed: ". $conn->connect_error);
}
?>