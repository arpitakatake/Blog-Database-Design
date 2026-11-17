
# THE EDIT
## Blog Database — Entity Relationship Diagram

This diagram represents the relationships between the three main entities in the blog database: Users, Posts and Comments.

```mermaid
erDiagram
    USERS ||--o{ POSTS : writes
    USERS ||--o{ COMMENTS : creates
    POSTS ||--o{ COMMENTS : receives

    USERS {
        bigint user_id PK
        varchar full_name
        varchar email UK
        text password_hash
        timestamptz created_at
    }

    POSTS {
        bigint post_id PK
        bigint author_id FK
        varchar title
        varchar slug UK
        text content
        varchar category
        varchar status
        timestamptz published_at
        timestamptz created_at
        timestamptz updated_at
    }

    COMMENTS {
        bigint comment_id PK
        bigint post_id FK
        bigint user_id FK
        text comment_text
        varchar status
        timestamptz created_at
    }
```

## Relationship Explanation

| Relationship | Description |
|---|---|
| Users → Posts | One user can write many posts. |
| Users → Comments | One user can create many comments. |
| Posts → Comments | One post can receive many comments. |

## Key Constraints

- **Primary Keys (PK):** Uniquely identify each record.
- **Foreign Keys (FK):** Connect related records across tables.
- **Unique Constraints (UK):** Prevent duplicate email addresses and post slugs.
- **One-to-Many:** A single user or post can be associated with multiple records.
