Create schema CALENDARIO

CREATE TABLE CALENDARIO.Usuario (
	id int IDENTITY(1, 1) NOT NULL,
	nome varchar(30) not null,
	sobrenome varchar(100) not null,
	email varchar(100) not null,
	telefone varchar(13),
	PRIMARY KEY(id)
)

CREATE TABLE Calendario.Tipo (
	id int not null,
	nome varchar(10) not null,
	primary key(id)
)

CREATE TABLE CALENDARIO.Evento (
	id int IDENTITY(1, 1) NOT NULL,
	descricao varchar(200) not null,
	titulo varchar(40) not null,
	idUsuario int not null,
	data datetime not null,
	tipo int not null default 0,
	foreign key(tipo) references CALENDARIO.Tipo(id),
	foreign key(idUsuario) references CALENDARIO.Usuario(id),
	PRIMARY KEY(id)
)

CREATE TABLE CALENDARIO.FormaNotificacao(
	id int not null,
	nome varchar(10) not null,
	primary key(id)
)

CREATE TABLE CALENDARIO.Notificacao (
	idEvento int NOT NULL,
	idFormaNotificacao int not null,
	foreign key(idEvento) references CALENDARIO.Evento(id),
	foreign key(idFormaNotificacao) references CALENDARIO.FormaNotificacao(id)
)

DROP TABLE CALENDARIO.Notificacao;
DROP TABLE Calendario.tipo;
DROP TAbLE Calendario.evento;
DROP TABLE CALENDARIO.FormaNotificacao