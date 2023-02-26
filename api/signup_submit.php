<?php
require("../includes/database_connect.php");

$full_name = $_POST['full_name'];
$phone = $_POST['phone'];
$email = $_POST['email'];
$password = $_POST['password'];
$password = password_hash($password,PASSWORD_DEFAULT);
$college_name = $_POST['college_name'];
$gender = $_POST['gender'];
//echo "manish";
$sql = "SELECT * FROM `user` WHERE `user_email`='$email'";
$result = mysqli_query($conn, $sql);
if (!$result) {
    $response = array("success" => false, "message" => "Something went wrong!");
    echo json_encode($response);
    return;
}

$row_count = mysqli_num_rows($result);
if ($row_count != 0) {
    $response = array("success" => false, "message" => "This email id is already registered with us!");
    echo json_encode($response);
    return;
}
//$email', '$password', '$full_name', '$phone', '$gender', '$college_name
$sql = "INSERT INTO `user` (`user_name`, `user_email`, `password`,`phone`, `gender`, `college_name`) VALUES ('$full_name','$email','$password','$phone','$gender','$college_name')";
$result = mysqli_query($conn, $sql);
if (!$result) {
    $response = array("success" => false, "message" => "Something went wrong!");
    echo json_encode($response);
    return;
}

$response = array("success" => true, "message" => "Your account has been created successfully!");
echo json_encode($response);
mysqli_close($conn);
