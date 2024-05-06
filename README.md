# COOPERate

Welcome to our repository for our project for ECE-366 Software Engineering! For our project, we are creating COOPERate: a website that allows Cooper Union students to anonymously post reviews on courses and professors that they had as well as upload helpful documents such as syllabi and past exams. While other websites such as ratemyprofessor.com perform a similar function, because of how small Cooper is, many of our professors have little to no reviews on them. As a result, many Cooper students end up taking classes with not much of an idea of what they will be like. By creating a website specifically catered to Cooper Union students, we hope to create a platform that allows Cooper Union students to help their peers be more informed about the courses that they plan on taking.


## Backend Demo 3/4/24

To run our demo for the backend, please follow the instructions given below:

- Install the latest version of docker desktop: https://docs.docker.com/desktop/install/windows-install/
- From your terminal, cd into the cooperate directory where the dockerfile is located.
- Open up docker desktop and enter in the following command into the terminal: docker compose build
- Once the docker images have been built, enter in the following command: docker compose up
- In a separate terminal, cd into the cooperate/Demo directory
- Run the populate.py file. This will create the tables for our database and populate our database
- Finally, to run our text based demo, run the text_ui.py file and you're good to go!

<img width="773" alt="UI_frontpage" src="https://github.com/fkhan000/COOPERate/assets/78983433/3d259d6c-558d-498d-8e00-cd83f0866099">


## Local Working Project Demo 4/15/24

To run this demo, please follow the instructions given below:

- Install the latest version of docker desktop: https://docs.docker.com/desktop/install/windows-install/
- From your terminal, cd into the cooperate directory where the dockerfile is located.
- Open up docker desktop and enter in the following command into the terminal: docker compose build
- Once the docker images have been built, enter in the following command: docker compose up
- In a separate terminal, cd into the cooperate/backend/Demo directory
- Run the populate.py file. This will create the tables for our database and populate our database (when it prompts you for the password, please enter in password)
- Finally, once everything is running, you can open up a browser and go to localhost:3000 to start looking through our website

<img width="773" alt="image" src="https://github.com/fkhan000/COOPERate/assets/78983433/1a6cbfb9-d934-48af-87bc-23b8db510edd">


## Code Of Ethics 5/5/2024
1. Public   
 - 1.01: Moderate the interests of the software engineer, the employer, the client and the users with the public good. 
 We act consistently with the public interest by providing a platform that enhances the educational experience at Cooper Union. COOPERate balances the interests of students (users), the academic 
 institution, and the broader educational community by providing a resource that supports informed academic choices, enhancing overall educational quality. 
 - 1.06. Be fair and avoid deception in all statements. 
 Our app promotes fairness by implementing a karma system to prevent the influence of biased reviews and ensuring all reviews are from verified students.  
 - 1.07. Consider accessibility and resource allocation. 
 COOPERate is designed specifically for Cooper Union students, considering the unique needs and resource constraints of this smaller academic community. 
 - 1.08. Volunteer professional skills to good causes. 
 By developing COOPERate, we volunteer our software engineering skills to improve the academic environment at Cooper Union, serving as a form of educational aid. 
 
 
2. Client and Employer  
 - 2.01 Provide service in their areas of competence, being honest and forthright about any limitations of their experience and education. 
 Our team, made up of students from The Cooper Union, develops the app within their areas of academic and technical expertise, ensuring competent and reliable service. By consulting with our professor, we 
 maintain our professional competence and ensure compliance with industry standards. 
 
3. Product   
 - 3.10. Ensure adequate testing, debugging, and review of software. 
 COOPERate underwent thorough testing and debugging processes to ensure that the app functions correctly and securely. 
 - 3.12. Work to develop software and related documents that respect the privacy of those who will be affected by that software. 
 Privacy is a core component of COOPERate, with measures in place to ensure that user data is handled securely (our login system that only accepts passwords with at least one capital letter and one special 
 character) and in compliance with privacy standards. 
 
5. Management   
 - 5.01 Ensure good management for any project on which they work, including effective procedures for promotion of quality and reduction of risk. 
 Our team structure and management practices are designed to promote ethical software development and maintain responsibility for our work. Our team adheres to ethical management practices. We ensure 
 accountability and promote collaborative development through the use of pull requests, which keeps our project aligned with high ethical standards. 
 
6. Profession   
 - 6.02. Promote public knowledge of software engineering. 
 By developing COOPERate, we contribute to the public knowledge of software engineering within the academic context, demonstrating practical applications of technical skills in real-world scenarios. 
 - 6.08. Take responsibility for detecting, correcting, and reporting errors in software and associated documents on which they work. 
 We have been proactively managing any errors in our app through regular testing to ensure early detection of potential problems. 
 
 
7. Colleagues   
 - 7.02. Assist colleagues in professional development. 
 By tailoring a solution to meet the specific needs of our small academic community and improving upon existing review platforms, we contribute to helping our colleagues advance in their education and   
 careers. The collaborative development process of COOPERate also aids in the professional development of each team member, sharing knowledge and skills among peers. 
 
 
8. Self  
 - 8.02. Further their knowledge of developments in the software profession 
 Through the development and continuous improvement of COOPERate, we engage in lifelong learning, enhancing our software engineering skills and ethical understanding by consulting with experts (Professor  
 Hong) and continuously improving our application based on feedback. 
