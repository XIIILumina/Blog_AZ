CREATE DATABASE blog_IPa22;
USE blog_IPa22;


CREATE TABLE posts (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	title VARCHAR(255) NOT NULL
);


INSERT INTO posts
(title)
VALUES
("My First Blog Post"),
("My Second Blog Post");


SELECT * FROM posts;


CREATE TABLE categories(
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
name VARCHAR(255) NOT NULL,
description TEXT
);

INSERT INTO categories(NAME)
VALUES ("sport"), ("music"),("food");

ALTER TABLE posts 
ADD category_id INT NOT NULL DEFAULT 1;

ALTER TABLE posts 
ADD FOREIGN KEY (category_id) REFERENCES categories(id);

UPDATE posts
SET category_id = 3
WHERE id=2;