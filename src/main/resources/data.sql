
create database datau;
use datau;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS users;

/* Tabla de usuarios */
CREATE TABLE users(
	id int NOT NULL AUTO_INCREMENT,
	username char(15) DEFAULT NULL,
	email char(15) DEFAULT NULL,
	password char(254) DEFAULT NULL,
	roles char(15) DEFAULT NULL,
	PRIMARY KEY(id)
);

/* user rol admin */
INSERT INTO users (username,email, password, roles) VALUES ('admin','admin@admin.es', '$2a$10$asGJXftXsOCZOSjCp4CwHuHd2KqASramYmsnF6H/gNYtEQC7CVS3q','admin');

/* user rol user */
INSERT INTO users (username, email, password, roles) VALUES ('user','user@user.es', '$2a$10$4YstvNaXIjmgV8EyNsB4IuiwZD5A7fShh.onjMhQZ0aGXL7n31uzy','user');


/* Tabla de roles */
CREATE TABLE roles (
	id int NOT NULL AUTO_INCREMENT,
	name char(15) DEFAULT NULL,
    PRIMARY KEY(id)
);

INSERT INTO roles (name) VALUES('ROLE_ADMIN'),('ROLE_MODERATOR'),('ROLE_USER');

/* Tabla de user roles */
CREATE TABLE user_roles (
	id int NOT NULL AUTO_INCREMENT,
	user_id int DEFAULT NULL,
	role_id int DEFAULT NULL,
    PRIMARY KEY(id)
);

INSERT INTO user_roles (user_id, role_id) VALUES(1,1),(2,3);

