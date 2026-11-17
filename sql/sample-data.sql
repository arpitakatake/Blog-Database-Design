
-- =========================================================
-- THE EDIT | SAMPLE DATABASE RECORDS
-- Run after schema.sql
-- =========================================================

-- USERS
INSERT INTO users (full_name, email, password_hash)
VALUES
('Arpita Katake', 'arpita@example.com', 'hashed_password_demo_1'),
('Nisha Sharma', 'nisha@example.com', 'hashed_password_demo_2'),
('Rahul Mehta', 'rahul@example.com', 'hashed_password_demo_3');

-- POSTS
INSERT INTO posts
(author_id, title, slug, excerpt, content, category, status, published_at)
VALUES
(1, 'The Art of Slow Living', 'the-art-of-slow-living',
 'Finding beauty in everyday moments.',
 'A thoughtful exploration of slowing down and appreciating everyday life.',
 'Lifestyle', 'published', CURRENT_TIMESTAMP),

(2, 'Designing for the Digital Age', 'designing-for-the-digital-age',
 'How thoughtful design shapes digital experiences.',
 'Good digital design combines usability, clarity and visual storytelling.',
 'Design', 'published', CURRENT_TIMESTAMP),

(1, 'A Beginner Guide to React', 'beginner-guide-to-react',
 'Understanding the basics of React development.',
 'React helps developers build interactive user interfaces using components.',
 'Technology', 'draft', NULL),

(3, 'The Future of Minimalism', 'future-of-minimalism',
 'Why simplicity continues to matter.',
 'Minimalism focuses on clarity, purpose and removing unnecessary complexity.',
 'Culture', 'published', CURRENT_TIMESTAMP);

-- COMMENTS
INSERT INTO comments (post_id, user_id, comment_text)
VALUES
(1, 2, 'A beautiful perspective on everyday life.'),
(1, 3, 'Really enjoyed reading this article.'),
(2, 1, 'The design principles are explained clearly.'),
(2, 3, 'Very informative and inspiring.'),
(4, 2, 'Simplicity makes such a difference!');
