/*----DATOS ALMACENADOS----*/
/*A nivel de datos almacenados quiero poder ingresar como dato de entrada el nombre de 
un técnico y que aparezcan cuantas instalaciones y reparaciones ha realizado por año*/


CREATE OR REPLACE FUNCTION CANTIDAD_SERVICIO(character varying) returns setof "record"
 as $CANTIDAD_SERVICIO$
	 select
		 extract (year from facturacion.fch_fac) as fecha,
		 empleado.nombre_emp as tecnico,
		 tipo_servicio.nom_tipo_serv as tipo_servicio,
		 count (tipo_servicio.nom_tipo_serv) as cantidad
	 from facturacion
		 inner join servicio on servicio.id_serv=facturacion.id_serv
		 inner join empleado on empleado.id_emp=servicio.id_emp
		 inner join tipo_servicio on tipo_servicio.id_tipo_serv=servicio.id_tipo_serv

     WHERE empleado.nombre_emp = $1
     group by 
     	 extract (year from facturacion.fch_fac),
         empleado.nombre_emp,
         tipo_servicio.nom_tipo_serv
   $CANTIDAD_SERVICIO$
LANGUAGE sql;



/*----SCRIPT DE PRUEBA----*/

select * from CANTIDAD_SERVICIO('Luis Alfredo') as 
  ( "Fecha" double precision, "Tecnico" character varying, "Tipo servicio" character varying, "Cantidad" bigint);
  
  select * from CANTIDAD_SERVICIO('Luis Alfredo') as 
  ( "Fecha" double precision, "Tecnico" character varying, "Tipo servicio" character varying, "Cantidad" bigint);