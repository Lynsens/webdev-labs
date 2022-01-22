-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
SELECT id, first_name, last_name FROM users
ORDER BY last_name;



-- Exercise 4

SELECT id, user_id, image_url FROM posts
where user_id = 26;




-- Exercise 5
SELECT id, user_id, image_url FROM posts
where user_id = 26 or user_id = 12;



-- Exercise 6

SELECT count(*) FROM posts


-- Exercise 7

SELECT count(*) as n FROM comments
group by user_id
order by n DESC



-- Exercise 8

SELECT posts.id, posts.user_id, posts.image_url, users.username, users.first_name, users.last_name
FROM posts
INNER JOIN users on users.id = posts.user_id
where user_id = 26 or user_id = 12


-- Exercise 9
select posts.id, posts.pub_date, following.following_id from posts
inner join following 
on posts.user_id = following.following_id
where following.user_id = 26





-- Exercise 10
select posts.id, posts.pub_date, following.following_id, users.username from posts
inner join following 
on posts.user_id = following.following_id
inner join users 
on users.id = posts.user_id
where following.user_id = 26 
order by pub_date desc



-- Exercise 11

INSERT INTO bookmarks(user_id, post_id)
VALUES(26, 219);

INSERT INTO bookmarks(user_id, post_id)
VALUES(26, 220);

INSERT INTO bookmarks(user_id, post_id)
VALUES(26, 221);


-- Exercise 12
DELETE FROM bookmarks
WHERE user_id = 26 AND post_id = 219;

DELETE FROM bookmarks
WHERE user_id = 26 AND post_id = 220;

DELETE FROM bookmarks
WHERE user_id = 26 AND post_id = 221;



-- Exercise 13

UPDATE users
SET email = 'cyoung2022@gmail.com'
WHERE id = 26;


-- Exercise 14
