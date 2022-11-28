/*----CONSULTA PARA EL IREPORT---- */


select
 sector.nom_sector as sector,
 sum(servicio.costo_tipo_serv) as recaudacion
 from facturacion
 inner join ubicacion on ubicacion.id_ubi=facturacion.id_ubi
 inner join sector on sector.id_sector=ubicacion.id_sector
 inner join servicio on servicio.id_serv=facturacion.id_serv
 group by 
 sector.nom_sector 