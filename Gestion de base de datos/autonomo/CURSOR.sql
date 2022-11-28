/*-----CURSOR-----*/
/*A nivel de cursor quiero que aparezca en cada año en cada sector cuantas instalaciones 
(ya sea residencial, empresarial o discapacitados que son tipos de facturación) y cuantas 
|reparaciones se han hecho en ese sector*/

DO $$
DECLARE
    TABLATEM RECORD;
    CON_CURSOR CURSOR FOR
     SELECT 
        extract (year from facturacion.fch_fac) as fecha,
		sector.nom_sector as sect,
		tipo_facturacion.nombre_tipo_fac as tipo_fact,
		tipo_servicio.nom_tipo_serv as tipo_serv,
		count (tipo_facturacion.nombre_tipo_fac) as cantidad
	from facturacion
		inner join ubicacion on ubicacion.id_ubi=facturacion.id_ubi
		inner join sector on sector.id_sector=ubicacion.id_sector
		inner join servicio on servicio.id_serv=facturacion.id_serv
		inner join tipo_servicio on tipo_servicio.id_tipo_serv=servicio.id_tipo_serv
		inner join tipo_facturacion on tipo_facturacion.id_tipo_fac=servicio.id_tipo_fac
	group by 
		extract (year from facturacion.fch_fac),
		sector.nom_sector,
		tipo_facturacion.nombre_tipo_fac,
		tipo_servicio.nom_tipo_serv;

BEGIN

  FOR TABLATEM IN CON_CURSOR LOOP
  RAISE NOTICE 'Fecha: %, Sector:  %, Tipo Facturacion:  %,Tipo_servicio: %, cantidad : %',
  TABLATEM.fecha,  TABLATEM.sect, TABLATEM.tipo_fact, TABLATEM.tipo_serv, TABLATEM.cantidad;
  END LOOP;

END $$
LANGUAGE 'plpgsql'