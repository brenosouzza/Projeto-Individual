CREATE DATABASE SPFC;

USE SPFC;

CREATE TABLE usuario (
idUsuario int primary key auto_increment,
nome varchar (45),
email varchar(90),
senha varchar(90)
);

select * from usuario;

CREATE TABLE quiz (
idQuiz int primary key auto_increment,
score int
);

CREATE TABLE ranking (
idRanking int,
fkUsuario int,
fkQuiz int,
foreign key (fkUsuario) references usuario(idUsuario),
foreign key (fkQuiz) references quiz(idQuiz),
primary key (idRanking, fkUsuario, fkQuiz)
);













