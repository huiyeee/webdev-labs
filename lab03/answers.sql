-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
select id, first_name, last_name 
from users 
order by last_name;



-- Exercise 4
select id, user_id, image_url 
from posts 
where user_id=26;



-- Exercise 5
select id, user_id, image_url 
from posts 
where user_id=26 or user_id=12;



-- Exercise 6
select count(id) 
from posts;



-- Exercise 7
select user_id, count(user_id) 
from comments 
group by user_id 
order by count(user_id) desc;



-- Exercise 8
select posts.id, posts.image_url, posts.user_id, users.username, users.first_name, users.last_name 
from posts 
inner join users 
on posts.user_id=users.id 
where posts.user_id=26 or posts.user_id=12
order by posts.id;



-- Exercise 9
select posts.id, posts.pub_date, following.following_id 
from posts
inner join following
on posts.user_id=following.following_id
where following.user_id=26;



-- Exercise 10
select posts.id, posts.pub_date, following.following_id, users.username 
from posts
inner join following
on posts.user_id=following.following_id 
inner join users
on following.following_id=users.id
where following.user_id=26
order by posts.pub_date desc;



-- Exercise 11
insert into bookmarks(user_id, post_id)
values (26, 219);

insert into bookmarks(user_id, post_id)
values (26, 220);

insert into bookmarks(user_id, post_id)
values (26, 221);


-- Exercise 12
delete from bookmarks
where user_id=26 and post_id=219;

delete from bookmarks
where user_id=26 and post_id=220;

delete from bookmarks
where user_id=26 and post_id=221;


-- Exercise 13
update users
set email='cyoung2022@gmail.com'
where id=26;


-- Exercise 14
select posts.id, posts.user_id, count(comments.id), posts.caption 
from posts, comments
where posts.id=comments.post_id and posts.user_id=26
group by posts.id;