create database empresa;

CREATE TABLE empresa.funcionarios (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    salario INT(10) NOT NULL
);

create user 'empresa'@'%' identified by 'Empresa123@';

grant all privileges on empresa.* to 'empresa'@'%';
