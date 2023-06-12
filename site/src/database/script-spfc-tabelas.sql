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
score int,
fkUsuario int,
foreign key (fkUsuario) references usuario(idUsuario)
);

CREATE TABLE aviso (
	idAviso INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fkUsuario INT,
	FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario)
);

        SELECT 
            a.idAviso AS idAviso,
            a.titulo,
            a.descricao,
            a.fkUsuario,
            u.idUsuario AS idUsuario,
            u.nome,
            u.email,
            u.senha
        FROM aviso a
            INNER JOIN usuario u
                ON a.fkUsuario = u.idUsuario;

select * from aviso;
SELECT * FROM usuario;
SELECT * FROM quiz;
SELECT usuarios.nome, scores.score FROM usuario AS usuarios JOIN quiz AS scores ON 
        usuarios.idUsuario = scores.fkUsuario;
        
delete from usuario where idUsuario = 4;

delete from quiz where fkUsuario = 4;


DROP DATABASE spfc;









