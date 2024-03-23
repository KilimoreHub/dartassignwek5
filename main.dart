class Student:
    def __init__(self, name, age, grade_level):
        self.name = name
        self.age = age
        self.grade_level = grade_level
    
    def print_info(self):
        print("Student Name:", self.name)
        print("Student Age:", self.age)
        print("Grade Level:", self.grade_level)


class Teacher:
    def __init__(self, name, age, subject):
        self.name = name
        self.age = age
        self.subject = subject
    
    def print_info(self):
        print("Teacher Name:", self.name)
        print("Teacher Age:", self.age)
        print("Subject Taught:", self.subject)


class School:
    def __init__(self):
        self.student = None
        self.teacher = None
    
    def create_student(self, name, age, grade_level):
        self.student = Student(name, age, grade_level)
    
    def create_teacher(self, name, age, subject):
        self.teacher = Teacher(name, age, subject)
    
    def print_student_info(self):
        if self.student:
            print("Student Information:")
            self.student.print_info()
        else:
            print("No student information available.")
    
    def print_teacher_info(self):
        if self.teacher:
            print("Teacher Information:")
            self.teacher.print_info()
        else:
            print("No teacher information available.")

school = School()
school.create_student("John Doe", 15, "10th Grade")
school.create_teacher("Jane Smith", 35, "Mathematics")

school.print_student_info()
print()
school.print_teacher_info()
