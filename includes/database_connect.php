<?php
$serverName="localhost";
$username="root";
$password="";
$dbname="minor";
$conn = mysqli_connect($serverName,$username,$password,$dbname);

if (mysqli_connect_errno()) {
    // Throw error message based on ajax or not
    echo "Failed to connect to MySQL! Please contact the admin.";
    return;
}
