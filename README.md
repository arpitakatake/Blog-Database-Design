
# THE EDIT
### Blog Database Design

A structured relational database design for a modern blog platform, supported by PostgreSQL and MongoDB query examples.

---

## Project Overview

The Edit Blog Database is designed to manage the essential data of a blog platform. It organizes users, blog posts, and comments while maintaining data consistency through primary keys, foreign keys, constraints, and indexes.

## Database Structure

The project contains three core entities:

| Table | Purpose |
|---|---|
| `users` | Stores user account information. |
| `posts` | Stores blog articles and publishing details. |
| `comments` | Stores comments made on blog posts. |

## Entity Relationships

- One user can create multiple posts.
- One user can write multiple comments.
- One post can receive multiple comments.
- Each post belongs to one author.
- Each comment belongs to one user and one post.

See [Schema Diagram](docs/schema-diagram.md) for the complete entity relationship diagram.

## Technologies Used

- PostgreSQL
- SQL
- MongoDB
- JavaScript
- Mermaid ER Diagram

## Project Structure

```text
Blog Database Design/
│
├── docs/
│   └── schema-diagram.md
│
├── sql/
│   ├── schema.sql
│   ├── sample-data.sql
│   ├── queries.sql
│   └── mongodb-queries.js
│
└── README.md
```

## SQL Implementation

The PostgreSQL implementation includes:

1. Table creation with appropriate data types.
2. Primary key and foreign key constraints.
3. Unique and check constraints.
4. Indexes for commonly queried columns.
5. Sample records for all three tables.
6. Queries using SELECT, WHERE, JOIN, GROUP BY, COUNT, UPDATE, and DELETE.

## MongoDB Implementation

MongoDB examples demonstrate:

- Collection creation.
- Inserting multiple documents.
- Finding and filtering records.
- Searching using regular expressions.
- Updating documents.
- Counting documents.
- Deleting documents.

## How to Run

### PostgreSQL

Run the following files in order using PostgreSQL or the Supabase SQL Editor:

1. `sql/schema.sql`
2. `sql/sample-data.sql`
3. `sql/queries.sql`

### MongoDB

Open MongoDB Shell (`mongosh`) and execute:

`sql/mongodb-queries.js`

The MongoDB examples are a separate implementation and do not need PostgreSQL to run.

## Learning Outcomes

- Understanding relational database design.
- Creating tables and defining relationships.
- Applying primary and foreign keys.
- Writing SQL queries and joins.
- Understanding MongoDB collections and CRUD operations.
- Representing database relationships through an ER diagram.

---

**Project:** The Edit — Blog Database Design  
**Purpose:** Week 4 Database Basics Internship Task
