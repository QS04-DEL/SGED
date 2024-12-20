
use g_i_hospitalar;

create proc adicionar_Analista(
@nome_analista varchar (60),
@data_nasc date,
@genero varchar (10),
@id_endereco int,
@id_contacto int,
@turno varchar (10),
@cod_analista int
)

as
begin
insert into analista values(
@nome_analista, 
@data_nasc,
@genero,
@id_endereco,
@id_contacto, 
@turno,
@cod_analista)
end
go



--atualizar--
create proc Atualizar_Analista(
@nome_analista varchar (60),
@data_nasc date,
@genero varchar (10),
@id_endereco int,
@id_contacto int,
@turno varchar (10),
@cod_analista int
)
as
begin
update analista set
nome_analista=@nome_analista, 
data_nasc=@data_nasc, 
genero=@genero, 
id_endereco=@id_endereco, 
id_contacto=@id_contacto, 
turno=@turno
where @cod_analista=@cod_analista
end
go

--pesquisar--
create proc Pesquisar_Analista(
@cod_analista int
)
as
begin
select * from analista where @cod_analista=@cod_analista
end


go
--delete--

create proc Eliminar_analista(
@cod_analista int
)
as
begin
Delete from analista where @cod_analista=@cod_analista
end

go


create proc Adicionar_Contacto(
@emael varchar (100),
@telefone varchar (15)
)

as
begin
insert into contacto values (
@emael, 
@telefone)
end
go

--atualizar--
create proc Atualizar_Contacto(
@emael varchar (100),
@telefone varchar (15)
)
as
begin
update contacto set
emael=@emael,
telefone=@telefone
where id_contacto=id_contacto
end

go
create proc adicionar_doador(
@cod_doador int,
@nome_doador varchar (60),
@data_nasc date,
@genero varchar (10),
@id_endereco int,
@id_contacto int,
@tipo_sangue varchar (10),
@hist_medico varchar (100),
@peso varchar (10)
)
as
begin
insert into doador values(
@cod_doador,
@nome_doador, 
@data_nasc,
@genero,
@id_endereco,
@id_contacto, 
@tipo_sangue,
@hist_medico,
@peso)
end
go



--atualizar--
create proc Atualizar_doador(
@cod_doador int,
@nome_doador varchar (60),
@data_nasc date,
@genero varchar (10),
@id_endereco int,
@id_contacto int,
@tipo_sangue varchar (10),
@hist_medico varchar (100),
@peso varchar (10)
)
as
begin
update doador set
nome_doador=@nome_doador,
data_nasc=@data_nasc,
genero=@genero,
@id_endereco=@id_endereco,
id_contacto=@id_contacto,
tipo_sangue=@tipo_sangue,
hist_medico=@tipo_sangue,
peso=@peso
where id_doador=@cod_doador
end
go


--pesquisar--
create proc Pesquisar_doador(
@cod_doador int
)
as
begin
select * from doador where id_doador=@cod_doador
end


go
--delete--

create proc Eliminar_doador(
@cod_doador int
)
as
begin
Delete from doador where id_doador=@cod_doador
end

go

create proc Adicionar_endereco(
@cidade varchar (20),
@bairro varchar (20),
@rua varchar (20),
@n_casa varchar (10)
)

as
begin
insert into endereco values (
@cidade,
@bairro,
@rua,
@n_casa
)
end
go



--atualizar--
create proc Atualizar_endereco(
@cidade varchar (20),
@bairro varchar (20),
@rua varchar (20),
@n_casa varchar (10)
)
as
begin
update endereco set
cidade=@cidade, 
bairro=@bairro, 
rua=@rua, 
n_casa=@n_casa  
where id_endereco=id_endereco
end
go

create proc Adicionar_equipa(
@nome_equipa varchar (20)
)

as
begin
insert into equipa_emerg values ( 
@nome_equipa)
end
go

--atualizar--
create proc Atualizar_equipa(
@nome_equipa varchar (20)
)
as
begin
update equipa_emerg set 
nome_equipa=@nome_equipa
where id_equipoa_emerg=id_equipoa_emerg
end
go



create proc Adicionar_estoque(
@tipo_sangue varchar (8),
@volume_disponivel varchar (20),
@data_coleta date
)

as
begin
insert into estoque_sangue values( 
@tipo_sangue,
@volume_disponivel,
@data_coleta)
end
go



--atualizar--
create proc Atualizar_estoque(
@tipo_sangue varchar (8),
@volume_desponivel varchar (20),
@data_coleta date
)
as
begin
update estoque_sangue set
tipo_sangue=@tipo_sangue, 
volume_desponivel=@volume_desponivel, 
data_coleta=@data_coleta
where id_estoque=id_estoque
end
go


