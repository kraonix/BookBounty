<?php
require ('thumbDB.php');
$id = $_GET['id'];

$sql = "SELECT thumbnail, name, Aname, description, genre, id, pdf FROM books WHERE id = '$id'";
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
    <link rel="stylesheet" href="reading/reading.css">
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
            $pdf = $row['pdf'];
            echo '

        <div class="container">
            <div class="bg-img">
                <img src=' . $thumbnail . ' alt=' . $name . '>
            </div>

            <div class="content">
                <div class="row1">
                    <div class="img1">
                        <img src=' . $thumbnail . ' alt=' . $name . '>
                    </div>
                    <div class="name"> '.$name.' </div>
                </div>

                <div class="rowpdf">
                    <iframe class="pdf" src="'.$pdf.'#toolbar=0" frameborder="0"></iframe>
                </div>
            </div>
        </div>';


         } else {
            echo "No mangas found in the database.";
        }
         
        ?>
    </main>
    <footer class="flex-all-center">
        <p>Copyright &copy; BookBounty </p>
    </footer>
</body>

</html>