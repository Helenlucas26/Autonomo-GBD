/* CONSULTA 3*/
/* Histórico tipo de facturación por año, ubicación y cantidad de facturas por tipo.*/
 
 select
 extract (year from facturacion.fch_fac) as fecha,
 sector.nom_sector as sector,
 tipo_facturacion.nombre_tipo_fac as tipo_facturacion,
 count (tipo_facturacion.nombre_tipo_fac) as cantidad
 from facturacion
 inner join ubicacion on ubicacion.id_ubi=facturacion.id_ubi
 inner join sector on sector.id_sector=ubicacion.id_sector
 inner join servicio on servicio.id_serv=facturacion.id_serv
 inner join tipo_facturacion on tipo_facturacion.id_tipo_fac=servicio.id_tipo_fac
 group by  
 extract (year from facturacion.fch_fac),
 sector.nom_sector,
 tipo_facturacion.nombre_tipo_fac