create proc Adicionar_funcionario(
@cod_funcionario int,
@nome_funcionario varchar (60),
@data_nasc date,
@genero varchar (10),
@id_endereco int,
@id_contacto int,
@turno varchar (10),
@funcao varchar (20)
)

as
begin
insert into funcionario values (
@cod_funcionario,
@nome_funcionario,
@data_nasc,
@genero,
@id_endereco,
@id_contacto, 
@turno,
@funcao)
end
go



--atualizar--
create proc Atualizar_funcionario(
@cod_funcionario int,
@nome_funcionario varchar (60),
@data_nasc date,
@genero varchar (10),
@id_endereco int,
@id_contacto int,
@turno varchar (10),
@funcao varchar (20)
)
as
begin
update funcionario set
nome_funcionario=@nome_funcionario, 
data_nasc=@data_nasc, 
genero=@genero, 
id_endereco=@id_endereco, 
id_contacto=id_contacto, 
turno=@turno,
funcao=@turno
where id_funcionario=@cod_funcionario
end
go



--pesquisar--
create proc Pesquisar_funcionario(
@cod_funcionario int
)
as
begin
select * from funcionario where @cod_funcionario=@cod_funcionario
end


go
--delete--

create proc Eliminar_funcionario(
@cod_funcionario int
)
as
begin
Delete from funcionario where @cod_funcionario=@cod_funcionario
end

go


create proc Adicionar_paciente(
@cod_paciente int,
@nome_paciente varchar (60),
@data_nasc date,
@genero varchar (10),
@id_endereco int,
@id_contacto int
)

as
begin
insert into paciente values (
@cod_paciente,
@nome_paciente,
@data_nasc,
@genero,
@id_endereco,
@id_contacto)
end
go



--atualizar--
create proc Atualizar_paciente(
@cod_paciente int,
@nome_paciente varchar (60),
@data_nasc date,
@genero varchar (10),
@id_endereco int,
@id_contacto int
)
as
begin
update paciente set
nome_paciente=@nome_paciente, 
data_nasc=@data_nasc, 
genero=@genero, 
id_endereco=@id_endereco, 
id_contacto=id_contacto
where id_paciente=@cod_paciente
end
go



--pesquisar--
create proc Pesquisar_paciente(
@cod_paciente int
)
as
begin
select * from paciente where id_paciente=@cod_paciente
end


go
--delete--

create proc Eliminar_paciente(
@cod_paciente int
)
as
begin
Delete from paciente where id_paciente=@cod_paciente
end

go


create proc Adicionar_receptor(
@cod_receptor int,
@nome_recptor varchar (60),
@data_nasc date,
@genero varchar (10),
@id_endereco int,
@id_contacto int,
@tipo_sangue varchar (10),
@necessidade varchar (30)
)

as
begin
insert into receptor values (
@cod_receptor,
@nome_recptor,
@data_nasc,
@genero,
@id_endereco,
@id_contacto, 
@tipo_sangue,
@necessidade)
end
go



--atualizar--
create proc Atualizar_recptor(
@cod_receptor int,
@nome_receptor varchar (60),
@data_nasc date,
@genero varchar (10),
@id_endereco int,
@id_contacto int,
@tipo_sangue varchar (10),
@necessidade varchar (30)
)
as
begin
update receptor set
nome_receptor=@nome_receptor, 
data_nasc=@data_nasc, 
genero=@genero, 
id_endereco=@id_endereco, 
id_contacto=id_contacto, 
tipo_sangue=@tipo_sangue,
necessidade=@necessidade
where id_receptor=@cod_receptor
end
go



--pesquisar--
create proc Pesquisar_receptor(
@cod_receptor int
)
as
begin
select * from receptor where id_receptor=@cod_receptor
end


go
--delete--

create proc Eliminar_receptor(
@cod_receptor int
)
as
begin
Delete from receptor where id_receptor=@cod_receptor
end





create proc Adicionar_registro(
@cod_registro int,
@id_receptor int,
@id_paciente int,
@id_funcionario int,
@diagnostico varchar (100)
)

as
begin
insert into registo values (
@cod_registro,
@id_receptor,
@id_paciente,
@id_funcionario,
@diagnostico)
end
go



--atualizar--
create proc Atualizar_registro(
@cod_registro int,
@id_receptor int,
@id_paciente int,
@id_funcionario int,
@diagnostico varchar (100)
)
as
begin
update registo set
id_receptor=@id_receptor, 
id_paciente=@id_paciente, 
id_funcionario=@id_funcionario, 
diagnostico = @diagnostico
where id_registro=@cod_registro
end
go



--pesquisar--
create proc Pesquisar_registro(
@cod_registro int
)
as
begin
select * from registo where cod_registro=@cod_registro
end


go
--delete--

create proc Eliminar_regstro(
@cod_registro int
)
as
begin
Delete from registo where cod_registro=@cod_registro
end



