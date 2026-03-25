# UMBC Lost & Found Database (Docker Project)

##  Project Overview
This project implements a centralized Lost & Found database system for UMBC using PostgreSQL and Docker.

The system replaces manual logbooks with a digital solution that allows:
- Students to submit lost item reports
- Staff to log found items
- Automated matching between lost and found items
- Verification and tracking of claimed items
- Multi-department access (Campus Center, Police, Residential Life, Facilities)

This project is part of IS 436: Structured Systems Analysis and Design.

---

##  Team Members
- Wilson Zhang (Project Manager)
- Michael Thomas (Quality Assurance)
- Mete Gorgulu (Software Engineer)
- Therisa Phan (UI/UX Designer)
- Justin Medina (Systems Analyst)

---

##  Technologies Used
- PostgreSQL 15
- Docker & Docker Compose
- SQL

---

## 📂 Project Structure
docker-database-project/
├── docker-compose.yml
├── .env
├── .gitignore
├── README.md
└── init-db/
├── 01_create_tables.sql
└── 02_insert_data.sql


---

## Setup Instructions

 1. Start the database
```bash
docker compose up
------
2. Run this on bash/vsc terminal:
docker exec -it my_project_db psql -U student1 -d projectdb
------
3.  Run this on docker desktop exec tab:
psql -U student1 -d project db
------
4. Use these commands on docker desktop exec tab to check tables and sql:
To view tables:  \dt

To run sample queries:
SELECT * FROM users;
SELECT * FROM departments;
SELECT * FROM lost_reports;
SELECT * FROM found_items;
SELECT * FROM matches;
SELECT * FROM claims;

-------
Database Design (Key Tables)
users → stores students and staff
departments → different campus departments
locations → where items are lost/found
lost_reports → student-submitted lost items
found_items → staff-logged items
matches → system-generated matches
claims → verified item returns

-------
Environment Variables:
- Sensitive credentials are stored in a .env file and excluded from version control using .gitignore.

-------
Features Implemented:
-Relational database design based on system requirements
-Automated database initialization using SQL scripts
-Dockerized database environment
-Sample data for testing queries and functionality
-Support for item tracking, matching, and claims
