// Example JavaScript code (you can customize this based on your needs)
document.addEventListener("DOMContentLoaded", function () {
    const categoryItems = document.querySelectorAll(".category-bar a");
  
    categoryItems.forEach(function (item) {
      item.addEventListener("click", function (event) {
        event.preventDefault();
        // Add your code to handle category click event
        console.log("Category clicked:", item.textContent);
      });
    });
  });
  