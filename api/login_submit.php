<?php
require("../includes/database_connect.php");
//require("../dashboard.php");
if($_SERVER['REQUEST_METHOD']=='POST'){
    $logUserE=$_POST['email'];
    $logpass=$_POST['password'];

    $sql="select * from user where user_email='$logUserE'";
    $result=mysqli_query($conn,$sql);
    $num=mysqli_num_rows($result);
    if($num==1){
        while($row=mysqli_fetch_assoc($result)){
            //echo "while";
            if(password_verify($logpass,$row['password'])){
                $loggedin=true;
                session_start();
                echo "login successfully";
                $_SESSION['loggedin']=true;
                $_SESSION['userId']=$row['id'];
                $_SESSION['username']=$row['user_name'];
                echo '<script>console.log("harry")</script>';
                header("location:/THEPHP/dashboard.php");
            }
            else{
                echo "invalid credentials";
                echo "inner";
            }
        }
    }
    else{
        echo "invalid credentials";
    }
}
?>