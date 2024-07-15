document.addEventListener("DOMContentLoaded", async function() {
    const categoriesContainer = document.getElementById("categoriesContainer");
    const difficultyLevels = document.querySelectorAll(".diff");
    let selectedCategory = null;
    let selectedDifficulty = null;

    // Function to fetch categories from the server
    async function fetchCategories() {
        try {
            const response = await fetch('http://localhost:3000/categories');
            const categories = await response.json();
            console.log('Fetched Categories:', categories);
            if (categories.length === 0) {
                console.error('No categories found');
            } else {
                displayCategories(categories);
            }
        } catch (error) {
            console.error('Error fetching categories:', error);
            alert("Error fetching categories. Please try again later.");
        }
    }

    //Fuction to display all categories
    function displayCategories(categories) {
        categoriesContainer.innerHTML = ''; 
        categories.forEach(category => {
            const categoryElement = document.createElement('div');
            categoryElement.classList.add('category');
            categoryElement.dataset.categoryId = category.category_id;
            categoryElement.textContent = category.category_name;
            console.log('Category Element:', categoryElement); 

            // Event listener for category selection
            categoryElement.addEventListener("click", function() {
                selectedCategory = this.dataset.categoryId;
                console.log('Selected Category:', selectedCategory);
                alert("Please scroll down and choose a difficulty level.");
            });

            categoriesContainer.appendChild(categoryElement); 
            console.log('Appended Category Element:', categoryElement); 
        });
    }

    fetchCategories();

    // Event listener for difficulty selection
    difficultyLevels.forEach(function(difficulty) {
        difficulty.addEventListener("click", function() {
            selectedDifficulty = this.dataset.difficulty; 
            if (selectedCategory === null) {
                alert("Please select a category");
            } else {
                startQuizIfReady(selectedCategory, selectedDifficulty);
            }
        });
    });

    // Function to start the quiz only if both category and difficulty are selected
    function startQuizIfReady(category, difficulty) {
        if (category !== null && difficulty !== null) {
            localStorage.setItem("selectedCategory", category);
            localStorage.setItem("selectedDifficulty", difficulty);
            window.location.href = "quiz.html";
        }
    }
});
