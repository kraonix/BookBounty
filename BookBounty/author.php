<?php

session_start();

$Aname = $_POST['Aname'];
$Apassword = $_POST['Apassword'];

$_SESSION['Aname'] = $Aname;
$_SESSION['Apassword'] = $Apassword;

// Database connection
$conn = new mysqli('localhost','root','','bookbounty');

if (isset($_POST['submit'])) 
{
    $Aname = $_POST['Aname'];
    $Aemail = $_POST['Aemail'];
    $Apassword = $_POST['Apassword'];

    // $sql = "select * from alogin where Aname = '$Aname' and Apassword = '$Apassword'";  

    // $sql = "select * from admin where Aname = '$Aname' and Apassword = '$Apassword'"; 

    // $result = mysqli_query($conn, $sql);  
    // $row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
    // $count = mysqli_num_rows($result); 
    
    // if($count == 1)
    // {  
    //     header("Location: authorhome.php");
    // }  
    // else
    // {  
    //     echo  '<script>
    //                 window.location.href = "author.html";
    //                 alert("Login failed. Invalid username or password!!")
    //             </script>';
    // } 
    
    $sql_alogin = "SELECT * FROM alogin WHERE Aname = '$Aname' AND Apassword = '$Apassword'";
    
    // SQL query for 'admin' table
    $sql_admin = "SELECT * FROM admin WHERE Aname = '$Aname' AND Apassword = '$Apassword'";

    // Execute query for alogin table
    $result_alogin = $conn->query($sql_alogin);

    // Execute query for admin table
    $result_admin = $conn->query($sql_admin);

    // Check if a record exists in alogin table
    if ($result_alogin->num_rows == 1) {
        // Valid credentials from alogin table, redirect to authorhome.php
        $_SESSION['Aname'] = $Aname;
        header("Location: authorhome.php");
        exit();
    }
    // Check if a record exists in admin table
    elseif ($result_admin->num_rows == 1) {
        // Valid credentials from admin table, redirect to adminhome.php
        $_SESSION['Aname'] = $Aname;
        header("Location: adminhome.php");
        exit();
    } else {
        // Invalid credentials, redirect to author.html with alert
        echo '<script>
                window.location.href = "author.html";
                alert("Login failed. Invalid username or password!!");
              </script>';
        exit();
    }

}
?>

