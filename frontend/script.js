document.addEventListener("DOMContentLoaded", function() {
    const categories = document.querySelectorAll(".category");
    const difficultyLevels = document.querySelectorAll(".diff");
    let selectedCategory = null;
    let selectedDifficulty = null;

    // Event listener for category selection
    categories.forEach(function(category) {
        category.addEventListener("click", function() {
            selectedCategory = this.dataset.category;
            alert("Please scroll down and choose a difficulty level.");
        });
    });

    // Event listener for difficulty selection
    difficultyLevels.forEach(function(difficulty) {
        difficulty.addEventListener("click", function() {
            selectedDifficulty = this.dataset.category;
            startQuizIfReady(selectedCategory, selectedDifficulty);
        });
    });

    // Function to start the quiz if both category and difficulty are selected
    function startQuizIfReady(category, difficulty) {
        if (category !== null && difficulty !== null) {
            localStorage.setItem("selectedCategory", category);
            localStorage.setItem("selectedDifficulty", difficulty);
            window.location.href = "quiz.html";
        }
    }
});
