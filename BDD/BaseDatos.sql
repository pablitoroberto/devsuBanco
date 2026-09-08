CREATE DATABASE Movimientos;
GO

USE Movimientos;
GO

/*==============================================================*/
/* User: Mov                                                    */
/*==============================================================*/
create schema Mov
go

/*==============================================================*/
/* Table: Clientes                                              */
/*==============================================================*/
create table Mov.Clientes (
   Cliente_Id           bigint               identity,
   Persona_Id           bigint               not null,
   Contrasena           varchar(50)          not null,
   Estado               bit                  null,
   constraint PK_CLIENTES primary key (Cliente_Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Mov.Clientes') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'schema', 'Mov', 'table', 'Clientes' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   'Tabla de Clientes', 
   'schema', 'Mov', 'table', 'Clientes'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Mov.Clientes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Cliente_Id')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'schema', 'Mov', 'table', 'Clientes', 'column', 'Cliente_Id'

end


execute sp_addextendedproperty 'MS_Description', 
   'Identificador de la tabla Clientes',
   'schema', 'Mov', 'table', 'Clientes', 'column', 'Cliente_Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Mov.Clientes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Persona_Id')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'schema', 'Mov', 'table', 'Clientes', 'column', 'Persona_Id'

end


execute sp_addextendedproperty 'MS_Description', 
   'Identificador de la tabla Persona',
   'schema', 'Mov', 'table', 'Clientes', 'column', 'Persona_Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Mov.Clientes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Contrasena')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'schema', 'Mov', 'table', 'Clientes', 'column', 'Contrasena'

end


execute sp_addextendedproperty 'MS_Description', 
   'Contraseña',
   'schema', 'Mov', 'table', 'Clientes', 'column', 'Contrasena'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Mov.Clientes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Estado')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'schema', 'Mov', 'table', 'Clientes', 'column', 'Estado'

end


execute sp_addextendedproperty 'MS_Description', 
   'Estado del Cliente',
   'schema', 'Mov', 'table', 'Clientes', 'column', 'Estado'
go

/*==============================================================*/
/* Table: Cuentas                                               */
/*==============================================================*/
create table Mov.Cuentas (
   Cuenta_Id            bigint               identity,
   Cliente_Id           bigint               null,
   NumeroCuenta         varchar(20)          not null,
   TipoCuenta           varchar(30)          not null,
   SaldoInicial         decimal(18,2)        not null,
   Estado               bit                  not null,
   constraint PK_CUENTAS primary key (Cuenta_Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Mov.Cuentas') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'schema', 'Mov', 'table', 'Cuentas' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   'Tabla de Cuentas', 
   'schema', 'Mov', 'table', 'Cuentas'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Mov.Cuentas')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Cuenta_Id')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'schema', 'Mov', 'table', 'Cuentas', 'column', 'Cuenta_Id'

end


execute sp_addextendedproperty 'MS_Description', 
   'Identificador de la tabla Cuentas',
   'schema', 'Mov', 'table', 'Cuentas', 'column', 'Cuenta_Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Mov.Cuentas')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Cliente_Id')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'schema', 'Mov', 'table', 'Cuentas', 'column', 'Cliente_Id'

end


execute sp_addextendedproperty 'MS_Description', 
   'Identificador de la tabla Clientes',
   'schema', 'Mov', 'table', 'Cuentas', 'column', 'Cliente_Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Mov.Cuentas')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'NumeroCuenta')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'schema', 'Mov', 'table', 'Cuentas', 'column', 'NumeroCuenta'

end


execute sp_addextendedproperty 'MS_Description', 
   'Numero de cuenta',
   'schema', 'Mov', 'table', 'Cuentas', 'column', 'NumeroCuenta'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Mov.Cuentas')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TipoCuenta')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'schema', 'Mov', 'table', 'Cuentas', 'column', 'TipoCuenta'

end


execute sp_addextendedproperty 'MS_Description', 
   'Tipo de Cuenta',
   'schema', 'Mov', 'table', 'Cuentas', 'column', 'TipoCuenta'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Mov.Cuentas')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SaldoInicial')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'schema', 'Mov', 'table', 'Cuentas', 'column', 'SaldoInicial'

end


execute sp_addextendedproperty 'MS_Description', 
   'Saldo inicial',
   'schema', 'Mov', 'table', 'Cuentas', 'column', 'SaldoInicial'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Mov.Cuentas')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Estado')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'schema', 'Mov', 'table', 'Cuentas', 'column', 'Estado'

end


execute sp_addextendedproperty 'MS_Description', 
   'Estado de la cuenta',
   'schema', 'Mov', 'table', 'Cuentas', 'column', 'Estado'
go

/*==============================================================*/
/* Table: Movimientos                                           */
/*==============================================================*/
create table Mov.Movimientos (
   Movimiento_Id        bigint               identity,
   Cuenta_Id            bigint               null,
   Fecha                datetime             not null,
   TipoMovimiento       varchar(30)          not null,
   Valor                decimal(18,2)        not null,
   Saldo                decimal(18,2)        not null,
   constraint PK_MOVIMIENTOS primary key (Movimiento_Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Mov.Movimientos') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'schema', 'Mov', 'table', 'Movimientos' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   'Tabla de Movimientos', 
   'schema', 'Mov', 'table', 'Movimientos'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Mov.Movimientos')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Movimiento_Id')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'schema', 'Mov', 'table', 'Movimientos', 'column', 'Movimiento_Id'

end


execute sp_addextendedproperty 'MS_Description', 
   'Identificador de la Tabla Movimiento',
   'schema', 'Mov', 'table', 'Movimientos', 'column', 'Movimiento_Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Mov.Movimientos')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Cuenta_Id')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'schema', 'Mov', 'table', 'Movimientos', 'column', 'Cuenta_Id'

