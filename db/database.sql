CREATE SCHEMA dbquiz;
USE dbquiz;
CREATE TABLE categories (id INT PRIMARY KEY, cat_name VARCHAR(50));
INSERT INTO categories (id, cat_name) VALUES (1, 'General Knowledge'),
(2, 'Science and Nature'),
(3, 'Computer'),
(4, 'Art'),
(5, 'Sports'),
(6, 'History'),
(7, 'Politics'),
(8, 'Mathematics'),
(9, 'Geography');


CREATE TABLE questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    category_id INT,
    answer VARCHAR(250) NOT NULL,
    option1 VARCHAR(250) NOT NULL,
    option2 VARCHAR(250) NOT NULL,
    option3 VARCHAR(250) NOT NULL,
    option4 VARCHAR(250) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

INSERT INTO questions (question_text, category_id, correct_option, option1, option2, option3, option4) VALUES
('What is the capital of France?', 1, 'Paris', 'London', 'Berlin', 'Madrid', 'Paris'),
('Who wrote "Hamlet"?', 1, 'William Shakespeare', 'Charles Dickens', 'William Shakespeare', 'Jane Austen', 'Mark Twain'),
('What is the largest planet in our solar system?', 1, 'Jupiter', 'Earth', 'Mars', 'Jupiter', 'Saturn'),
('What is the chemical symbol for water?', 1, 'H2O', 'O2', 'CO2', 'H2O', 'HO'),
('Who is known as the "Father of Computers"?', 1, 'Charles Babbage', 'Alan Turing', 'Bill Gates', 'Charles Babbage', 'Steve Jobs'),
('Which element has the atomic number 1?', 1, 'Hydrogen', 'Helium', 'Hydrogen', 'Oxygen', 'Carbon'),
('Who painted the "Mona Lisa"?', 1, 'Leonardo da Vinci', 'Vincent van Gogh', 'Pablo Picasso', 'Claude Monet', 'Leonardo da Vinci'),
('What is the smallest country in the world?', 1, 'Vatican City', 'Monaco', 'San Marino', 'Liechtenstein', 'Vatican City'),
('In which year did World War II end?', 1, '1945', '1943', '1944', '1945', '1946'),
('What is the hardest natural substance on Earth?', 1, 'Diamond', 'Gold', 'Diamond', 'Silver', 'Iron'),
('What is the largest ocean on Earth?', 1, 'Pacific Ocean', 'Atlantic Ocean', 'Indian Ocean', 'Pacific Ocean', 'Arctic Ocean'),
('Who was the first man to step on the moon?', 1, 'Neil Armstrong', 'Buzz Aldrin', 'Michael Collins', 'Neil Armstrong', 'Yuri Gagarin'),
('Who invented the telephone?', 1, 'Alexander Graham Bell', 'Thomas Edison', 'Alexander Graham Bell', 'Nikola Tesla', 'Guglielmo Marconi'),
('What is the capital city of Japan?', 1, 'Tokyo', 'Beijing', 'Seoul', 'Tokyo', 'Bangkok'),
('Which planet is known as the Red Planet?', 1, 'Mars', 'Venus', 'Mars', 'Jupiter', 'Saturn'),
('What is the largest mammal in the world?', 1, 'Blue Whale', 'Elephant', 'Blue Whale', 'Giraffe', 'Hippopotamus'),
('Which country is known as the Land of the Rising Sun?', 1, 'Japan', 'China', 'Japan', 'South Korea', 'Thailand'),
('What is the currency of Brazil?', 1, 'Real', 'Peso', 'Real', 'Dollar', 'Euro'),
('Who developed the theory of relativity?', 1, 'Albert Einstein', 'Isaac Newton', 'Galileo Galilei', 'Nikola Tesla', 'Albert Einstein'),
('What is the longest river in the world?', 1, 'Nile', 'Amazon', 'Yangtze', 'Mississippi', 'Nile');
select * from questions;

