/*
Empresa        :  TaxiEmpresarial
Software       :  Sistema de Servicio de Taxi
DBMS           :  MySQL Server
Base de Datos  :  TaxiEmpresarial
Script         :  Crea la Base de Datos
Versión        :  1.3

*/

DROP DATABASE taxiempresarial;

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
DROP TABLE IF EXISTS reservaSede;
DROP TABLE IF EXISTS sede;
DROP TABLE IF EXISTS servicio;
DROP TABLE IF EXISTS unidad;
DROP TABLE IF EXISTS Usuario;
DROP TABLE IF EXISTS UsuarioWeb;

-- =============================================
-- Creaci�n de los Objetos de la Base de Datos
-- =============================================

CREATE TABLE Cliente 
    ( 
     CLCoCliente CHAR (6) NOT NULL ,
     CLCoRucCliente CHAR (11) NOT NULL ,
     CLNoRazSocial VARCHAR (25) NOT NULL ,
     CLNoRepreLegal VARCHAR (40) ,
     CLEstado CHAR NOT NULL ,
     CONSTRAINT Cliente_PK PRIMARY KEY (CLCoCliente)
    ) ENGINE = INNODB ;


CREATE TABLE Usuario 
    ( 
     USCoCliente CHAR (6) NOT NULL ,
     USCoUsuario CHAR (6) NOT NULL ,
     USCoDoi CHAR (8) NOT NULL ,
     USNoPaterno VARCHAR (25) NOT NULL ,
     USNoMaterno VARCHAR (25) NOT NULL ,
     USNoNombres VARCHAR (25) NOT NULL ,
     USCoClave CHAR (15)NOT NULL ,
     USFlEstado CHAR NOT NULL ,
     CONSTRAINT Usuario_PK PRIMARY KEY (USCoCliente, USCoUsuario)
    ) ENGINE = INNODB ;
 

CREATE TABLE UsuarioWeb
    (USCoUsuario CHAR (6) NOT NULL ,
     USNoPaterno VARCHAR (25) NOT NULL ,
     USNoMaterno VARCHAR (25) NOT NULL ,
     USNoNombres VARCHAR (25) NOT NULL ,
     USCoClave CHAR (15)NOT NULL ,
     USFlEstado CHAR NOT NULL ,
     CONSTRAINT Usuario_PK PRIMARY KEY ( USCoUsuario)
    ) ENGINE = INNODB ;
         
CREATE TABLE Distrito 
    ( 
     DICoDistrito VARCHAR (4) NOT NULL ,
     DINoDistrito VARCHAR (50) NOT NULL ,
     DIVaDistrito INTEGER NOT NULL,
     CONSTRAINT Distrito_PK PRIMARY KEY (DICoDistrito)
    )ENGINE = INNODB ; 

    
CREATE TABLE Parametro 
    ( 
     PASsTarifaBase DECIMAL (5,2)
    ) ENGINE = INNODB ;

    
CREATE TABLE Sede 
    ( 
     SECoCliente CHAR (6) NOT NULL ,
     SECoSede CHAR (6) NOT NULL ,
     SETxDireccion VARCHAR (50) NOT NULL ,
     SETxTelefono VARCHAR (10) ,
     SECoDistrito CHAR (4) NOT NULL ,
     SEFlEstado CHAR NOT NULL ,
     CONSTRAINT Sede_PK PRIMARY KEY (SECoCliente, SECoSede)
    ) ENGINE = INNODB ;


CREATE TABLE Unidad 
    ( 
     UNCoUnidad CHAR (6) NOT NULL ,
     UNCoConductor CHAR (6) NOT NULL ,
     UNCoPlVehiculo CHAR (6) NOT NULL ,
     UNNoConductor VARCHAR (30) NOT NULL ,
     UNFlReservado CHAR NOT NULL ,
     UNFlEstado CHAR NOT NULL ,
     CONSTRAINT Unidades_PK PRIMARY KEY (UNCoUnidad)
    ) ENGINE = INNODB ;


CREATE TABLE Reserva 
    (
     RECoCliente CHAR (6) NOT NULL ,
     RECoUsuario CHAR (6) NOT NULL ,
     RECoReserva CHAR (6) NOT NULL ,
     RECoUnidad CHAR (6) NOT NULL ,
     REFeReserva DATE NOT NULL ,
     REFeHoReserva CHAR (5) NOT NULL ,
     RESsTarifaTot DECIMAL (8,2) NOT NULL ,
     REFlEstado CHAR NOT NULL ,
     CONSTRAINT PK_Reserva PRIMARY KEY (RECoCliente, RECoUsuario, RECoReserva )
    ) ENGINE = INNODB ;


CREATE TABLE ReservaSede
    (
     RSCoCliente CHAR (6) NOT NULL ,
     RSCoUsuario CHAR (6) NOT NULL ,   
     RSCoReserva CHAR (6) NOT NULL ,
     RSCoSede CHAR (6) NOT NULL ,
     RSSsTarifa DECIMAL (5,2) ,
     RSFlEstado CHAR NOT NULL ,
     CONSTRAINT PK_ReservaCedes PRIMARY KEY (RSCoCliente, RSCoUsuario, RSCoReserva, RSCoSede  )
    ) ENGINE = INNODB ;
 
  
CREATE TABLE Servicio 
    (
     SECoCliente CHAR (6) ,
     SECoUsuario CHAR (6) ,
     SECoServicio CHAR (6) ,
     SECoReserva CHAR (6) ,
     SEFeServicio DATE NOT NULL ,
     SESsTarifaTot DECIMAL (8,2) ,
     SEFlEstado CHAR NOT NULL ,
     CONSTRAINT PK_Reserva PRIMARY KEY (SECoCliente, SECoUsuario, SECoReserva )
    ) ENGINE = INNODB ;

    