end


execute sp_addextendedproperty 'MS_Description', 
   'Identificador de la tabla Cuentas',
   'schema', 'Mov', 'table', 'Movimientos', 'column', 'Cuenta_Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Mov.Movimientos')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Fecha')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'schema', 'Mov', 'table', 'Movimientos', 'column', 'Fecha'

end


execute sp_addextendedproperty 'MS_Description', 
   'Fecha de registro',
   'schema', 'Mov', 'table', 'Movimientos', 'column', 'Fecha'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Mov.Movimientos')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TipoMovimiento')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'schema', 'Mov', 'table', 'Movimientos', 'column', 'TipoMovimiento'

end


execute sp_addextendedproperty 'MS_Description', 
   'Tipo de Movimiento',
   'schema', 'Mov', 'table', 'Movimientos', 'column', 'TipoMovimiento'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Mov.Movimientos')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Valor')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'schema', 'Mov', 'table', 'Movimientos', 'column', 'Valor'

end


execute sp_addextendedproperty 'MS_Description', 
   'Valor del movimiento',
   'schema', 'Mov', 'table', 'Movimientos', 'column', 'Valor'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Mov.Movimientos')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Saldo')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'schema', 'Mov', 'table', 'Movimientos', 'column', 'Saldo'

end


execute sp_addextendedproperty 'MS_Description', 
   'Saldo despues del movimiento',
   'schema', 'Mov', 'table', 'Movimientos', 'column', 'Saldo'
go

/*==============================================================*/
/* Table: Personas                                              */
/*==============================================================*/
create table Mov.Personas (
   Persona_Id           bigint               identity,
   Nombre               varchar(100)         not null,
   Genero               varchar(20)          not null,
   Edad                 int                  not null,
   Identificacion       varchar(20)          not null,
   Direccion            varchar(200)         not null,
   Telefono             varchar(20)          not null,
   constraint PK_PERSONAS primary key (Persona_Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Mov.Personas') and minor_id = 0)
begin 
   execute sp_dropextendedproperty 'MS_Description',  
   'schema', 'Mov', 'table', 'Personas' 
 
end 


execute sp_addextendedproperty 'MS_Description',  
   'Tabla de Personas', 
   'schema', 'Mov', 'table', 'Personas'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Mov.Personas')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Persona_Id')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'schema', 'Mov', 'table', 'Personas', 'column', 'Persona_Id'

end


execute sp_addextendedproperty 'MS_Description', 
   'Identificador de la tabla Persona',
   'schema', 'Mov', 'table', 'Personas', 'column', 'Persona_Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Mov.Personas')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Nombre')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'schema', 'Mov', 'table', 'Personas', 'column', 'Nombre'

end


execute sp_addextendedproperty 'MS_Description', 
   'Descripcion del nombre',
   'schema', 'Mov', 'table', 'Personas', 'column', 'Nombre'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Mov.Personas')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Genero')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'schema', 'Mov', 'table', 'Personas', 'column', 'Genero'

end


execute sp_addextendedproperty 'MS_Description', 
   'Descripcion del genero',
   'schema', 'Mov', 'table', 'Personas', 'column', 'Genero'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Mov.Personas')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Edad')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'schema', 'Mov', 'table', 'Personas', 'column', 'Edad'

end


execute sp_addextendedproperty 'MS_Description', 
   'Edad',
   'schema', 'Mov', 'table', 'Personas', 'column', 'Edad'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Mov.Personas')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Identificacion')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'schema', 'Mov', 'table', 'Personas', 'column', 'Identificacion'

end


execute sp_addextendedproperty 'MS_Description', 
   'Identificacion',
   'schema', 'Mov', 'table', 'Personas', 'column', 'Identificacion'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Mov.Personas')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Direccion')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'schema', 'Mov', 'table', 'Personas', 'column', 'Direccion'

end


execute sp_addextendedproperty 'MS_Description', 
   'Direccion de la persona',
   'schema', 'Mov', 'table', 'Personas', 'column', 'Direccion'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Mov.Personas')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Telefono')
)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'schema', 'Mov', 'table', 'Personas', 'column', 'Telefono'

end


execute sp_addextendedproperty 'MS_Description', 
   'Telefono de la persona',
   'schema', 'Mov', 'table', 'Personas', 'column', 'Telefono'
go

/*==============================================================*/
/* Index: Persona_IDX02                                         */
/*==============================================================*/




create unique nonclustered index Persona_IDX02 on Mov.Personas (Identificacion ASC)
go

alter table Mov.Clientes
   add constraint FK_CLIENTES_REF_CLIEN_PERSONAS foreign key (Persona_Id)
      references Mov.Personas (Persona_Id)
go

alter table Mov.Cuentas
   add constraint FK_CUENTAS_REF_CUENT_CLIENTES foreign key (Cliente_Id)
      references Mov.Clientes (Cliente_Id)
go

alter table Mov.Movimientos
   add constraint FK_MOVIMIEN_REF_MOVIM_CUENTAS foreign key (Cuenta_Id)
      references Mov.Cuentas (Cuenta_Id)
go
