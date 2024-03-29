
-- =============================================
-- Cargar Datos de Prueba
-- =============================================

-- Tabla: Cliente

INSERT INTO cliente  VALUES( 'C00001', '10078345849', 'Banco BCP', 'Ernesto Enrique Paredes Espinoza', '1' );
INSERT INTO cliente  VALUES( 'C00002', '10065743102', 'Banco InterBank', 'Carlos Alberto Trujillo', '1');
INSERT INTO cliente  VALUES( 'C00003', '20085304383', 'Banco Continental', 'Lidia Carmen Lima', '1' );
INSERT INTO cliente  VALUES( 'C00004', '20023498305', 'Banco Financiero', 'Claudia Olavide Jodida', '1' );
INSERT INTO cliente  VALUES( 'C00005', '10085498348', 'Banco HSBC', 'Angelica Sotomayor Mejia', '1');

-- Tabla: Usuario

INSERT INTO usuario VALUES( 'C00001', 'U00001', '07448786', 'Romero', 'Castillo', 'Carlos Alberto', 'Trujillo', '1' );
INSERT INTO usuario VALUES( 'C00001', 'U00002', '07777776', 'Castro', 'Vargas', 'Lidia', 'lcastro', '1' );
INSERT INTO usuario VALUES( 'C00001', 'U00003', '06666667', 'Reyes', 'Ortiz', 'Connie', 'aortiz', '1' );
INSERT INTO usuario VALUES( 'C00002', 'U00001', '08989898', 'Ramos', 'Garibay', 'Angelica', 'aramos', '1');
INSERT INTO usuario VALUES( 'C00002', 'U00002', '09898989', 'Ruiz', 'Zabaleta', 'Claudia', 'cvalencia', '1' );


-- Tabla: Distrito

insert into distrito values ( 'D001', 'Lima Cercado' );
insert into distrito values ( 'D002', 'San Isidro' );
insert into distrito values ( 'D003', 'Miraflores' );
insert into distrito values ( 'D004', 'Magdalena' );
insert into distrito values ( 'D005', 'San Miguel' );
insert into distrito values ( 'D006', 'Jesus Maria' );
insert into distrito values ( 'D007', 'Publo Libre' );
insert into distrito values ( 'D008', 'San Martin' );
insert into distrito values ( 'D009', 'Los Olivos' );


-- Tabla: Parametros

insert into parametro values ( 10.00 );


-- Tabla: Sede

insert into sede values ( 'C00001','S00001', 'Av. Pardo 345', '5839051', 'D002', '1' );
insert into sede values ( 'C00001','S00002', 'Jr. Mini Rivas 543', '5671324', 'D008', '1' );
insert into sede values ( 'C00001','S00003', 'Av. Pardo 345', '5839051', '0002', '1' );
insert into sede values ( 'C00002','S00001', 'Jr. Mini Rivas 543', '1324124', 'D008', '1' );
insert into sede values ( 'C00002','S00002', 'Av. San Martin 345', '5675670', 'D009', '1' );
insert into sede values ( 'C00002','S00003', 'Av. Rivaguero 666', '5674321', 'D001', '1' );


-- Tabla: Unidad

insert into unidad values('M00001','E00001','I60426','Segura Acosta, Filomeno', '1' , '1' );
insert into unidad values('M00002','E00002','F60436','Acosta Acosta, Sergio', '1' , '1' );
insert into unidad values('M00003','E00003','G60446','Mamani Pumacahua, Felipe', '1' , '1' );
insert into unidad values('M00004','E00004','H60456','Maradona Acosto, Francisco', '1' , '1' );
insert into unidad values('M00005','E00005','K60466','Rogriguez Mamani, Felix', '1' , '1' );


-- Tabla: Reserva

insert into reserva values( 'C00001', 'U00001', 'R00001', 'M00001', '20101108', 55.60, '1' );
insert into reserva values( 'C00001', 'U00001', 'R00002', 'M00002', '20101109', 70.00, '1' );
insert into reserva values( 'C00001', 'U00001', 'R00003', 'M00004', '20101109', 170.00, '1' );
insert into reserva values( 'C00001', 'U00003', 'R00004', 'M00005', '20101109', 100.00, '1' );


-- Tabla: ReservaSede

insert into reservaSede values( 'C00001', 'U00001', 'R00001', 'S00001', 20.60, '1' );
insert into reservaSede values( 'C00001', 'U00001', 'R00001', 'S00002', 35.00, '1' );
insert into reservaSede values( 'C00001', 'U00001', 'R00002', 'S00003', 70.00, '1' );
insert into reservaSede values( 'C00001', 'U00001', 'R00003', 'S00003', 100.00, '1');
insert into reservaSede values( 'C00001', 'U00001', 'R00003', 'S00001',  70.00, '1');
insert into reservaSede values( 'C00001', 'U00003', 'R00004', 'S00001', 100.00, '1');


-- Tabla: Servicio

insert into servicio values( 'C00001', 'U00001', 'S00001', 'R00001', '20101108', 55.60, '1' );
insert into servicio values( 'C00001', 'U00001', 'S00001', 'R00002', '20101109', 70.00, '1' );
insert into servicio values( 'C00001', 'U00001', 'S00001', 'R00003', '20101109', 170.00, '1' );

-- Tabla: usuario_web
INSERT INTO usuario_web VALUES('U00001', 'Romero', 'Castillo', 'Carlos Alberto', 'Trujillo', '1' );
INSERT INTO usuario_web VALUES('U00002',  'Castro', 'Vargas', 'Lidia', 'lcastro', '1' );
INSERT INTO usuario_web VALUES('U00003',  'Reyes', 'Ortiz', 'Connie', 'aortiz', '1' );
INSERT INTO usuario_web VALUES('U00004', 'Ramos', 'Garibay', 'Angelica', 'aramos', '1');
INSERT INTO usuario_web VALUES('U00005',  'Ruiz', 'Zabaleta', 'Claudia', 'cvalencia', '1' );










