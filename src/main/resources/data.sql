
create database datau;
use datau;
DROP TABLE IF EXISTS user_roles;
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

/* password */
INSERT INTO users (username,email, password, roles) VALUES ('admin','admin@admin.es', '$2a$10$asGJXftXsOCZOSjCp4CwHuHd2KqASramYmsnF6H/gNYtEQC7CVS3q','admin');

/* passuser */
INSERT INTO users (username, email, password, roles) VALUES ('user','user@user.es', '$2a$10$4YstvNaXIjmgV8EyNsB4IuiwZD5A7fShh.onjMhQZ0aGXL7n31uzy','user');


/* Tabla de roles */
CREATE TABLE roles (
	id int NOT NULL AUTO_INCREMENT,
	rol char(15) DEFAULT NULL,
    PRIMARY KEY(id)
);

INSERT INTO roles (rol) VALUES('ROLE_ADMIN'),('ROLE_MODERATOR'),('ROLE_USER');