INSERT INTO questions (question_text, category_id, correct_option, option1, option2, option3, option4) VALUES
('What is the chemical symbol for water?',2, 'O2', 'H2O', 'CO2', 'H2SO4', 'H2O'),
('What planet is known as the Red Planet?', 2,'Venus', 'Mars', 'Jupiter', 'Saturn', 'Mars'),
('What gas do plants absorb from the atmosphere?',2, 'Oxygen', 'Nitrogen', 'Carbon Dioxide', 'Hydrogen', 'Carbon Dioxide'),
('What is the hardest natural substance on Earth?', 2, 'Gold', 'Iron', 'Diamond', 'Silver', 'Diamond'),
('What is the process by which plants make their food?', 2, 'Respiration', 'Photosynthesis', 'Digestion', 'Evaporation', 'Photosynthesis'),
('What is the powerhouse of the cell?', 2, 'Nucleus', 'Mitochondria', 'Ribosome', 'Golgi Apparatus', 'Mitochondria'),
('Which planet is closest to the sun?', 2, 'Earth', 'Venus', 'Mars', 'Mercury', 'Mercury'),
('What is the main gas found in the air we breathe?', 2,  'Oxygen', 'Hydrogen', 'Nitrogen', 'Carbon Dioxide', 'Nitrogen'),
('How many bones are in the human body?', 2, '204', '205', '206', '207', '206'),
('What type of animal is a Komodo dragon?', 2, 'Mammal', 'Bird', 'Reptile', 'Fish', 'Reptile'),
('What is the boiling point of water in Celsius?', 2, '90°C', '95°C', '100°C', '105°C', '100°C'),
('Which organ in the human body is primarily responsible for detoxification?', 2, 'Heart', 'Liver', 'Kidney', 'Lungs', 'Liver'),
('What is the largest planet in our solar system?', 2,  'Earth', 'Mars', 'Jupiter',  'Saturn', 'Jupiter'),
('What element does “O” represent on the periodic table?', 2,  'Osmium', 'Oxygen', 'Oganesson', 'Oxygenium', 'Oxygen'),
('What is the term for animals that are active during the day?', 2, 'Nocturnal', 'Diurnal', 'Crepuscular', 'Matutinal', 'Diurnal'),
('What is the center of an atom called?', 2, 'Electron', 'Proton', 'Nucleus', 'Neutron', 'Nucleus'),
('Which planet is known for having a ring system?', 2, 'Earth', 'Mars', 'Saturn', 'Venus', 'Saturn'),
('What is the common name for the compound NaCl?', 2, 'Sodium Chloride', 'Sodium Carbonate', 'Sodium Hydroxide', 'Sodium Sulfate', 'Sodium Chloride'),
('Which organ is responsible for pumping blood through the body?', 2, 'Brain', 'Liver', 'Heart', 'Lungs', 'Heart'),
('What is the primary source of energy for the Earth?', 2, 'The Moon', 'The Sun', 'Wind', 'Water', 'The Sun');

select * from questions;
select * from categories;

