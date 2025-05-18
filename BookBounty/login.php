    <?php

        session_start();

        $Name = $_POST['Name'];
        $Password = $_POST['Password'];

        $_SESSION['Name'] = $Name;
        $_SESSION['Password'] = $Password;
    
        // Database connection
        $conn = new mysqli('localhost','root','','bookbounty');

        if (isset($_POST['submit'])) 
        {
            $Name = $_POST['Name'];
            $Email = $_POST['Email'];
            $Password = $_POST['Password'];

            $sql = "select * from registration where Name = '$Name' and Password = '$Password'";  
            
            $result = mysqli_query($conn, $sql);  
            $row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
            $count = mysqli_num_rows($result); 
            
            if($count == 1)
            {  
                header("Location: project.php");
                exit();
            }  
            else
            {  
                echo  '<script>
                            window.location.href = "login.html";
                            alert("Login failed. Invalid username or password!!")
                        </script>';
            }     
        }
    ?>

