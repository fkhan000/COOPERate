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
VALUES ('dooper15', 'dooper@cooper.edu', 'password12');
INSERT INTO USERS (username, email_address, hashed_password)
VALUES ('malone32', 'malone@cooper.edu', 'password12');
INSERT INTO USERS (username, email_address, hashed_password)
VALUES ('bob545', 'bob@cooper.edu', 'password12');
INSERT INTO USERS (username, email_address, hashed_password)
VALUES ('carl24', 'carl@cooper.edu', 'password12');
INSERT INTO USERS (username, email_address, hashed_password)
VALUES ('fayesl4', 'fayes@cooper.edu', 'password12');


INSERT INTO PROFESSOR (prof_name, descrip)
VALUES ('Christopher Hong', 'Christopher Hong is an adjunct professor at The Cooper Union, where he teaches courses in computer science such as Software Engineering and Intro to Computer Science.');
INSERT INTO PROFESSOR (prof_name, descrip)
VALUES ('Sam Keene', 'Sam Keene is an associate professor of electrical engineering at The Cooper Union. His research interests include wireless communication and networks, signal processing, machine learning and data science.');
INSERT INTO PROFESSOR (prof_name, descrip)
VALUES ('Fred Fontaine', 'Fred L. Fontaine is a professor and the Jesse Sherman Chair of Electrical Engineering at The Cooper Union in New York. His expertise includes statistical methods, machine learning, adaptive and robust algorithms, with applications including image and video processing, time-series analysis (e.g., financial and bio-signals), sensor array processing and communications. ');
INSERT INTO PROFESSOR (prof_name, descrip)
VALUES ('Jeff Hakner', 'At The Cooper Union, Jeff Hakner serves as the Assistant Director of Networking and Telecommunications and is also an Adjunct Professor in the Electrical Engineering department. Additionally, he has contributed to the Cooper Union Archives & Special Collections, where a set of protocols for the construction of distributed, embedded control systems, which he presented, is documented.');
INSERT INTO PROFESSOR (prof_name, descrip)
VALUES ('Stanislav Mintchev', 'Stanislav Mintchev is an Associate Professor of Mathematics at The Cooper Union. He specializes in applied dynamical systems, utilizing numerical methods and analytical techniques to study models inspired by biological and physical systems.');
INSERT INTO PROFESSOR (prof_name, descrip)
VALUES ('Carl Sable', 'Carl Sable is a full faculty professor at the Cooper Union who has taught many of the requried courses in the Computer Engineering track. His primary interests are in Natural Language Processing and Machine Learning');
INSERT INTO PROFESSOR (prof_name, descrip)
VALUES ('Om Agrawal', 'Om Agrawal is a professor and former chair of the math department at The Cooper Union: https://www.youtube.com/watch?v=fm6EtsNsqGc');
INSERT INTO PROFESSOR (prof_name, descrip)
VALUES ('Abigail Raz', 'Abigail Raz is an assistant professor of Mathematics at The Cooper Union. Her research is focused in extremal and probabilistic combinatorics as well as graph theory.');



