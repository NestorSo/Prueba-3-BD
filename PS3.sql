
use SIC
--1.Diseño del calculo de predicado de tuplas
-- Calculo de Predicado de dominio
-- obtendremos los siguientes datos de las tablas CJuridico Cliente NombreCJ, URLCJ, DirC y TelC
-- esto l indicamos por:
--{NCJ,Ur,Dc,T | (Эcj)( Эc)( CJuridico(nudt...)}

-- Implementacion como consulta
select NombreCJ, URLCJ, Dirc, TelC from Clientes
inner join ClienteJur on Clientes.Id_Cliente=Clientejur.Id_Cliente


--2.- Clientes del Municipio de Managua con la información de su Municipio (3 puntos)
--Algebra Relacional:operacion relacional
-- Reunion Natural
--π(T,D,T,E)(Clientes ⋊⋉ Municipio)
-- Implementacion de consulta
select Tipo_Cliente,
DirC, TelC,
NombreMun from Clientes inner join 
Municipios on 
Clientes.Id_Mun=Municipios.Id_Mun
where NombreMun='Managua'


--3.- Productos con la correspondiente información de su proveedor( 3 puntos)
--Algebra relacional: reunion natural
-- Equireunion
-- Implementacion de Consulta
-- productos ⨝ (idProv.D = idprov.P) Proveedor
select NombreProd, NombreProv,DirProv,TelProv,URLProv from Proveedor inner join Productos on Proveedor.IdProv=Productos.IdProv 

--4.- PNCN, PACN, DirC y TelC (2 puntos)
--Algebra Relacional, operacion relacional
-- selecion
-- {Pn,Pa,D,T | Productos(p)  and  p.existp < 15}
-- Implementacion de Consulta
select PNCN, PACN, DirC, TelC from ClienteNat inner join Clientes on ClienteNat.Id_Cliente=Clientes.Id_Cliente 


insert into Clientes values(01,'Cliente Juridico', 'Bo Boer managua',78768976, 1, 1)