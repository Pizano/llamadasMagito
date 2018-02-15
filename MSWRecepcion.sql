create table Paquete_Catalogo(
	Id_Pcatalogo int not null identity,
	Nombre nvarchar(100) not null,
	Descripcion nvarchar(100) null,

	primary key(Id_Pcatalogo),

);

create table LLamada_Catalogo(
	Id_Lcatalogo int not null identity,
	Tipo_Llamada nvarchar(100) not null,
	Descripcion nvarchar(100) null,

	primary key(Id_Lcatalogo)
);

create table Registro_Llamadas(
	Id_Rllamadas int not null identity,
	Id_Lcatalogo int not null,
	Id_Persona int not null,
	Id_Pcatalogo int not null,
	fecha datetime not null,
	Usuario nvarchar(100) not null,
	Notas nvarchar(250)  null,
	Numserie nvarchar(30)not null,
	Atendio nvarchar(100) not null,
	
	primary key(Id_Rllamadas),
	foreign key(Id_Lcatalogo) references Llamada_Catalogo(Id_Lcatalogo),
	foreign key(Id_Persona) references Persona(Id_Persona),
	foreign key(Id_Pcatalogo) references Paquete_Catalogo(Id_Pcatalogo)


);

create table Persona(
	Id_Persona int not null identity,
	Nombre nvarchar(100) not null,
	TelefonoFijo nvarchar(100)not null,
	TelefonoCelular nvarchar(100)not null,
	Correo nvarchar(100)not null,
	Empresa nvarchar(100)null,
	Dependencia nvarchar(100)null,

	primary key(Id_persona),


);