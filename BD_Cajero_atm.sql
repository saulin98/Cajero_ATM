create database cajero_atm;

Create table cajero_atm.Cuenta_bancaria(
CuentaId int auto_increment not null,
CuentaSaldo float,
CuentaTipoCuenta varchar(100),
primary key(CuentaId)
)engine=InnoDB;

Create table cajero_atm.Usuario(
UsuarioId int auto_increment not null,
UsuarioNum varchar(100),
UsuarioNip varchar(4),
FK_Cuenta int not null,
primary key(UsuarioId),
index FK_Usuario_Cuenta (FK_Cuenta asc) visible,
constraint FK_Usuario_Cuenta
foreign key (FK_Cuenta) 
references Cuenta_bancaria(CuentaId)
)engine=InnoDB;
