DROP TABLE IF EXISTS users;

CREATE TABLE users (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(255),
	password VARCHAR(255),
	role VARCHAR(255)
);

/* password */
INSERT INTO users (username, password, role) VALUES ('admin', '$2a$10$asGJXftXsOCZOSjCp4CwHuHd2KqASramYmsnF6H/gNYtEQC7CVS3q','admin');

/* passuser */
INSERT INTO users (username, password, role) VALUES ('user', '$2a$10$4YstvNaXIjmgV8EyNsB4IuiwZD5A7fShh.onjMhQZ0aGXL7n31uzy','user');