INSERT INTO questions (question_text, category_id, correct_option, option1, option2, option3, option4) VALUES
('What does CPU stand for?', 3, 'Central Processing Unit', 'Central Processing Unit', 'Central Printing Unit', 'Computer Personal Unit', 'Central Power Unit'),
('Which device is used to input data into a computer?', 3, 'Keyboard', 'Monitor', 'Keyboard', 'Printer', 'Speaker'),
('What is the main page of a website called?', 3, 'Homepage', 'Homepage', 'URL', 'Browser', 'Search Engine'),
('What does RAM stand for?', 3, 'Random Access Memory', 'Random Access Memory', 'Read Access Memory', 'Run Access Memory', 'Read-Only Memory'),
('Which key is used to delete a character to the right of the cursor?', 3, 'Delete', 'Backspace', 'Shift', 'Delete', 'End'),
('What is the primary function of an operating system?', 3, 'Manage computer resources', 'Run applications', 'Manage computer resources', 'Provide internet access', 'Perform calculations'),
('Which programming language is known for its use in web development and is abbreviated as JS?', 3, 'JavaScript', 'Java', 'JavaScript', 'Python', 'Ruby'),
('What does HTML stand for?', 3, 'HyperText Markup Language', 'HyperText Markup Language', 'HyperText Machine Language', 'HyperTransfer Markup Language', 'HyperTransfer Machine Language'),
('Which of the following is a popular version control system?', 3, 'Git', 'Subversion', 'Git', 'Mercurial', 'CVS'),
('In computer networking, what does LAN stand for?', 3, 'Local Area Network', 'Large Area Network', 'Local Area Network', 'Linked Area Network', 'Local Access Network'),
('Which protocol is used to securely transmit data over the internet?', 3, 'HTTPS', 'HTTP', 'FTP', 'SMTP', 'HTTPS'),
('What is the purpose of a firewall in computer networks?', 3, 'To prevent unauthorized access', 'To speed up internet access', 'To store data', 'To prevent unauthorized access', 'To connect networks'),
('Which of the following is a NoSQL database?', 3, 'MongoDB', 'MySQL', 'PostgreSQL', 'MongoDB', 'Oracle'),
('What is the time complexity of a binary search algorithm?', 3, 'O(log n)', 'O(n)', 'O(log n)', 'O(n^2)', 'O(1)'),
('Which language is primarily used for statistical computing and graphics?', 3, 'R', 'Python', 'R', 'Java', 'C++'),
('What does the acronym CRUD stand for in database management?', 3, 'Create, Read, Update, Delete', 'Create, Read, Update, Delete', 'Compute, Render, Update, Delete', 'Create, Render, Upload, Delete', 'Compute, Read, Update, Deploy'),
('Which type of machine learning algorithm is used for classification problems?', 3, 'Supervised Learning', 'Unsupervised Learning', 'Supervised Learning', 'Reinforcement Learning', 'Deep Learning'),
('What is the main advantage of using a linked list over an array?', 3, 'Dynamic size', 'Static size', 'Dynamic size', 'Faster access', 'Less memory usage'),
('In computer architecture, what is cache memory used for?', 3, 'To store frequently accessed data', 'To store all data', 'To store frequently accessed data', 'To back up data', 'To increase storage capacity'),
('Which of the following is an example of a functional programming language?', 3, 'Haskell', 'Java', 'Python', 'Haskell', 'C++');

select * from questions;

INSERT INTO questions (question_text, category_id, correct_option, option1, option2, option3, option4) VALUES
('What is the primary color?', 4, 'Red', 'Red', 'Blue', 'Green', 'Yellow'),
('Which artist painted the Mona Lisa?', 4, 'Leonardo da Vinci', 'Vincent van Gogh', 'Pablo Picasso', 'Claude Monet', 'Leonardo da Vinci'),
('What is the art technique using dots to create an image?', 4, 'Pointillism', 'Cubism', 'Surrealism', 'Impressionism', 'Pointillism'),
('Which period is known for its elaborate and ornate art and architecture?', 4, 'Baroque', 'Renaissance', 'Modern', 'Classical', 'Baroque'),
('Who is known as the Father of Modern Art?', 4, 'Paul Cézanne', 'Claude Monet', 'Pablo Picasso', 'Paul Cézanne', 'Henri Matisse'),
('Which famous artist cut off his own ear?', 4, 'Vincent van Gogh', 'Claude Monet', 'Pablo Picasso', 'Salvador Dalí', 'Vincent van Gogh'),
('What is the art movement characterized by abstract forms and bold colors?', 4, 'Abstract Expressionism', 'Surrealism', 'Cubism', 'Realism', 'Abstract Expressionism'),
('What material is commonly used in sculpture?', 4, 'Marble', 'Canvas', 'Watercolor', 'Pastel', 'Marble'),
('Which artist is famous for his Campbells Soup Cans?', 4, 'Andy Warhol', 'Jackson Pollock', 'Roy Lichtenstein', 'Jean-Michel Basquiat', 'Andy Warhol'),
('Which art movement is known for its focus on light and color?', 4, 'Impressionism', 'Cubism', 'Surrealism', 'Expressionism', 'Impressionism'),
('Who painted the ceiling of the Sistine Chapel?', 4, 'Michelangelo', 'Leonardo da Vinci', 'Raphael', 'Donatello', 'Michelangelo'),
('Which artist is known for the painting "The Starry Night"?', 4, 'Vincent van Gogh', 'Claude Monet', 'Henri Matisse', 'Paul Gauguin', 'Vincent van Gogh'),
('What is the term for a painting created using pigment mixed with water on wet plaster?', 4, 'Fresco', 'Oil Painting', 'Tempera', 'Acrylic', 'Fresco'),
('Which of the following is a famous surrealist artist?', 4, 'Salvador Dalí', 'Claude Monet', 'Paul Cézanne', 'Gustav Klimt', 'Salvador Dalí'),
('What style of art is Pablo Picasso famous for?', 4, 'Cubism', 'Impressionism', 'Surrealism', 'Realism', 'Cubism'),
('Which artist is known for his "Blue Period"?', 4, 'Pablo Picasso', 'Vincent van Gogh', 'Claude Monet', 'Paul Gauguin', 'Pablo Picasso'),
('What is the term for a three-dimensional work of art?', 4, 'Sculpture', 'Mosaic', 'Drawing', 'Collage', 'Sculpture'),
('Which art movement did Claude Monet belong to?', 4, 'Impressionism', 'Cubism', 'Surrealism', 'Realism', 'Impressionism'),
('Who painted "The Persistence of Memory"?', 4, 'Salvador Dalí', 'Pablo Picasso', 'Vincent van Gogh', 'Andy Warhol', 'Salvador Dalí'),
('Which artist is known for his drip paintings?', 4, 'Jackson Pollock', 'Claude Monet', 'Henri Matisse', 'Edvard Munch', 'Jackson Pollock');

