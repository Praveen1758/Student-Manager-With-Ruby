# 🎓 Student Manager CLI

> 🧑‍💻 A simple and interactive **Ruby command-line application** for managing student records.

Student Manager CLI lets you **add, view, search, and analyze student information** directly from your terminal. 🚀

---

## ✨ Features

* ➕ **Add Student** — Register a new student
* 📋 **List Students** — View all registered students
* 🔍 **Find Student** — Search for a student by name
* 🏆 **Top Scorer** — Find the student(s) with the highest marks
* 📊 **Average Score** — Calculate the average marks
* ✅ **Input Validation** — Prevent invalid age and marks
* 🎯 **Grade System** — Automatically categorize marks into grades
* 🚪 **Exit** — Safely close the application

---

## 🛠️ Technologies Used

* 💎 **Ruby**
* 📦 Arrays & Hashes
* 🔁 Loops
* 🔀 `case` statements
* 🧩 Methods
* 🛡️ Exception handling
* ⌨️ Command-line input

---

## 📋 Requirements

Before running the project, make sure **Ruby** is installed on your system.

Check your Ruby version:

```bash
ruby --version
```

If Ruby is installed correctly, you'll see something similar to:

```text
ruby 3.x.x
```

---

## 🚀 Getting Started

### 1️⃣ Clone or Download the Project

Download the project and open the project directory in your terminal.

### 2️⃣ Create the Ruby File

Save the project code as:

```text
student-manager.rb
```

### 3️⃣ Run the Application

Execute:

```bash
ruby student-manager.rb
```

🎉 That's it! The Student Manager CLI will start.

---

## 🖥️ Main Menu

When you start the program, you'll see:

```text
===============================
     🎓 STUDENT MANAGER CLI
===============================
1. ➕ Add Student
2. 📋 List Students
3. 🔍 Find Student
4. 🏆 Show Top Student
5. 📊 Show Average
6. 🚪 Exit
Choose an option:
```

Choose an option from **1 to 6**.

---

## ➕ 1. Add Student

Add a new student by entering:

* 👤 Name
* 🎂 Age
* ⚧️ Gender
* 📚 Course
* 📝 Marks

Example:

```text
======== Add New Student ========

Enter the Name of the Student:
Rahul

Enter Your Age:
21

Enter Your Gender:
Male

Enter Your Course:
Computer Science

Enter Your Marks:
88

Student Rahul added Successfully! 🎉
```

---

## 📋 2. List Students

View all students currently registered in the application.

Example:

```text
======== Registered Students ========

Name: Rahul, Age: 21, Gender: Male,
Course: Computer Science, Marks: 88, Grade: A
```

📌 If there are no students, the application displays:

```text
No Students Found 😕
```

---

## 🔍 3. Find Student

Search for a student by their name.

The search is **case-insensitive** 🔤, meaning:

```text
rahul
Rahul
RAHUL
```

will all match the same student.

If the student exists:

```text
Student Found! 🎉
Details of the Student are:
Name: Rahul
Age: 21
Gender: Male
Course: Computer Science
Marks: 88
```

If the student doesn't exist:

```text
Student Not Found ❌
```

---

## 🏆 4. Show Top Student

Finds the student or students with the **highest marks**.

Example:

```text
======== Top Scorer ========

Highest Score: 95

Name   : Priya | Course: Data Science
```

🥇 If multiple students have the same highest score, all of them are displayed.

---

## 📊 5. Show Average

Calculates the average marks of all registered students.

Example:

```text
======== Average Score ========

Average Marks of Students is 78.5 📈
```

The result is rounded to **2 decimal places**.

---

## 🎯 Grade System

The application uses the following grading system:

| 📝 Marks | 🏅 Grade |
| -------: | :------: |
| 85 – 100 |   🅰️ A  |
|  60 – 84 |   🅱️ B  |
|  35 – 59 |   🅲️ C  |
|   0 – 34 |    ❌ F   |

### Example

```text
95 → A 🅰️
75 → B 🅱️
45 → C 🅲️
20 → F ❌
```

---

## 🛡️ Input Validation

The application checks whether the user enters valid numbers.

### 🎂 Age

Age must be between:

```text
0 - 100
```

### 📝 Marks

Marks must be between:

```text
0 - 100
```

### ❌ Invalid Input Example

```text
Enter Your Marks: abc

Invalid input. Please enter a valid number. ⚠️
```

If the number is outside the valid range:

```text
Enter Your Marks: 120

Please enter a number between 0 and 100. ⚠️
```

---

## 📁 Project Structure

```text
📦 student-manager
│
├── 💎 student_manager.rb
└── 📖 README.md
```

Simple and clean! ✨

---

## 🧠 How Student Data Is Stored

Student information is temporarily stored inside a Ruby **Array**.

Each student is represented as a **Hash**:

```ruby
{
  name: name,
  age: age,
  gender: gender,
  course: course,
  marks: marks
}
```

📌 **Important:** The current version does not use a database or permanent file storage.

Therefore, all student data will be lost when the application is closed. 💨

---

## 🔄 Application Flow

```text
🚀 Start Application
        │
        ▼
🎓 Display Main Menu
        │
        ├── ➕ Add Student
        │
        ├── 📋 List Students
        │
        ├── 🔍 Find Student
        │
        ├── 🏆 Show Top Student
        │
        ├── 📊 Show Average
        │
        └── 🚪 Exit
                │
                ▼
             👋 Goodbye!
```

---

## 🔮 Future Improvements

Here are some ideas for future versions:

* 💾 Save students to a file
* 🗄️ Add database support
* 🆔 Generate unique Student IDs
* ✏️ Update student details
* 🗑️ Delete students
* 🎯 Automatically assign grades when adding students
* 🔢 Sort students by marks
* 📤 Export student data to CSV
* 🔎 Add advanced search filters
* 🧪 Add automated tests
* 🎨 Improve the CLI interface

---

## 🎯 Learning Objectives

This mini-project is useful for practicing:

* 💎 Ruby fundamentals
* 🧩 Methods
* 📦 Arrays
* 🗂️ Hashes
* 🔁 Loops
* 🔀 Conditional statements
* ⌨️ User input
* 🛡️ Input validation
* 🚨 Exception handling
* 🖥️ CLI application development

---

## 👨‍💻 About the Project

This project was created as a **beginner-friendly Ruby CLI mini-project** for learning and practicing programming fundamentals.

> 💡 Small project, solid fundamentals. Keep building! 🚀🔥

---

## 📜 License

This project is available for **educational and learning purposes**. 🎓

---

### ⭐ If you found this project useful, give it a star!

**Happy Coding! 💎💻🚀**
