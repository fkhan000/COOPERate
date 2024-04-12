\c cooperate;
INSERT INTO USERS (username, email_address, hashed_password)
VALUES ('sam123', 'sam12@cooper.edu', 'password456');
INSERT INTO USERS (username, email_address, hashed_password)
VALUES ('rowdley212', 'rowdley@cooper.edu', 'password123');
INSERT INTO USERS (username, email_address, hashed_password)
VALUES ('jack13', 'jack@cooper.edu', 'password12');
INSERT INTO USERS (username, email_address, hashed_password)
VALUES ('bob14', 'bob@cooper.edu', 'password12');
INSERT INTO USERS (username, email_address, hashed_password)
VALUES ('cooper11', 'cooper@cooper.edu', 'password12');
INSERT INTO USERS (username, email_address, hashed_password)
VALUES ('dooper11', 'dooper@cooper.edu', 'password12');
INSERT INTO PROFESSOR (prof_name, descrip)
VALUES ('Christopher Hong', 'EE Professor teaches Sofware Engineering');
INSERT INTO PROFESSOR (prof_name, descrip)
VALUES ('Sam Keene', 'EE Professor teaches Communication Networks and Probability & Stochastic Models');
INSERT INTO PROFESSOR (prof_name, descrip)
VALUES ('Fred Fontaine', 'EE Professor teaches Digital Signals Processing');
INSERT INTO PROFESSOR (prof_name, descrip)
VALUES ('Jabeom Koo', 'EE Professor teaches Integrated Circuit Engineering');
INSERT INTO COURSE (course_name, descrip)
VALUES ('Software Engineering', 'A course where students engineer software');
INSERT INTO COURSE (course_name, descrip)
VALUES ('Communication Networks', 'A course where students learn about how networks communicate with one another');
INSERT INTO COURSE (course_name, descrip)
VALUES ('Probability Models & Stochastic Processes', 'A course where students learn how to model stochastics');
INSERT INTO COURSE (course_name, descrip)
VALUES ('Integrated Circuit Engineering', 'A course where students engineer circuits of the integrated nature');
INSERT INTO COURSE (course_name, descrip)
VALUES ('Digital Signals Processing', 'A course where students learn to process signals digitally');

-- Insert random users
INSERT INTO Users (username, email_address, hashed_password)
VALUES
    ('user1', 'user1@example.com', 'password1'),
    ('user2', 'user2@example.com', 'password2'),
    ('user3', 'user3@example.com', 'password3'),
    ('user4', 'user4@example.com', 'password4'),
    ('user5', 'user5@example.com', 'password5'),
    ('user6', 'user6@example.com', 'password6'),
    ('user7', 'user7@example.com', 'password7'),
    ('user8', 'user8@example.com', 'password8'),
    ('user9', 'user9@example.com', 'password9'),
    ('user10', 'user10@example.com', 'password10');

-- Insert random courses
INSERT INTO Course (course_name, descrip, rating, total_rating)
VALUES
    ('Mathematics', 'Introduction to Mathematics', 4.5, 100),
    ('Physics', 'Introduction to Physics', 4.2, 98),
    ('Biology', 'Introduction to Biology', 4.7, 105),
    ('Chemistry', 'Introduction to Chemistry', 4.3, 92),
    ('Computer Science', 'Introduction to Computer Science', 4.6, 110),
    ('History', 'Introduction to History', 4.8, 115),
    ('Literature', 'Introduction to Literature', 4.4, 105),
    ('Art', 'Introduction to Art', 4.1, 90),
    ('Music', 'Introduction to Music', 4.9, 120),
    ('Psychology', 'Introduction to Psychology', 4.7, 108);

-- Insert random professors
INSERT INTO Professor (prof_name, descrip, rating, total_rating)
VALUES
    ('Dr. Smith', 'Professor of Mathematics', 4.5, 100),
    ('Dr. Johnson', 'Professor of Physics', 4.2, 98),
    ('Dr. Williams', 'Professor of Biology', 4.7, 105),
    ('Dr. Jones', 'Professor of Chemistry', 4.3, 92),
    ('Dr. Brown', 'Professor of Computer Science', 4.6, 110),
    ('Dr. Davis', 'Professor of History', 4.8, 115),
    ('Dr. Miller', 'Professor of Literature', 4.4, 105),
    ('Dr. Wilson', 'Professor of Art', 4.1, 90),
    ('Dr. Moore', 'Professor of Music', 4.9, 120),
    ('Dr. Taylor', 'Professor of Psychology', 4.7, 108);

