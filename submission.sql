
-- I located the forum post mentioning EmptyStack where the username of the author is smart-money-44. I will search his details for name
SELECT id, title, content, date, author FROM forum_posts WHERE date >= '2048-04-01' AND date < '2048-05-01' AND (title ILIKE '%EmptyStack%' OR content ILIKE '%EmptyStack%');

-- I found smart-money-44's name
SELECT * FROM forum_accounts WHERE username = 'smart-money-44';

-- I have now searched for relatives of smart-money-44 or Brad Steele, hoping to find his father
SELECT * FROM forum_accounts WHERE last_name = 'Steele';

-- Finding the employee accounts with the same last name. Andrew and Lance Steele are the employees but Andrew is the only one that overlaps with the forum users so I will try his first
SELECT * FROM emptystack_accounts WHERE last_name= 'Steele';

-- Logged into the mainframe with triple-cart-38 and password: password456 (get a better password dude)
node mainfraime.js
triple-cart-38
password456

-- Loaded the new SQL into the database
psql -U postgres -d mainframe_override -f emptystack.sql

-- Locating the messages in the emptystack database containing information about the self-driving taxi project
SELECT * FROM emptystack_messages WHERE body ILIKE '%taxi%';

-- I found the boss which is your-boss-99 and am grabbing his credentials
SELECT * FROM emptystack_accounts WHERE username = 'your-boss-99';

-- Locating the code for the taxi project
SELECT * FROM emptystack_projects WHERE code = 'TAXI';

-- Shutdown the mainframe
node mainframe.js -stop 
Username: your-boss-99
Password: notagaincarter
Project ID: DczE0v2b