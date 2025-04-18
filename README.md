```markdown
# 📝 ToDoList App

A simple, scalable, and modern ToDo List application built using:
- 🔧 **Spring Boot** (Java) for the Backend API
- 🌐 **Vue.js** for the Frontend UI
- 📱 **PWA** features for installable desktop/mobile experience
- 🏢 **Multi-Tenancy** with token-based authentication

---


## 📌 TODO

- [ ] Setup basic backend endpoints
- [ ] Add JWT-based auth and tenant ID
- [ ] Scaffold Vue PWA frontend
- [ ] Connect frontend to backend

---

## ⚙️ Backend - Spring Boot (Java)

### Features
- RESTful API using **Spring Web**
- Secure **JWT-based Authentication**
- Basic **User Registration / Login**
- Multi-Tenant support (Shared DB with tenant ID)
- Follows **SOLID principles** and **MVC design pattern**

### Folder Structure

```
demo/                   
├── controller/         
├── service/            
├── model/          
├── repository/         
├── dto/            
└── config/         
```

---

## 🔐 Multi-Tenancy

- Uses **Shared DB + Tenant ID per row**
- Each request includes a **JWT** token containing the tenant ID
- Tenant ID is extracted via filter/interceptor
- Ensures complete data separation between tenants

---

## 🛠️ API Endpoints

### Auth
- `POST /api/auth/register` – Create a new user
- `POST /api/auth/login` – Login and receive JWT

### Todos (Protected by JWT)
- `GET /api/todos` – Get all todos for current tenant
- `POST /api/todos` – Add new todo
- `PUT /api/todos/:id` – Update a todo
- `DELETE /api/todos/:id` – Delete a todo

---

## 📦 Tech Stack

| Layer       | Technology            |
|-------------|------------------------|
| Backend     | Java 17, Spring Boot 3 |
| Auth        | JWT                    |
| Build Tool  | Maven, Docker          |

---
