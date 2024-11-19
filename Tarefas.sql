create database Tarefa;

use Tarefa;

create table usuarios(
       usu_codigo int primary key auto_increment,
       usu_nome   varchar(45) not null,
       usu_email  varchar(100) not null
);

create table tarefas(
       tar_codigo     int primary key auto_increment,
       tar_setor      varchar(45) not null,
       tar_prioridade varchar(45) not null,
       tar_descricao  varchar(45) not null,
       tar_status     varchar(45) not null,
       usu_codigo     int not null,
       constraint fk_usu_codigo foreign key(usu_codigo) references usuarios(usu_codigo)
);

insert into usuarios values (1,'Leonardo','leozim@email.com');

INSERT into usuarios(usu_nome, usu_email) values ('$nome','$email');

insert into tarefas values (1,'materiais','baixa','É utilizado em construção','a fazer',1);

select * from tarefas;

INSERT into tarefas(tar_setor, tar_prioridade, tar_descricao, tar_status, usu_codigo) 
              values ('$setor','$prioridade','$descricao','Á Fazer','1');
              
DELETE from tarefas where tar_codigo = 3;