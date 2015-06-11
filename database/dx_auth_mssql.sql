

CREATE TABLE login_attempts (
  id int NOT NULL IDENTITY(1,1),
  ip_address varchar(40) NOT NULL,
  time datetime NOT NULL,
  PRIMARY KEY (id)
);



CREATE TABLE roles (
  id int NOT NULL IDENTITY(1,1),
  parent_id int NOT NULL DEFAULT '0',
  name varchar(30) NOT NULL,
  PRIMARY KEY  (id)
) ;



SET IDENTITY_INSERT roles ON;
INSERT INTO roles (id, parent_id, name) VALUES (1, 0, 'User');
INSERT INTO roles (id, parent_id, name) VALUES (2, 0, 'Admin');
SET IDENTITY_INSERT roles OFF;


CREATE TABLE permissions (
  id int NOT NULL IDENTITY(1,1),
  role_id int NOT NULL,
  data varchar(MAX),
  PRIMARY KEY (id)
) ;


CREATE TABLE users (
  id int NOT NULL IDENTITY(1,1),
  role_id int NOT NULL default '1',
  username varchar(25) NOT NULL,
  password varchar(34) NOT NULL,
  email varchar(100) NOT NULL,
  banned int NOT NULL default '0',
  ban_reason varchar(255) default NULL,
  newpass varchar(34) default NULL,
  newpass_key varchar(32) default NULL,
  newpass_time datetime default NULL,
  last_ip varchar(40) NOT NULL,
  last_login datetime NOT NULL default '0000-00-00 00:00:00',
  created datetime NOT NULL default '0000-00-00 00:00:00',
  modified datetime NOT NULL default GETDATE(),
  PRIMARY KEY  (id)
) ;


SET IDENTITY_INSERT users ON;
INSERT INTO users (id, role_id, username, password, email, banned, ban_reason, newpass, newpass_key, newpass_time, last_ip, last_login, created, modified) VALUES
(1, 2, 'admin', '$1$i75.Do4.$ROPRZjZzDx/JjqeVtaJLW.', 'admin@localhost.com', 0, NULL, NULL, NULL, NULL, '127.0.0.1', '2008-11-30 04:56:38', '2008-11-30 04:56:32', '2008-11-30 04:56:38');
INSERT INTO users (id, role_id, username, password, email, banned, ban_reason, newpass, newpass_key, newpass_time, last_ip, last_login, created, modified) VALUES
(2, 1, 'user', '$1$bO..IR4.$CxjJBjKJ5QW2/BaYKDS7f.', 'user@localhost.com', 0, NULL, NULL, NULL, NULL, '127.0.0.1', '2008-12-01 14:04:14', '2008-12-01 14:01:53', '2008-12-01 14:04:14');
SET IDENTITY_INSERT users OFF;



CREATE TABLE user_autologin (
  key_id varchar(32) NOT NULL,
  user_id int NOT NULL default '0',
  user_agent varchar(150) NOT NULL,
  last_ip varchar(40) NOT NULL,
  last_login datetime NOT NULL default GETDATE(),
  PRIMARY KEY  (key_id, user_id)
) ;


CREATE TABLE user_profile (
  id int NOT NULL IDENTITY(1,1),
  user_id int NOT NULL,
  country varchar(20) default NULL,
  website varchar(255) default NULL,
  PRIMARY KEY  (id)
) ;


SET IDENTITY_INSERT user_profile ON;
INSERT INTO user_profile (id, user_id, country, website) VALUES (1, 1, NULL, NULL);
SET IDENTITY_INSERT user_profile OFF;



CREATE TABLE user_temp (
  id int NOT NULL  IDENTITY(1,1),
  username varchar(255)  NOT NULL,
  password varchar(34)  NOT NULL,
  email varchar(100)  NOT NULL,
  activation_key varchar(50)  NOT NULL,
  last_ip varchar(40)  NOT NULL,
  created datetime NOT NULL default GETDATE(),
  PRIMARY KEY  (id)
) ;
