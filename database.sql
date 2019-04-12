CREATE DATABASE IF NOT EXISTS manageMails;
USE manageMails;

CREATE TABLE users(
id          int(255) auto_increment not null,
name        varchar(50) NOT NULL,
surname     varchar(100),
role        varchar(20),
mail        varchar(255) NOT NULL,
password    varchar(255) NOT NULL,
docNumber   varchar(9) NOT NULL,
accepted tinyint(1) NOT NULL,
created_at  datetime DEFAULT NULL,
updated_at  datetime DEFAULT NULL,
remember_token  varchar(255),
CONSTRAINT pk_users PRIMARY KEY (id)
)ENGINE=InnoDb;

CREATE TABLE logs(
id          int(255) auto_increment not null,
user_id     int(255) not null,
created_at  datetime DEFAULT NULL,
CONSTRAINT pk_logs PRIMARY KEY (id),
CONSTRAINT fk_log_user FOREIGN KEY (user_id) REFERENCES users(id)
)ENGINE=InnoDb;

CREATE TABLE usersAccepted(
id          int(255) auto_increment not null,
name        varchar(50) NOT NULL,
surname     varchar(100),
role        varchar(20),
mail        varchar(255) NOT NULL,
password    varchar(255) NOT NULL,
docNumber   varchar(9) NOT NULL,
accepted tinyint(1) NOT NULL,
created_at  datetime DEFAULT NULL,
updated_at  datetime DEFAULT NULL,
remember_token  varchar(255),
CONSTRAINT pk_users PRIMARY KEY (id)
)ENGINE=InnoDb;
