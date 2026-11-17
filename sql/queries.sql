
-- =========================================================
-- THE EDIT | BLOG DATABASE QUERIES
-- PostgreSQL
-- =========================================================

-- 1. Display all users
SELECT * FROM users;

-- 2. Display all published posts
SELECT title, category, published_at
FROM posts
WHERE status = 'published';

-- 3. Display posts with their authors
SELECT
    posts.title,
    posts.category,
    users.full_name AS author
FROM posts
INNER JOIN users
    ON posts.author_id = users.user_id;

-- 4. Display comments with usernames
SELECT
    comments.comment_text,
    users.full_name AS commenter
FROM comments
INNER JOIN users
    ON comments.user_id = users.user_id;

-- 5. Count comments on each post
SELECT
    posts.title,
    COUNT(comments.comment_id) AS total_comments
FROM posts
LEFT JOIN comments
    ON posts.post_id = comments.post_id
GROUP BY posts.post_id, posts.title
ORDER BY total_comments DESC;

-- 6. Find posts by a particular author
SELECT title, category
FROM posts
WHERE author_id = 1;

-- 7. Search posts by title
SELECT title, category
FROM posts
WHERE title ILIKE '%design%';

-- 8. Update a draft post to published
UPDATE posts
SET status = 'published',
    published_at = CURRENT_TIMESTAMP,
    updated_at = CURRENT_TIMESTAMP
WHERE slug = 'beginner-guide-to-react';

-- 9. Hide a comment
UPDATE comments
SET status = 'hidden'
WHERE comment_id = 1;

-- 10. Count posts written by each user
SELECT
    users.full_name,
    COUNT(posts.post_id) AS total_posts
FROM users
LEFT JOIN posts
    ON users.user_id = posts.author_id
GROUP BY users.user_id, users.full_name
ORDER BY total_posts DESC;

-- 11. Delete a specific comment
-- Uncomment the following line only when deletion is intended.
-- DELETE FROM comments WHERE comment_id = 5;
