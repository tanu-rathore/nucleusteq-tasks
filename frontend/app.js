document.addEventListener("DOMContentLoaded", async function() {
    const questionElement = document.getElementById("question");
    const optionsElement = document.getElementById("options");
    const nextButton = document.getElementById("nextButton");
    const questionNumberElement = document.getElementById("questionNumber");
    const timerElement = document.getElementById("timer");

    let currentQuestionIndex = 0;
    let score = 0;
    let questions = [];
    let timer;

    // Fetch questions based on selected category
    const selectedCategory = localStorage.getItem("selectedCategory");
    const selectedDifficulty = localStorage.getItem("selectedDifficulty");
    const apiUrl = `http://localhost:3000/questions?categoryId=${selectedCategory}`;

    try {
        const response = await fetch(apiUrl);
        const data = await response.json();
        questions = data;
        if(selectedDifficulty === 'easy') {
            questions.length = 10;
        }
        else if( selectedDifficulty === 'medium') {
            questions.length = 15;
        }
        displayQuestion();
    } catch (error) {
        console.error('Error fetching quiz questions:', error);
    }

    // function to display the current question and options
    function displayQuestion() {
        clearTimeout(timer); 
        const currentQuestion = questions[currentQuestionIndex];
        questionNumberElement.innerHTML = `<b>Question ${currentQuestionIndex + 1} / ${questions.length}<b>`;
        questionElement.innerHTML = decodeURIComponent(currentQuestion.question_text);
        optionsElement.innerHTML = '';

        const options = [
            currentQuestion.option1,
            currentQuestion.option2,
            currentQuestion.option3,
            currentQuestion.option4
        ];
        options.sort(() => Math.random() - 0.5);

        options.forEach((option) => {
            const optionElement = document.createElement('div');
            optionElement.classList.add('option');
            optionElement.innerText = decodeURIComponent(option);
            optionElement.addEventListener('click', () => selectAnswer(optionElement, option === currentQuestion.correct_option));
            optionsElement.appendChild(optionElement);
        });

        // Start the timer
        startTimer();
    }

    // Function to start the timer
    function startTimer() {
        let timeLeft = 15;
        updateTimerDisplay(timeLeft);
        timer = setInterval(() => {
            timeLeft--;
            updateTimerDisplay(timeLeft);
            if (timeLeft === 0) {
                clearInterval(timer);
                selectAnswer(null, false); 
            }
        }, 1000);
    }

    // Function to update timer display
    function updateTimerDisplay(timeLeft) {
        timerElement.innerHTML = `<b>Time left: ${timeLeft} seconds<b>`;
    }

    // Function to handle option selection
    function selectAnswer(optionElement, isCorrect) {
        clearTimeout(timer); 
        if (optionElement) {
            if (isCorrect) {
                optionElement.style.backgroundColor = '#4CAF50'; // Green color for correct answer
                score++;
            } else {
                optionElement.style.backgroundColor = '#FF5733'; // Red color for wrong answer
            }
            optionsElement.querySelectorAll('.option').forEach((option) => {
                option.removeEventListener('click', () => {});
            });
        }

        setTimeout(() => {
            currentQuestionIndex++;
            if (currentQuestionIndex < questions.length) {
                    displayQuestion();
                } else {
                    endQuiz();
                }
            
           }, 1000);
    }

    // Function to end the quiz
    function endQuiz() {
       
        questionElement.innerHTML = `Your Score: ${score} / ${questions.length}`;
        optionsElement.innerHTML = '';
        nextButton.style.display = 'none';
    }
});
