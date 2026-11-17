
// =========================================================
// THE EDIT | MONGODB BLOG DATABASE QUERIES
// MongoDB - mongosh
// =========================================================

// 1. Create collections
db.createCollection("users");
db.createCollection("posts");
db.createCollection("comments");

// 2. Insert sample users
db.users.insertMany([
  {
    userId: 1,
    fullName: "Arpita Katake",
    email: "arpita@example.com"
  },
  {
    userId: 2,
    fullName: "Nisha Sharma",
    email: "nisha@example.com"
  },
  {
    userId: 3,
    fullName: "Rahul Mehta",
    email: "rahul@example.com"
  }
]);

// 3. Insert sample posts
db.posts.insertMany([
  {
    postId: 1,
    authorId: 1,
    title: "The Art of Slow Living",
    category: "Lifestyle",
    status: "published"
  },
  {
    postId: 2,
    authorId: 2,
    title: "Designing for the Digital Age",
    category: "Design",
    status: "published"
  },
  {
    postId: 3,
    authorId: 1,
    title: "A Beginner Guide to React",
    category: "Technology",
    status: "draft"
  }
]);

// 4. Insert sample comments
db.comments.insertMany([
  {
    commentId: 1,
    postId: 1,
    userId: 2,
    commentText: "A beautiful article!"
  },
  {
    commentId: 2,
    postId: 2,
    userId: 1,
    commentText: "Very informative."
  }
]);

// 5. Display all users
db.users.find();

// 6. Find all published posts
db.posts.find({ status: "published" });

// 7. Find posts by a particular author
db.posts.find({ authorId: 1 });

// 8. Search posts by title
db.posts.find({
  title: { $regex: "design", $options: "i" }
});

// 9. Update a post status
db.posts.updateOne(
  { postId: 3 },
  { $set: { status: "published" } }
);

// 10. Count published posts
db.posts.countDocuments({ status: "published" });

// 11. Find comments for a particular post
db.comments.find({ postId: 1 });

// 12. Delete a comment
// Uncomment only when deletion is intended.
// db.comments.deleteOne({ commentId: 2 });