INSERT INTO COURSE (course_name, descrip)
VALUES ('Software Engineering', 'This course teaches about the development stages of large, robust, expandable software systems developed as part of a team. Topics include project management, capturing requirements, system design, UML, program design, testing, delivery and maintenance. The class will develop a large project as a team using Java throughout the semester.');
INSERT INTO COURSE (course_name, descrip)
VALUES ('Communication Theory', 'Information theory: entropy, information, channel capacity, rate-distortion functions, theoretical limits to data transmission and compression. Error control coding: block, cyclic and convolutional codes, Viterbi algorithm. Baseband and bandpass signals, signal constellations, noise and channel models. Analog and digital modulation formats (amplitude, phase and frequency), MAP and ML receivers, ISI and equalization.');
INSERT INTO COURSE (course_name, descrip)
VALUES ('Data Structures & Algorithms I', 'An introduction to fundamental data structures and algorithms, with an emphasis on practical implementation issues and good programming methodology. Topics include lists, stacks, queues, trees, hash tables and sorting algorithms. Also an introduction to analysis of algorithms with big-O notation. Assignments include programming projects and problem sets.');
INSERT INTO COURSE (course_name, descrip)
VALUES ('Data Structures & Algorithms II', 'A continuation of ECE 264, also with an emphasis on practical implementation issues and good programming methodology. Topics include graphs, graph-related algorithms and dynamic programming techniques. Also an introduction to some advanced topics such as Turing machines, computability and NP-complete systems. Assignments include programming projects and problem sets.');
INSERT INTO COURSE (course_name, descrip)
VALUES ('Digital Signals Processing', 'Review of Laplace and z-transforms. Minimum-phase and all-pass functions. Multidimensional signals, systems and Fourier analysis. Analog filter design, digital IIR and FIR filter design. Sampling, multirate systems and filterbanks, A/D and D/A converter models. Discrete-time state-space. Filter structures, quantization effects and design to mitigate quantization effects. DFT and FFT. Spectral analysis of deterministic and random signals. Introduction to adaptive filters. Differential coding, transform coding. Speech, audio and video signals. Extensive use of MATLAB.');
INSERT INTO COURSE (course_name, descrip)
VALUES ('Differential Equations', 'Ordinary differential equations of the first order, linear equations of higher order with constant coefficients, eigenvalues and eigenvectors, first-order systems of linear equations, phase plane analysis for nonlinear two-dimensional systems, Laplace transformation, and Fourier series.');
INSERT INTO COURSE (course_name, descrip)
VALUES ('Discrete Mathematics', 'Relations. Mathematical structures. Number theory. Algorithms. Complexity of algorithms. Cryptology. Recurrence relations. Graph theory. A shortest-path algorithm. Planar graphs. Trees. A maximal flow algorithm. Finite-state automata. Languages and grammar. Turing machines. The Church-Turing thesis. Unsolvable problems.');
INSERT INTO COURSE (course_name, descrip)
VALUES ('Linear Algebra', 'Vectors in two- and three-dimensions, vector algebra, inner product, cross product and applications, analytic geometry in three dimensions (lines, planes, spheres); matrix algebra, the solution of systems of linear equations, determinants, inverses, and basic properties of the complex number system.');
INSERT INTO COURSE (course_name, descrip)
VALUES ('Computer Operating Systems', 'Theory and implementation of modern computer operating systems. Message based and multiprocessor kernels. Networking and interprocess communication. Security, auditing and authentication. Device drivers, interrupt handling, task switching, virtual memory, memory management, scheduling, synchronization and locking. File systems, resource allocation and management. Real-time, fault-tolerant and high security operating systems. User environment and interface issues. Projects in operating system design and programming, case studies.');



/*

INSERT INTO Reviews (course_id, prof_id, user_id, course_name, prof_name, username, orig_karma, review, course_rating, prof_rating)
SELECT
    cp.course_id,
    cp.prof_id,
    u.id AS user_id,
    CASE cp.course_id
        WHEN 10000 THEN 'Software Engineering'
        WHEN 10001 THEN 'Communication Networks'
        WHEN 10002 THEN 'Probability Models & Stochastic Processes'
        WHEN 10003 THEN 'Integrated Circuit Engineering'
        WHEN 10004 THEN 'Digital Signals Processing'
    END AS course_name,
    CASE cp.prof_id
        WHEN 10000 THEN 'Christopher Hong'
        WHEN 10001 THEN 'Sam Keene'
        WHEN 10002 THEN 'Jabeom Koo'
        WHEN 10003 THEN 'Fred Fontaine'
        ELSE 'Unknown' -- Provide a default value in case prof_id does not match any known professor
    END AS prof_name,
    plp.username AS username, -- Replace with actual usernames if available
    20.0 AS orig_karma, -- Assuming all users have a default karma of 20
    rt.review AS review_text,
    RANDOM() * 5 AS course_rating, -- Random rating between 0 and 5
    RANDOM() * 5 AS prof_rating -- Random rating between 0 and 5
FROM
    (VALUES
        ('sam123'),
        ('rowdley212'),
        ('jack13'),
        ('bob14'),
        ('cooper11'),
        ('dooper11')
    ) AS plp(username),
    (VALUES
        ('loved it!'),
        ('hated it!'),
        ('awesome class'),
        ('fuck motherfucker'),
        ('best class ever'),
        ('sex alot of random censored words')
    ) AS rt(review),
    (VALUES
        (10000, 10000),
        (10001, 10001),
        (10001, 10002),
        (10002, 10003),
        (10003, 10004)
    ) AS cp(prof_id, course_id),
    (SELECT generate_series(10000, 10005) AS id) AS u
WHERE NOT EXISTS (
    SELECT 1
    FROM Reviews r
    WHERE r.course_id = cp.course_id
      AND r.user_id = u.id
);

*/
