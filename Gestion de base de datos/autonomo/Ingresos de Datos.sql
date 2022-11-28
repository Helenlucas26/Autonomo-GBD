/*----SCRIPT DE INGRESOS DE DATOS A LAS TABLAS----*/

INSERT INTO public.provincia(
	id_provincia, nom_provincia)VALUES
	(1, 'Manabi'),
	(2, 'Pichincha'),
	(3, 'Santa Elena');
	
	
INSERT INTO public.cuidad(
	id_ciudad, nom_cuidad)VALUES 
	(1, 'Manta'),
	(2, 'Montecristi'),
	(3, 'Quito'),
	(4, 'Cayambe'),
	(5, 'Los Bajos'),
	(6, 'Salinas');
	
	
INSERT INTO public.sector(
	id_sector, nom_sector)VALUES 
	(1, 'Barrio Santa Martha'),
	(2, 'Cuna de Alfaro'),
	(3, 'Santa Barbara'),
	(4, 'Auora'),
	(5, 'Santa Fe'),
	(6, 'Santa Rosa');
	
	
INSERT INTO public.ubicacion(
	id_ubi, id_sector, id_provin, id_ciudad)VALUES 
	(1, 1, 1, 1),
	(2, 3, 2, 3),
	(3, 6, 3, 6);
	
	
INSERT INTO public.tipo_empleado(
	id_tipo_emp, tipo_emp)VALUES 
	(1, 'Administrativo'),
	(2, 'Tecnico');
	
	
INSERT INTO public.tipo_servicio(
	id_tipo_serv, nom_tipo_serv) VALUES 
	(1, 'Instalacion'),
	(2, 'Mantenimiento'),
	(3, 'Medicion');
	
	
SET DATESTYLE TO 'European';
INSERT INTO public.empleado(
	id_emp, id_tipo_emp, cedula_emp, nombre_emp, apellido_emp, email_emp, fecha_nac_emp, tipo_sangre_emp, direccion_emp)VALUES 
	(1, 1, 1317567327, 'Helen Gabriela', 'Lucas Cevallos', 'Gaby@gmail.com', '26/12/2001', 'B+', 'Barrio santa fe calle 11 av 26'),
	(2, 1, 1305584587, 'Sergio Adrian', 'Rodriguez Lopez', 'SA@gmail.com', '31/08/2001', 'A+', 'Barrio San Agustin'),
	(3, 2, 1388415151, 'Luis Alfredo', 'Sanchez Briones', 'LASanchez@gmail.com', '07/05/2001', 'O-', 'Barrio Cuba'),
	(4, 2, 1300854414, 'Monica Alejandra', 'Luas Cevallos', 'moni@gmail.com', '14/12/2001', 'A+', 'Barrio Costa azul calle principal'),
	(5, 2, 1311823151, 'Alejandro Javier', 'Mendoza Alcivar', 'ale45@gmail.com', '07/05/2001', 'A+', 'Barrio La pradera calle principal');
	

SET DATESTYLE TO 'European';
INSERT INTO public.cliente(
	id_cliente, id_ubi, cedula_cliente, nombre_cliente_, apellido_cliente, email_cliente, fecha_naci_cliente, direc_cliente)VALUES 
	(1, 1, 1304442444, 'Dayana Maria', 'Delgado Delgado', 'Dayi@gmail.com', '31/10/1990', 'Barrio Santa Martha calle 11 av 36'),
	(2, 2, 0958844485, 'Valeria Angelina', 'Luucas Garcia', 'Vald@gmail.com', '05/11/1989', 'Barrio Santa Clara'),
	(3, 3, 1512055423, 'Osmar Eduardo', 'Rodriguez Lopez', 'OsmL@gmail.com', '15/04/1980', 'Santa Rosa calle 30 de mayo');
		
		
INSERT INTO public.tipo_facturacion(
	id_tipo_fac, nombre_tipo_fac)VALUES 
	(1, 'Discapacidad'),
	(2, 'Residencial'),
	(3, 'Empresarial');
	
	
INSERT INTO public.tipo_solicitud(
	id_tipo_soli, nom_tipo_soli)VALUES 
	(1, 'Instalacion'),
	(2, 'Mantenimiento');
	
	
	
SET DATESTYLE TO 'European';
INSERT INTO public.contrato(
	id_contr, id_tipo_fac, id_emp, id_cliente, fch_contr)VALUES 
	(1, 1, 1, 1, '15/02/2022'),
	(2, 2, 1, 2, '16/04/2022'),
	(3, 3, 2, 3, '19/06/2022');


alter table servicio alter column costo_tipo_serv set data type real;
INSERT INTO public.servicio(
	id_serv, id_emp, id_tipo_fac, id_tipo_serv, costo_tipo_serv) VALUES 
	(1, 3, 1, 1, 24.99),
	(2, 4, 1, 2, 14.99),
	(3, 5, 1, 3, 1.99),
	(4, 3, 2, 1, 34.99),
	(5, 4, 2, 2, 24.99),
	(6, 5, 2, 3, 2.99),
	(7, 3, 3, 1, 74.99),
	(8, 4, 3, 2, 44.99),
	(9, 5, 3, 3, 4.99);
	
	
SET DATESTYLE TO 'European';
INSERT INTO public.bitacora_intalacion(
	id_bitacora, id_serv, id_ubi, fecha_bitacora, dinero_consumido)VALUES 
	(1, 1, 1, '17/02/2022', 350.85),
	(2, 4, 2, '18/04/2022', 465.39),
	(3, 7, 3, '21/06/2022', 960.54),
	(4, 2, 1, '15/06/2022', 20.85);
	
SET DATESTYLE TO 'European';
INSERT INTO public.facturacion(
	id_fac, id_ubi, id_serv, id_emp, id_cliente, fch_fac)VALUES 
	(1, 1, 1, 2, 1, '28/02/2022'),
	(2, 2, 4, 2, 2, '30/04/2022'),
	(3, 3, 7, 1, 3, '30/06/2022'),
	(4, 1, 1, 2, 1, '28/02/2022'),
	(5, 2, 2, 1, 1, '15/05/2022'),
	(6, 2, 8, 3, 3, '15/07/2022'),
	(7, 2, 8, 3, 3, '15/08/2022');
	
SET DATESTYLE TO 'European';
INSERT INTO public.solicitud(
	id_soli, id_ubi, id_tipo_soli, id_cliente, fecha_inicio_solicitud)VALUES 
	(1, 1, 1, 1, '14/02/2022'),
	(2, 2, 1, 2, '15/07/2022'),
	(3, 3, 1, 3, '18/06/2022'),
	(4, 3, 2, 3, '15/10/2022'),
	(5, 3, 2, 1, '14/06/2022');
	
	
	
SET DATESTYLE TO 'European';
INSERT INTO public.convenio(
	id_conv, id_cliente, id_emp, id_contr, nom_est_conv, fecha_conv)VALUES 
	(1, 2, 1, 2, 'Conv. Vigente', '30/05/2022'),
	(2, 2, 1, 2, 'Conv. Vigente', '30/06/2022'),
	(3, 1, 2, 1, 'Conv. Cancelado', '30/07/2022');
	