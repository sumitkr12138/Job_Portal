<?php

//Your Mysql Config
$servername = "aa1huc0mqkqo43j.c73gmlderajj.us-east-1.rds.amazonaws.com'";
$username = "admin";
$password = "Sumit1999";
$dbname = "jobportal";

//Create New Database Connection
$conn = new mysqli($servername, $username, $password, $dbname);

//Check Connection
if($conn->connect_error) {
	die("Connection Failed: ". $conn->connect_error);
}