select * from questions;

INSERT INTO questions (question_text, category_id, correct_option, option1, option2, option3, option4) VALUES
('How many players are there on a soccer team?', 5, '11', '9', '10', '11', '12'),
('In which sport is a shuttlecock used?', 5, 'Badminton', 'Tennis', 'Squash', 'Table Tennis', 'Badminton'),
('Which country won the FIFA World Cup in 2018?', 5, 'France', 'Germany', 'Brazil', 'Argentina', 'France'),
('What is the length of an Olympic swimming pool?', 5, '50 meters', '25 meters', '100 meters', '75 meters', '50 meters'),
('Which sport is known as "the sport of kings"?', 5, 'Polo', 'Tennis', 'Cricket', 'Golf', 'Polo'),
('In which sport would you perform a slam dunk?', 5, 'Basketball', 'Volleyball', 'Soccer', 'Baseball', 'Basketball'),
('How many Grand Slam tennis tournaments are held each year?', 5, '4', '2', '3', '4', '5'),
('Which country is famous for the sport of sumo wrestling?', 5, 'Japan', 'China', 'South Korea', 'Thailand', 'Japan'),
('What is the term for a score of one under par on a golf hole?', 5, 'Birdie', 'Eagle', 'Bogey', 'Par', 'Birdie'),
('Which athlete has won the most Olympic medals?', 5, 'Michael Phelps', 'Usain Bolt', 'Larisa Latynina', 'Simone Biles', 'Michael Phelps'),
('In which sport do teams compete for the Stanley Cup?', 5, 'Ice Hockey', 'Basketball', 'Baseball', 'Football', 'Ice Hockey'),
('Which country has won the most Cricket World Cups?', 5, 'Australia', 'India', 'England', 'West Indies', 'Australia'),
('What is the maximum score in a single frame of ten-pin bowling?', 5, '30', '20', '15', '25', '30'),
('Who holds the record for the most home runs in a single MLB season?', 5, 'Barry Bonds', 'Babe Ruth', 'Mark McGwire', 'Sammy Sosa', 'Barry Bonds'),
('Which female tennis player has won the most Grand Slam titles?', 5, 'Margaret Court', 'Serena Williams', 'Steffi Graf', 'Martina Navratilova', 'Margaret Court'),
('In which year were the first modern Olympic Games held?', 5, '1896', '1900', '1884', '1912', '1896'),
('Which team won the first Super Bowl?', 5, 'Green Bay Packers', 'Kansas City Chiefs', 'New York Giants', 'Dallas Cowboys', 'Green Bay Packers'),
('Who is known as "The Lightning Bolt" in track and field?', 5, 'Usain Bolt', 'Carl Lewis', 'Justin Gatlin', 'Yohan Blake', 'Usain Bolt'),
('What is the highest possible break in snooker?', 5, '147', '155', '150', '160', '147'),
('Which country won the first FIFA Women World Cup?', 5, 'USA', 'Germany', 'Norway', 'China', 'USA');

