import requests
import random
import os


initializer_script = os.path.abspath(os.path.join("..", "..", "Database", "cooperate.sql"))
populate_script = os.path.abspath(os.path.join("..", "..", "Database", "populate.sql"))
os.system("psql -h localhost -U postgres -a -f " + initializer_script)
os.system("psql -h localhost -U postgres -a -f " + populate_script)

url = "http://localhost:8080/makeReview"

reviewBank = [("loved it!",4, 4), ("hated it!", 1, 2), ("awesome class", 4, 5), ("decent class", 3, 4),
              ("best class ever", 5,5), ("worst class", 1, 1)]



teaches = {"Christopher Hong": ["Software Engineering"],
           "Sam Keene": ["Communication Theory", "Digital Signals Processing"],
           "Jeff Hakner": ["Computer Operating Systems"],
           "Carl Sable": ["Data Structures & Algorithms I", "Data Structures & Algorithms II"],
           "Stanislav Mintchev": ["Linear Algebra", "Differential Equations", "Discrete Mathematics"],
           "Om Agrawal": ["Differential Equations"],
           "Abigail Raz": ["Discrete Mathematics"],
           "Fred Fontaine": ["Communication Theory", "Digital Signals Processing"]}


courses = dict(zip(["Software Engineering", "Communication Theory", "Data Structures & Algorithms I", "Data Structures & Algorithms II",
            "Digital Signals Processing", "Differential Equations", "Discrete Mathematics", "Linear Algebra", "Computer Operating Systems"], list(range(10000, 10009))))

profs = dict(zip(['Christopher Hong', 'Sam Keene', 'Fred Fontaine', 'Jeff Hakner', 'Stanislav Mintchev', 'Carl Sable', 'Om Agrawal', 'Abigail Raz'],
                 list(range(10000, 10008))))


userBank = list(range(10000, 10010))

for user in userBank:
    for professor in teaches:

        for course in teaches[professor]:

            review = random.choice(reviewBank)
            course_rating = review[1]
            prof_rating = review[2]
            review = review[0]

            course_id = courses[course]
            prof_id = profs[professor]

            json = {"reviewer_id": str(user),
                "course_id": str(course_id),
                "prof_id": str(prof_id),
                "prof_rating": str(prof_rating),
                "course_name": course,
                "prof_name": professor,
                "course_rating": str(course_rating),
                "review": review,
                "syllabus_link": "",
                "exam_link": ""
                }
            print(requests.post(url, json = json))
        
