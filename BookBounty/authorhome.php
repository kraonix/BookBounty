<?php
session_start();
if (isset($_SESSION['Aname'])) {
    $Name = $_SESSION['Aname'];
    echo
            '<script>
                        alert("WELCOME '.$Name.'!");
            </script>';
} else {
    header("Location: front.html");
    exit();
}


require ('thumbDB.php');

$sql_mangas = "SELECT thumbnail, name, id FROM books WHERE genre = 'Manga'";
$result_mangas = mysqli_query($conn, $sql_mangas);

$sql_fictions = "SELECT thumbnail, name, id FROM books WHERE genre = 'Fiction'";
$result_fictions = mysqli_query($conn, $sql_fictions);

$sql_non_fictions = "SELECT thumbnail, name, id FROM books WHERE genre = 'Non-Fiction'";
$result_non_fictions = mysqli_query($conn, $sql_non_fictions);

$sql_mysteries = "SELECT thumbnail, name, id FROM books WHERE genre = 'Mystery'";
$result_mysteries = mysqli_query($conn, $sql_mysteries);
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="css/favicon.ico">
    <link rel="stylesheet" href="css/authorhome.css">
    <script src="js/slider.js" defer></script>
    <link rel="stylesheet" href="css/authordash.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/utils.css">
    <link rel="stylesheet" href="css/scroll.css">
    <link rel="stylesheet" href="test/test.css">
    <link rel="stylesheet" href="css/onclick.css">


    <title>Author/BookBounty.in</title>
</head>

<body>
    <header>
        <nav>
            <div class="logo">
                <a href="#">
                    <img src="contact/logo.png" alt="">
                </a>
            </div>
            <ul>
                <li><a href="contact2.html" class="home1">Contact</a></li>
                <li><a href="#">About</a></li>
                <li><a href="logout.php" class="log">Logout</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <div class="container">
            <div class="wel">
                <h1>WELCOME TO BookBounty.in Author Home Page</h>
            </div>

            <div class="dash">

                <div class="box">
                    <a href="authorupload.html">
                        <div class="link">
                            <img src="css/bggif.gif" alt="dash">
                            <p class="pos1"> UPLOAD</p>
                        </div>
                    </a>
                </div>

                

            </div>
            <div class="card">
                <h2 class="my-2">MANGAS</h2>
                <div class="cards">
                    <?php
                    if (mysqli_num_rows($result_mangas) > 0) {
                        // Output data of each row
                        while ($row = mysqli_fetch_assoc($result_mangas)) {
                            $thumbnail = $row['thumbnail'];
                            $name = $row['name'];
                            $id = $row['id'];
                            echo '
                                    <div class="card-item">
                                    <a href="pageinfo.php?id= ' . $id . '">
                                            <img src="' . $thumbnail . '" alt="' . $name . '" name="thumbnail">
                                            <div class="lines">
                                                <p class="text-center my-1" name="Name">' . $name . '</p>
                                            </div>
                                        </a>
                                    </div>';
                        }
                    } else {
                        echo "No mangas found in the database.";
                    }
                    ?>
                </div>
            </div>

            <div class="card">
                <h2 class="my-2">FICTIONS</h2>
                <div class="cards">
                    <?php
                    if (mysqli_num_rows($result_fictions) > 0) {
                        // Output data of each row
                        while ($row = mysqli_fetch_assoc($result_fictions)) {
                            $thumbnail = $row['thumbnail'];
                            $name = $row['name'];
                            $id = $row['id'];
                            echo '
                                <div class="card-item">
                                <a href="pageinfo.php?id= ' . $id . '">
                                        <img src="' . $thumbnail . '" alt="' . $name . '" name="thumbnail">
                                        <div class="lines">
                                            <p class="text-center my-1" name="Name">' . $name . '</p>
                                        </div>
                                    </a>
                                </div>';
                        }
                    } else {
                        echo "No fictions found in the database.";
                    }
                    ?>
                </div>
            </div>


            <div class="card">
                <h2 class="my-2">NON-FICTIONS</h2>
                <div class="cards">
                    <?php
                    if (mysqli_num_rows($result_non_fictions) > 0) {
                        // Output data of each row
                        while ($row = mysqli_fetch_assoc($result_non_fictions)) {
                            $thumbnail = $row['thumbnail'];
                            $name = $row['name'];
                            $id = $row['id'];
                            echo '
                                <div class="card-item">
                                <a href="pageinfo.php?id= ' . $id . '">
                                        <img src="' . $thumbnail . '" alt="' . $name . '" name="thumbnail">
                                        <div class="lines">
                                            <p class="text-center my-1" name="Name">' . $name . '</p>
                                        </div>
                                    </a>
                                </div>';
                        }
                    } else {
                        echo "No non-fictions found in the database.";
                    }
                    ?>
                </div>
            </div>


            <div class="card">
                <h2 class="my-2">MYSTERIES</h2>
                <div class="cards">
                    <?php
                    if (mysqli_num_rows($result_mysteries) > 0) {
                        // Output data of each row
                        while ($row = mysqli_fetch_assoc($result_mysteries)) {
                            $thumbnail = $row['thumbnail'];
                            $name = $row['name'];
                            $id = $row['id'];
                            echo '
                                <div class="card-item">
                                <a href="pageinfo.php?id= ' . $id . '">
                                        <img src="' . $thumbnail . '" alt="' . $name . '" name="thumbnail">
                                        <div class="lines">
                                            <p class="text-center my-1" name="Name">' . $name . '</p>
                                        </div>
                                    </a>
                                </div>';
                        }
                    } else {
                        echo "No mysteries found in the database.";
                    }
                    ?>
                </div>
            </div>


            <div class="card">
                <h2 class="my-2">HORROR</h2>
                <div class="cards">
                    <?php
                    // Query to select horror books
                    $sql_horror = "SELECT thumbnail, name, id FROM books WHERE genre = 'Horror'";
                    $result_horror = mysqli_query($conn, $sql_horror);

                    if (mysqli_num_rows($result_horror) > 0) {
                        // Output data of each row
                        while ($row = mysqli_fetch_assoc($result_horror)) {
                            $thumbnail = $row['thumbnail'];
                            $name = $row['name'];
                            $id = $row['id'];
                            echo '
                                <div class="card-item">
                                <a href="pageinfo.php?id= ' . $id . '">
                                        <img src="' . $thumbnail . '" alt="' . $name . '" name="thumbnail">
                                        <div class="lines">
                                            <p class="text-center my-1" name="Name">' . $name . '</p>
                                        </div>
                                    </a>
                                </div>';
                        }
                    } else {
                        echo "No horror books found in the database.";
                    }
                    ?>
                </div>
            </div>
        </div>
    </main>
    <footer class="flex-all-center">
        <p>Copyright &copy; BookBounty.in </p>
    </footer>
</body>

</html>