document.addEventListener("DOMContentLoaded", function() {
  var overlay = document.getElementById("overlay");
  var isBlurred = false;
  
  // Function to toggle blur effect and overlay visibility
  function toggleBlur() {
    var elementsToBlur = document.querySelectorAll("body > *:not(#overlay)");
    for (var i = 0; i < elementsToBlur.length; i++) {
      elementsToBlur[i].classList.toggle("blurred");
    }
    overlay.style.display = (overlay.style.display === "flex") ? "none" : "flex";
    isBlurred = !isBlurred;
  }
  
  // Listen for clicks anywhere on the document
  document.addEventListener("click", function() {
    toggleBlur();
  });

  // Prevent clicks on the overlay from removing the blur
  overlay.addEventListener("click", function(event) {
    event.stopPropagation();
  });
});
