<?php
require ('thumbDB.php');

$message = "";

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $spotlight_title = $_POST['spotlight_title'];
    $heading = $_POST['heading'];
    $description = $_POST['description'];
    
    if (isset($_FILES['image']) && $_FILES['image']['error'] == 0) {
        $uploadDir = "uploads/carousel/";
        $imageName = basename($_FILES["image"]["name"]);
        $targetFile = $uploadDir . time() . "_" . $imageName;
        $imageFileType = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION));
        $allowed = ['jpg', 'jpeg', 'png'];

        if (in_array($imageFileType, $allowed)) {
            if (move_uploaded_file($_FILES["image"]["tmp_name"], $targetFile)) {
                $stmt = $conn->prepare("INSERT INTO carousel_slides (image_path, spotlight_title, heading, description) VALUES (?, ?, ?, ?)");
                $stmt->bind_param("ssss", $targetFile, $spotlight_title, $heading, $description);

                if ($stmt->execute()) {
                    $message = "Slide uploaded successfully!";
                } else {
                    $message = "Database insert failed: " . $stmt->error;
                }
                $stmt->close();
            } else {
                $message = "Failed to upload image.";
            }
        } else {
            $message = "Only JPG, JPEG, PNG files are allowed.";
        }
    } else {
        $message = "Please select an image.";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Admin - Upload Slide</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        form { max-width: 600px; margin: auto; padding: 20px; border: 1px solid #ccc; border-radius: 10px; }
        input, textarea, button { width: 100%; padding: 10px; margin: 10px 0; }
        label { font-weight: bold; }
        .message { color: green; margin: 10px 0; }
    </style>
</head>
<body>

<h2>Upload a New Slide</h2>
<?php if ($message): ?>
    <div class="message"><?php echo htmlspecialchars($message); ?></div>
<?php endif; ?>

<form method="post" enctype="multipart/form-data">
    <label for="spotlight_title">Spotlight Title:</label>
    <input type="text" name="spotlight_title" id="spotlight_title" required>

    <label for="heading">Heading:</label>
    <input type="text" name="heading" id="heading" required>

    <label for="description">Description:</label>
    <textarea name="description" id="description" rows="5" required></textarea>

    <label for="image">Select Image (jpg, jpeg, png):</label>
    <input type="file" name="image" id="image" accept=".jpg,.jpeg,.png" required>

    <button type="submit">Upload Slide</button>
</form>

</body>
</html>
