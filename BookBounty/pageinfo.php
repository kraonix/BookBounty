<?php
require ('thumbDB.php');

$id = $_GET['id'];

$sql = "SELECT thumbnail, name, Aname, description, genre, id FROM books WHERE id = '$id'";
$result = mysqli_query($conn, $sql);
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Best Online Book Reading Webapp</title>
    <link rel="icon" type="image/x-icon" href="css/favicon.ico">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/utils.css">
    <link rel="stylesheet" href="css/scroll.css">
    <link rel="stylesheet" href="css/test.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="pageinfo/pageinfo.css">
    <script src="js/slider.js" defer></script>
    <script src="js/test.js" defer></script>
    <script src="author.js" defer></script>
</head>

<body>
    <header>
        <nav>
            <div class="logo">
                <a href="#">
                    <img src="img/logo.png" alt="LOGO">
                </a>
            </div>
            <div class="search">
                <input type="text" name="" id="" placeholder="Search Book...">
                <button class="btn">Search</button>
            </div>
            <ul>
                <li><a href="contact3.html" class="home">Contact</a></li>
                <li><a href="#">About</a></li>
                <li><a href="logout.php" class="log">Logout</a></li>
            </ul>
        </nav>
    </header>
    <main>

        <?php
        if (mysqli_num_rows($result) > 0)
        // Output data of each row
        {
            $row = mysqli_fetch_assoc($result);

            $thumbnail = $row['thumbnail'];
            $name = $row['name'];
            $Aname = $row['Aname'];
            $description = $row['description'];
            $genre = $row['genre'];
            $id = $row['id'];
            echo '

        <div class="container">
            <div class="bg-img">
                <img src= ' . $thumbnail . '  alt=' . $name . '>
            </div>

            <div class="content">
                <div class="row1">
                    <div class="img1">
                        <img src=' . $thumbnail . '  alt=' . $name . '>
                    </div>
                </div>

                <div class="row2">
                    <h1>' . $name . '</h1>
                    <div class="watch">
                        <a href="reading.php?id='.$id.'">&#9784; Read Now</a>
                    </div>
                    <div class="description">
                        <div class="about">' . $description . '</div>
                    </div>
                </div>

                <div class="row3">
                    <p>
                        <b>Name :</b><span class="ans">' . $name . '</span><br><br>
                        <b>Author :</b><span class="ans">' . $Aname . '</span><br><br>
                        <b>Genre :</b><span class="ans">' . $genre . '</span><br><br>
                    </p>
                </div>
            </div>
        </div>';


        } else {
            echo "No book found in the database.";
        }
        ?>

    </main>
    <footer class="flex-all-center">
        <p>Copyright &copy; BookBounty </p>
    </footer>
</body>

</html>