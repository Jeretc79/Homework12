Drop database if exists team_DB;
create database team_DB;

use team_DB;

create table department (
    id INT NOT NULL auto_increment,
    name VARCHAR(30),
    PRIMARY KEY (id)
);

create table role (
    id INT not null auto_increment,
    title varchar(30),
    salary decimal,
    department_id int not null,
    FOREIGN KEY (department_id) REFERENCES department(id),
    PRIMARY KEY (id)
);

create table employee (
    id INT not null auto_increment,
    first_name varchar(30) not null,
    last_name varchar(30) not null,
    role_id int not null,
    manager_id int null,
    FOREIGN KEY (role_id) REFERENCES role(id),
    PRIMARY KEY (id)
);

insert into department (name) values ("Engineering");
insert into department (name) values ("Sale");
insert into department (name) values ("Legal");

insert into role (title,salary,department_id) values ("Lead Engineer",100000,1);
insert into role (title,salary,department_id) values ("General Engineer", 70000,1);
insert into role (title,salary,department_id) values ("Lead Sale", 60000, 2);
insert into role (title,salary,department_id) values ("Saleperson", 40000,2);
insert into role (title,salary,department_id) values ("Lawyer",80000,3);

insert into employee (first_name, last_name, role_id, manager_id) values ("Jeret","Clark",1,null);
insert into employee (first_name, last_name, role_id, manager_id) values ("Emily","Strappazon",3,null);
insert into employee (first_name, last_name, role_id, manager_id) values ("Malice", "Clark", 2, 1);
