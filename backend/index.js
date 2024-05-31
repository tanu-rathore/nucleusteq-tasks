const express = require('express');
const mysql = require('mysql');
const cors = require('cors');
const bodyParser = require('body-parser');  

const app = express();
const port = 3000;

app.use(cors());
app.use(bodyParser.json());  

// Create a MySQL connection
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'Tanu2001@',
    database: 'dbquiz'
});

//Connect to database
connection.connect(err => {
    if (err) {
        console.error('Error connecting to the database:', err);
        return;
    }
    console.log('Connected to the database');
});

// Define an endpoint to fetch questions based on category
app.get('/questions', (req, res) => {
    const categoryId = req.query.categoryId;
    const query = 'SELECT * FROM questions WHERE category_id = ?';
    
    connection.query(query, [categoryId], (error, results) => {
        if (error) {
            console.error('Error fetching questions:', error);
            res.status(500).send('Error fetching questions');
            return;
        }
        res.json(results);
    });
});

// Define a POST endpoint to add a new question
app.post('/questions', (req, res) => {
    const { question_text, category_id, correct_option, option1, option2, option3, option4 } = req.body;

    if (!question_text || !category_id || !correct_option || !option1 || !option2 || !option3 || !option4) {
        return res.status(400).send('All fields are required');
    }

    const query = 'INSERT INTO questions (question_text, category_id, correct_option, option1, option2, option3, option4) VALUES (?, ?, ?, ?, ?, ?, ?)';
    const values = [question_text, category_id, correct_option, option1, option2, option3, option4];

    connection.query(query, values, (error, results) => {
        if (error) {
            console.error('Error inserting question:', error);
            return res.status(500).send('Error inserting question');
        }
        res.send('Question added successfully');
    });
});


app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});
