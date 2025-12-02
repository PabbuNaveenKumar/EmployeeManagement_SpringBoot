
# 🌿 Spring Boot Employee Management System

A simple and user-friendly **CRUD application** built with Spring Boot and Spring MVC.  
This project allows users to manage employee records including adding, editing, viewing, and deleting entries.

---

## 📖 About the Project

This application demonstrates core Spring concepts including **MVC architecture**, **Spring Data JPA**, and **JSP-based UI rendering**.  
It uses **MySQL** as the database and follows a layered approach with Entity, Repository, Service, and Controller components.

---

## ✨ Features

✔ View all employees  
✔ Add a new employee  
✔ Edit employee details  
✔ Delete an employee  
✔ Clean and responsive UI  

---

## 🛠 Tech Stack

| Technology | Purpose |
|------------|---------|
| Java 17 | Core language |
| Spring Boot | Backend framework |
| Spring MVC | Request handling & routing |
| Spring Data JPA | Database access |
| Hibernate | ORM |
| MySQL | Relational database |
| JSP | View layer |
| Maven | Build & dependency management |

---

## ⚙️ Installation & Setup

1. **Clone the repository**

```bash
git clone https://github.com/<your-username>/<repo-name>.git
cd <repo-name>
````

2. **Create a MySQL Database**

```sql
CREATE DATABASE employee_db;
```

3. **Configure Database Credentials** in
   `src/main/resources/application.properties`

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/employee_db
spring.datasource.username=root
spring.datasource.password=root
spring.jpa.hibernate.ddl-auto=update
```

4. **Run the Application**

```bash
mvn spring-boot:run
```

---

## ▶ How to Use

Once the project is running, open:

```
http://localhost:8080/
```

From here, you can:

* Add new employees
* Edit existing employee information
* Delete records
* View all stored employees

---

## 📁 Folder Structure (Simplified)

```
src/main/java
 └── controller
 └── service
 └── repository
 └── entity

src/main/webapp/WEB-INF/view
 ├── employee-list.jsp
 ├── add-employee-form.jsp
 └── edit-employee-form.jsp
```

---

