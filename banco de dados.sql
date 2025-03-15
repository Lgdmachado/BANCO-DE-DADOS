create database loja1;
use loja1;

create table clientes(
	id int (255),
	primary key (id),
	nome varchar(255),
	endereco varchar(255),
	cidade varchar (255),
	cep varchar (255)
);
create table pedidos(
	num_pedido int primary key,
	data_pedido date ,
	item varchar (255),
	id_cliente int,
	Foreign key (id_cliente) references clientes(id)
);

insert into clientes (id,nome, endereco, cep, cidade)
values
('1', 'João Silva', 'Rua das Flores, 123', '12345-678', 'São Paulo'),
('2', 'Maria Oliveira', 'Av. Brasil, 456', '23456-789', 'Rio de Janeiro'),
('3', 'Carlos Pereira', 'Rua da Paz, 789', '34567-890', 'Belo Horizonte'
);
insert into pedidos (num_pedido,data_pedido, item)
values
('101', '2025-03-10', 'Celular', 1),
('102', '2025-03-11', 'Notebook',2),
('103', '2025-03-12', 'Fone de Ouvido', 3);

select * from pedidos; ;
 
 UPDATE pedidos 
 SET id_cliente = 3
 WHERE num_pedido = 103;
 
 
 SELECT * FROM clientes JOIN pedidos ON id = id_cliente;