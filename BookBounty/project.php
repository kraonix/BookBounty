<?php


session_start();
if (isset($_SESSION['Name'])) {
    $Name = $_SESSION['Name'];
    echo
        '<script>
            alert("WELCOME ' . $Name . '!");
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

    $sql_carousel = "SELECT * FROM carousel_slides ORDER BY id ASC";
    $result_carousel = mysqli_query($conn, $sql_carousel);


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
    <link rel="stylesheet" href="css/carousel.css">
    <link rel="stylesheet" href="css/responsive.css">

    <script src="js/slider.js" defer></script>
    <script src="js/test.js" defer></script>
    <script src="author.js" defer></script>
</head>

<body>
    <header>
        <nav>
            <div class="logo">

                <img src="img/logo.png" alt="LOGO">

            </div>

            <div class="search">
                <input type="text" id="searchInput" placeholder="Search Book...">
                <button onclick="searchBook()" class="btn">Search</button>
            </div>

            <script>
                function searchBook() {
                    // Get the search query from the input field
                    var searchQuery = document.getElementById("searchInput").value;

                    // Check if the search query is empty
                    if (searchQuery.trim() === "") {
                        // Alert the user to enter a search query
                        alert("Please enter a id to search");
                    } else {
                        // Redirect the user to the reading page with the search query as the book ID
                        window.location.href = "pageinfo.php?id=" + searchQuery;
                    }
                }
            </script>

            <ul class="home">
                <li><a href="contact3.html">Contact</a></li>
                <li><a href="#">About</a></li>
                <li><a href="logout.php" class="log">Logout</a></li>
            </ul>

        </nav>
    </header>
    <main>
        <div class="container">
            <section class="sliderPosition">
                <div class="carousel" data-carousel>
                    <div class="slider">
                        <?php
                        $index = 1;
                        while ($row = $result_carousel->fetch_assoc()):
                            $active = ($index === 1) ? "active" : "";
                            ?>
                            <div class="slide <?= $active ?>">
                                <img src="<?= htmlspecialchars($row['image_path']) ?>" alt="holder">
                                <button class="btn">Search</button>
                                <div class="info1">
                                    <h2>#<?= $index ?> Spotlight</h2>
                                </div>
                                <div class="info">
                                    <h2><?= htmlspecialchars($row['heading']) ?></h2>
                                    <p><?= nl2br(htmlspecialchars($row['description'])) ?></p>
                                </div>
                            </div>
                            <?php
                            $index++;
                        endwhile;
                        ?>

                        <!-- Navigation Controls -->
                        <div class="navigation">
                            <i class="prev-btn">&#60;</i>
                            <i class="next-btn">&#62;</i>
                        </div>

                        <!-- Slide Indicators -->
                        <div class="navigation-visibility">
                            <?php for ($i = 1; $i < $index; $i++): ?>
                                <div class="slide-icon <?= ($i === 1) ? 'active' : '' ?>"></div>
                            <?php endfor; ?>
                        </div>

                        < <div class="sh">
                            <!-- < div for covering the carousel > -->
                        </div> 

                    </div>
                </div>
            </section>
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
        <p>Copyright &copy; BookBounty </p>
    </footer>
</body>

</html>