CREATE USER IF NOT EXISTS 'event_admin'@'localhost' IDENTIFIED BY 'password';
CREATE USER IF NOT EXISTS 'botssuck'@'%' IDENTIFIED BY 'botdetector';
GRANT ALL ON *.* TO 'botssuck'@'%';
GRANT ALL ON *.* TO 'event_admin'@'localhost';