
create database lojaIFPR;
use lojaIFPR;
drop database lojaIFPR;

create table Fornecedor(
	codFornecedor int auto_increment primary key,
  	nome varchar(50) not null,
    	endereco varchar(100) not null
);

create table Produto (
	codPdto int auto_increment primary key,
    	codFornec int,
	descricao varchar(80) unique not null,
    	preco float not null,
    	foreign key (codFornec) references Fornecedor(codFornecedor)
);

create table Cliente (
	codCli int auto_increment primary key,
    	nome varchar(50) not null,
    	fone varchar(10)
);

create table Fisica (
	codCli int,
    	cpf varchar(11) unique not null,
    	foreign key (codCli) references Cliente(codCli)
);

create table Juridica (
	codCli int,
    	cnpj varchar(14) unique not null,
    	foreign key (codCli) references	Cliente(codCli)
);

create table Compra(
	codPdto int,
    	codCli int,
    	qtd int not null,
    	dataCompra date not null,
    	foreign	key (codPdto) references Produto(codPdto),
    	foreign	key (codCli) references Cliente(codCli)
);

insert into Cliente(nome, fone)
values('Predo','5646512');

select * from Cliente;

update Cliente set fone ='55024561' where codCli = 1;
