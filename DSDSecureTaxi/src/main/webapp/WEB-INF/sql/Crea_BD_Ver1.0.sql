/*
Empresa        :  TaxiEmpresarial
Software       :  Sistema de Servicio de Taxi
DBMS           :  MySQL Server
Base de Datos  :  TaxiEmpresarial
Script         :  Crea la Base de Datos
*/

--DROP DATABASE taxiempresarial;

-- =============================================
-- Creaci�n de la Base de Datos
-- =============================================

CREATE DATABASE IF NOT EXISTS taxiempresarial;


-- =============================================
-- Seleccionar la Base de Datos
-- =============================================

USE taxiempresarial;


-- =============================================
-- Eliminar las tablas en caso existan
-- =============================================

DROP TABLE IF EXISTS cliente;
DROP TABLE IF EXISTS distrito;
DROP TABLE IF EXISTS parametro;
DROP TABLE IF EXISTS reserva;	
DROP TABLE IF EXISTS reservaCedes;
DROP TABLE IF EXISTS sede;
DROP TABLE IF EXISTS servicio;
DROP TABLE IF EXISTS unidad;
DROP TABLE IF EXISTS Usuario;

-- =============================================
-- Creaci�n de los Objetos de la Base de Datos
-- =============================================

CREATE TABLE Cliente 
    ( 
     CoCliente CHAR (6) NOT NULL , 
     CoRucCliente CHAR (11) NOT NULL , 
     NoRazSocial VARCHAR (25) NOT NULL , 
     NoRepreLegal VARCHAR (40) , 
     CONSTRAINT Cliente_PK PRIMARY KEY (CoCliente)
    ) ENGINE = INNODB ;


CREATE TABLE Usuario 
    ( 
     CoCliente CHAR (6) NOT NULL , 
     CoUsuario CHAR (6) NOT NULL , 
     NoPaterno VARCHAR (25) NOT NULL , 
     NoMaterno VARCHAR (25) NOT NULL , 
     NoNombres VARCHAR (25) NOT NULL , 
     CoClave CHAR (15) , 
     CoDoi CHAR (8) , 
     FlEstado CHAR NOT NULL , 
     CONSTRAINT Usuario_PK PRIMARY KEY (CoUsuario)
    ) ENGINE = INNODB ;
 
         
CREATE TABLE Distrito 
    ( 
     CoDistrito VARCHAR (4) NOT NULL , 
     NoDistrito VARCHAR (50) NOT NULL , 
     CONSTRAINT Distrito_PK PRIMARY KEY (CoDistrito)
    )ENGINE = INNODB ; 

    
CREATE TABLE Parametro 
    ( 
     SsTarifaBase DECIMAL (5,2) 
    ) ENGINE = INNODB ;

    
CREATE TABLE Sede 
    ( 
     CoCliente CHAR (6) NOT NULL , 
     CoCede CHAR (6) NOT NULL , 
     TxDireccion VARCHAR (50) NOT NULL , 
     TxTelefono VARCHAR (10) , 
     CoDistrito1 CHAR (4) NOT NULL , 
     CONSTRAINT Sede_PK PRIMARY KEY (CoCede)
    ) ENGINE = INNODB ;


CREATE TABLE Unidad 
    ( 
     CoUnidad CHAR (6) NOT NULL , 
     CoConductor CHAR (6) NOT NULL , 
     CoPlVehiculo CHAR (6) NOT NULL , 
     NoConductor VARCHAR (30) NOT NULL , 
     CONSTRAINT Unidades_PK PRIMARY KEY (CoUnidad)
    ) ENGINE = INNODB ;


CREATE TABLE Reserva 
    ( 
     CoUsuario CHAR (6) NOT NULL , 
     CoCliente CHAR (6) NOT NULL , 
     CoReserva CHAR (6) NOT NULL , 
     CoUnidad CHAR (6) NOT NULL , 
     FeReserva DATE NOT NULL , 
     SsTarifaTot DECIMAL (8,2) NOT NULL , 
     FlEstado CHAR NOT NULL , 
     CONSTRAINT PK_Reserva PRIMARY KEY (CoUsuario, CoReserva, CoUnidad, CoCliente)
    ) ENGINE = INNODB ;


CREATE TABLE ReservaCede	 
    ( 
     CoUsuario CHAR (6) NOT NULL , 
     CoCliente CHAR (6) NOT NULL , 
     CoReserva CHAR (6) NOT NULL , 
     CoCede CHAR (6) NOT NULL , 
     SsTarifa DECIMAL (5,2) ,

     CONSTRAINT PK_ReservaCedes PRIMARY KEY (CoUsuario, CoReserva, CoCliente, CoCede)
    ) ENGINE = INNODB ;
 
  
CREATE TABLE Servicio 
    ( 
     CoUsuario CHAR (6) , 
     CoReserva CHAR (6) , 
     CoUnidad CHAR (6) , 
     CoCliente CHAR (6) , 
     FeServicio DATE NOT NULL , 
     SsTarifaTot DECIMAL (8,2) 
    ) ENGINE = INNODB ;

    
