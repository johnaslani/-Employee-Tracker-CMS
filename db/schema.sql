-- Create movid_db
DROP DATABASE IF EXISTs movie_db;
CREATE DATABASE movie_db;

USE movie_db;

CREATE TABLE department (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(30)
);

CREATE TABLE role (
    id INT NOT NULL PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL, 
    department_id INT
);

CREATE TABLE employee (
    id INT NOT NULL PRIMARY KEY,
    frist_name VARCHAR(30), 
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT DEFAULT NULL,
    FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE SET NULL,
    FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL,
);