INSERT INTO questions (question_text, category_id, correct_opti, option1, option2, option3, option4) VALUES
('Who was the first President of the United States?', 6, 'George Washington', 'Thomas Jefferson', 'John Adams', 'Benjamin Franklin', 'George Washington'),
('Which ancient civilization built the pyramids?', 6, 'Ancient Egyptians', 'Ancient Greeks', 'Mayans', 'Romans', 'Ancient Egyptians'),
('In what year did World War II end?', 6, '1945', '1943', '1947', '1950', '1945'),
('Who was the first emperor of Rome?', 6, 'Augustus', 'Julius Caesar', 'Nero', 'Trajan', 'Augustus'),
('Which European explorer reached the Americas in 1492?', 6, 'Christopher Columbus', 'Amerigo Vespucci', 'Ferdinand Magellan', 'Marco Polo', 'Christopher Columbus'),
('Which battle is considered the turning point of the American Civil War?', 6, 'Battle of Gettysburg', 'Battle of Antietam', 'Battle of Bull Run', 'Battle of Vicksburg', 'Battle of Gettysburg'),
('Who wrote the Communist Manifesto?', 6, 'Karl Marx and Friedrich Engels', 'Vladimir Lenin', 'Joseph Stalin', 'Leon Trotsky', 'Karl Marx and Friedrich Engels'),
('Which ancient wonder of the world was located in Babylon?', 6, 'Hanging Gardens', 'Great Pyramid of Giza', 'Colossus of Rhodes', 'Lighthouse of Alexandria', 'Hanging Gardens'),
('Which famous leader is associated with the phrase "I came, I saw, I conquered"?', 6, 'Julius Caesar', 'Alexander the Great', 'Napoleon Bonaparte', 'Genghis Khan', 'Julius Caesar'),
('Who was the first female Prime Minister of the United Kingdom?', 6, 'Margaret Thatcher', 'Theresa May', 'Indira Gandhi', 'Angela Merkel', 'Margaret Thatcher'),
('What year did the Berlin Wall fall?', 6, '1989', '1991', '1985', '1990', '1989'),
('Which civilization developed the first known system of writing?', 6, 'Sumerians', 'Ancient Egyptians', 'Minoans', 'Indus Valley Civilization', 'Sumerians'),
('Who was the longest-reigning monarch in British history?', 6, 'Queen Victoria', 'King George III', 'Queen Elizabeth II', 'King Henry VIII', 'Queen Victoria'),
('Which famous explorer was the first to circumnavigate the globe?', 6, 'Ferdinand Magellan', 'Vasco da Gama', 'Christopher Columbus', 'James Cook', 'Ferdinand Magellan'),
('Who was the first woman to win a Nobel Prize?', 6, 'Marie Curie', 'Rosalind Franklin', 'Ada Lovelace', 'Jane Goodall', 'Marie Curie'),
('Which empire was responsible for the construction of the Taj Mahal?', 6, 'Mughal Empire', 'Ottoman Empire', 'British Empire', 'Roman Empire', 'Mughal Empire'),
('Who was the first African-American President of the United States?', 6, 'Barack Obama', 'Martin Luther King Jr.', 'Nelson Mandela', 'Malcolm X', 'Barack Obama'),
('What event marked the beginning of World War I?', 6, 'Assassination of Archduke Franz Ferdinand', 'Bombing of Pearl Harbor', 'Treaty of Versailles', 'Russian Revolution', 'Assassination of Archduke Franz Ferdinand'),
('Which ancient civilization is credited with the invention of democracy?', 6, 'Ancient Greeks', 'Ancient Romans', 'Ancient Egyptians', 'Ancient Chinese', 'Ancient Greeks'),
('Who was the founder of the Mongol Empire?', 6, 'Genghis Khan', 'Kublai Khan', 'Attila the Hun', 'Tamerlane', 'Genghis Khan'),
('Which treaty ended World War I?', 6, 'Treaty of Versailles', 'Treaty of Paris', 'Treaty of Brest-Litovsk', 'Treaty of Trianon', 'Treaty of Versailles');

