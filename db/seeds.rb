# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

teacher = User.create(email: "teacher@teacher.com", password: "default123", role_id: 1)

course1 = Course.create(crn: "12345", name: "Software Engineering 1", description: "Learn about agile practices", capacity: 35)
course2 = Course.create(crn: "12346", name: "Software Engineering 2", description: "Practice Agile", capacity: 20)
course3 = Course.create(crn: "12347", name: "Operating Systems", description: "Learn about the inner workings of your Operating System", capacity: 45)
course4 = Course.create(crn: "12348", name: "Computer Science II", description: "Learn different data structures in CS using C++", capacity: 30)

student1 = User.create(email: "student1@student.com", password: "default123", role_id: 0)
student2 = User.create(email: "student2@student.com", password: "default123", role_id: 0)

student1.registered_courses = [course1.id, course2.id]
student2.registered_courses = [course3.id, course4.id]
student1.save
student2.save
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).