CREATE USER IF NOT EXISTS 'event_admin'@'localhost' IDENTIFIED BY 'event_admin';
CREATE USER IF NOT EXISTS 'botssuck'@'%' IDENTIFIED BY 'botssuck';
GRANT ALL ON *.* TO 'botssuck'@'%';
GRANT ALL ON *.* TO 'event_admin'@'localhost';