INSERT INTO questions (question_text, category_id, correct_option, option1, option2, option3, option4) VALUES
('Who is the current President of the United States?', 7, 'Joe Biden', 'Donald Trump', 'Barack Obama', 'George W. Bush', 'Joe Biden'),
('What is the capital of France?', 7, 'Paris', 'Berlin', 'London', 'Madrid', 'Paris'),
('In what year was the United Nations founded?', 7, '1945', '1919', '1939', '1955', '1945'),
('What is the name of the political party founded by Abraham Lincoln?', 7, 'Republican Party', 'Democratic Party', 'Libertarian Party', 'Green Party', 'Republican Party'),
('Which country has the largest population in the world?', 7, 'China', 'India', 'United States', 'Russia', 'China'),
('Who is the current Prime Minister of the United Kingdom?', 7, 'Boris Johnson', 'Theresa May', 'David Cameron', 'Tony Blair', 'Boris Johnson'),
('What is the name of the group of countries that use the euro as their official currency?', 7, 'Eurozone', 'G7', 'European Union', 'NATO', 'Eurozone'),
('What is the main governing body of the European Union?', 7, 'European Commission', 'European Parliament', 'European Council', 'European Central Bank', 'European Commission'),
('Who was the first female Prime Minister of India?', 7, 'Indira Gandhi', 'Sonia Gandhi', 'Priyanka Gandhi', 'Mayawati', 'Indira Gandhi'),
('What is the capital of Australia?', 7, 'Canberra', 'Sydney', 'Melbourne', 'Brisbane', 'Canberra'),
('What is the term for a system of government in which power is held by the people?', 7, 'Democracy', 'Monarchy', 'Dictatorship', 'Oligarchy', 'Democracy'),
('Who was the first President of Russia?', 7, 'Boris Yeltsin', 'Vladimir Putin', 'Mikhail Gorbachev', 'Dmitry Medvedev', 'Boris Yeltsin'),
('What is the name of the official residence of the President of the United States?', 7, 'The White House', 'The Capitol', 'The Pentagon', 'Camp David', 'The White House'),
('Which country is not a permanent member of the United Nations Security Council?', 7, 'Germany', 'Russia', 'China', 'France', 'Germany'),
('What is the highest court in the United States?', 7, 'Supreme Court', 'District Court', 'Appellate Court', 'Federal Court', 'Supreme Court'),
('Who is the current Chancellor of Germany?', 7, 'Angela Merkel', 'Gerhard Schröder', 'Helmut Kohl', 'Wilhelm Frick', 'Angela Merkel'),
('What is the name of the treaty that created the European Union?', 7, 'Treaty of Maastricht', 'Treaty of Rome', 'Treaty of Lisbon', 'Treaty of Paris', 'Treaty of Maastricht'),
('Which political philosopher is known for his work "The Republic"?', 7, 'Plato', 'Aristotle', 'John Locke', 'Jean-Jacques Rousseau', 'Plato'),
('Who is the longest-serving President of the United States?', 7, 'Franklin D. Roosevelt', 'George Washington', 'Abraham Lincoln', 'Thomas Jefferson', 'Franklin D. Roosevelt'),
('What is the name of the process by which a bill becomes a law in the United States?', 7, 'Legislative Process', 'Executive Order', 'Judicial Review', 'Amendment Process', 'Legislative Process');

INSERT INTO questions (question_text, category_id, correct_option, option1, option2, option3, option4) VALUES
('What is the result of 2 + 2?', 8, '4', '3', '5', '6', '4'),
('What is the square root of 25?', 8, '5', '4', '6', '7', '5'),
('What is the value of π (pi) to two decimal places?', 8, '3.14', '3.16', '3.12', '3.18', '3.14'),
('What is the formula for the area of a rectangle?', 8, 'Length × Width', '2 × (Length + Width)', 'Length ÷ Width', 'Length + Width', 'Length × Width'),
('What is the result of 7 × 8?', 8, '56', '49', '64', '42', '56'),
('What is the next number in the Fibonacci sequence: 1, 1, 2, 3, 5, ...?', 8, '8', '7', '9', '10', '8'),
('What is the formula for the circumference of a circle?', 8, '2 × π × radius', 'π × radius^2', 'π × diameter', '2 × radius', '2 × π × radius'),
('What is the result of 12 ÷ 3?', 8, '4', '3', '5', '6', '4'),
('What is the sum of the interior angles of a triangle?', 8, '180 degrees', '90 degrees', '270 degrees', '360 degrees', '180 degrees'),
('What is the value of 5 squared?', 8, '25', '20', '30', '15', '25'),
('What is the formula for the volume of a sphere?', 8, '4/3 × π × radius^3', 'π × radius^2', '2 × π × radius', '4 × π × radius^2', '4/3 × π × radius^3'),
('What is the result of 9 - 4?', 8, '5', '4', '6', '3', '5'),
('What is the equation of a line in slope-intercept form?', 8, 'y = mx + b', 'x = my + b', 'y = mx - b', 'x = my - b', 'y = mx + b'),
('What is the value of log10(100)?', 8, '2', '10', '1', '100', '2'),
('What is the result of 3 × (4 + 2)?', 8, '18', '15', '12', '9', '18'),
('What is the area of a circle with radius 7 units?', 8, '154 square units', '98 square units', '196 square units', '112 square units', '154 square units'),
('What is the result of 6 squared?', 8, '36', '30', '40', '25', '36'),
('What is the formula for the perimeter of a rectangle?', 8, '2 × (Length + Width)', 'Length × Width', '2 × Length × Width', 'Length + Width', '2 × (Length + Width)'),
('What is the value of sin(90 degrees)?', 8, '1', '0', '-1', 'Undefined', '1'),
('What is the result of 15 ÷ 5?', 8, '3', '4', '2', '5', '3');



