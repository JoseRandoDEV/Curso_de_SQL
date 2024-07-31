SELECT users.user_id AS u_user_id, dni.user_id AS d_user_id
FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION 
SELECT users.user_id AS user_id, dni.user_id AS d_user_id
FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id

SELECT *
FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION 
SELECT *
FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id

