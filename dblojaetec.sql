-- drop database dblojaetec;
CREATE DATABASE dblojaetec;
use dblojaetec;

-- ============================================== usuarios ======================================================
CREATE TABLE usuarios(
idUser int primary key auto_increment,
usuario varchar(50) not null,
fone varchar(15),
login varchar(30) not null unique,
senha varchar(15) not null
);
insert into usuarios (usuario, fone, login, senha) values
('Pedro Pontes', ' 61 98456-7743', 'pedrop22@gmail.com', 'pedropontes123');
-- ==============================================================================================================



-- =============================================== clientes ======================================================
CREATE TABLE clientes(
idCli int primary key auto_increment,
nomeCli varchar(50) not null,
endCli varchar(100),
foneCli varchar(15) not null,
emailCli varchar(50)
);

insert into clientes (nomeCli, endCli, foneCli, emailCli) values
('Laura lima', 'Qs 10 Brasilia', '61 96736-3855', 'laural20@gmail.com');
-- ================================================================================================================




-- ============================================== ordem_servico ====================================================
CREATE TABLE ordem_servico(
os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipamento varchar(150) not null,
defeito varchar(150) not null,
servico varchar(150),
tecnico varchar(30),
valor decimal(10,2),
idCli int not null,
foreign key (idCli) references clientes(idCli)
);

insert ordem_servico (data_os, equipamento, defeito, servico, tecnico, valor, idCli) values 
('2024-10-24 10:00:00', 'Notbook', 'Defeito na memória ram', 'Arumar memporia ram', 'Pedro Eduardo', 340.50, 1);
-- ===================================================================================================================