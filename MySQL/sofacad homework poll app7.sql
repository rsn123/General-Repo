USE polling_app7;

SELECT * FROM users;

SELECT created_at FROM users WHERE username='tg3admin';

SELECT * FROM users WHERE username LIKE '%2%';

SELECT * FROM choices;

SELECT * FROM choices WHERE text LIKE 'Yes';


SELECT *, users.username FROM polls
JOIN users ON polls.id = users.id WHERE username LIKE 'Cholakova';


SELECT *, username FROM polls
JOIN users ON polls.id = users.id WHERE username NOT LIKE '%admin%';



