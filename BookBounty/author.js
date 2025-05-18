// Get the image element
var img = document.getElementById("holdImage");

// Variable to track if the image is being held
var holdTimer;

// Function to navigate to another site
function navigateToSite() {
    window.location.href = "author.html";
}

// Event listener for mouse down
img.addEventListener("mousedown", function() {
    // Set a timer to navigate after 5 seconds
    holdTimer = setTimeout(navigateToSite, 2000); // 5000 milliseconds = 5 seconds
});

// Event listener for mouse up
img.addEventListener("mouseup", function() {
    // If mouse is released before 5 seconds, clear the timer
    clearTimeout(holdTimer);
});