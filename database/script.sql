-- Pessoa definition

CREATE TABLE Pessoa (
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Nome varchar(60),
	DataNascReg Date
);


-- produto definition

CREATE TABLE produto (
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	descricao varchar(60),
	precovenda decimal(17,2),
	foto blob
);


-- cliente definition

CREATE TABLE cliente (
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	id_pessoa INTEGER NOT NULL,
	tipo varchar(60),
	CpfCnpj varchar(60),
	email varchar(100),
	telefone varchar(100),
	foto blob,
	CONSTRAINT cliente_FK FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id)
);


-- Endereco definition

CREATE TABLE Endereco (
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	id_pessoa INTEGER NOT NULL,
	logradouro varchar(60),
	numero varchar(60),
	complemento varchar(60),
	cidade varchar(60),
	bairro varchar(60),
	estado varchar(2),
	tipo varchar(60),
	CONSTRAINT Endereco_FK FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id)
);


-- pedido definition

CREATE TABLE pedido (
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	id_cliente INTEGER NOT NULL,
	dataemissao date DEFAULT current_date NOT NULL,
	valortotal decimal(17,2),
	CONSTRAINT pedido_FK FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);


-- pedidoitens definition

CREATE TABLE pedidoitens (
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	id_pedido INTEGER NOT NULL,
	id_produto INTEGER NOT NULL,
	quantidade INTEGER,
	valorunitario decimal(17,2),
	valortotal decimal(17,2),
	CONSTRAINT pedidoitens_FK FOREIGN KEY (id_pedido) REFERENCES pedido(id),
	CONSTRAINT pedidoitens_FK_1 FOREIGN KEY (id_produto) REFERENCES produto(id)
);