INSERT INTO questions (question_text, category_id, correct_option, option1, option2, option3, option4) VALUES
('What is the capital of France?', 9, 'Paris', 'London', 'Berlin', 'Rome', 'Paris'),
('Which is the largest ocean on Earth?', 9, 'Pacific Ocean', 'Atlantic Ocean', 'Indian Ocean', 'Arctic Ocean', 'Pacific Ocean'),
('What is the tallest mountain in the world?', 9, 'Mount Everest', 'K2', 'Kangchenjunga', 'Lhotse', 'Mount Everest'),
('Which river is the longest in the world?', 9, 'Nile River', 'Amazon River', 'Yangtze River', 'Mississippi River', 'Nile River'),
('Which country is known as the Land of the Rising Sun?', 9, 'Japan', 'China', 'South Korea', 'Vietnam', 'Japan'),
('Which continent is the largest by land area?', 9, 'Asia', 'Africa', 'North America', 'South America', 'Asia'),
('What is the capital of Australia?', 9, 'Canberra', 'Sydney', 'Melbourne', 'Brisbane', 'Canberra'),
('Which desert is the largest in the world?', 9, 'Sahara Desert', 'Arabian Desert', 'Gobi Desert', 'Kalahari Desert', 'Sahara Desert'),
('What is the longest river in Europe?', 9, 'Volga River', 'Danube River', 'Rhine River', 'Seine River', 'Volga River'),
('Which country is known as the Land of a Thousand Lakes?', 9, 'Finland', 'Sweden', 'Norway', 'Canada', 'Finland'),
('Which mountain range is located between Europe and Asia?', 9, 'Ural Mountains', 'Himalayas', 'Andes Mountains', 'Rocky Mountains', 'Ural Mountains'),
('What is the largest country by land area?', 9, 'Russia', 'Canada', 'China', 'United States', 'Russia'),
('Which is the driest desert in the world?', 9, 'Atacama Desert', 'Sahara Desert', 'Gobi Desert', 'Arabian Desert', 'Atacama Desert'),
('Which city is located at the mouth of the Amazon River?', 9, 'Belem', 'Manaus', 'Rio de Janeiro', 'Santarem', 'Belem'),
('Which country is known as the Land of the Midnight Sun?', 9, 'Norway', 'Iceland', 'Sweden', 'Finland', 'Norway'),
('What is the largest island in the world?', 9, 'Greenland', 'Australia', 'Borneo', 'Madagascar', 'Greenland'),
('Which is the largest lake in Africa?', 9, 'Lake Victoria', 'Lake Tanganyika', 'Lake Malawi', 'Lake Chad', 'Lake Victoria'),
('Which is the highest waterfall in the world?', 9, 'Angel Falls', 'Niagara Falls', 'Victoria Falls', 'Iguazu Falls', 'Angel Falls'),
('Which is the largest city by population in the world?', 9, 'Tokyo', 'Shanghai', 'Beijing', 'Delhi', 'Tokyo'),
('Which country is known as the Land of Fire and Ice?', 9, 'Iceland', 'Greenland', 'Norway', 'Finland', 'Iceland');

select * from questions;

DELETE FROM questions WHERE id > 40 AND category_id =2;

select * from questions;

SELECT MAX(id) from questions;

ALTER TABLE questions auto_increment = 201 + 1;
SELECT * FROM  questions;









