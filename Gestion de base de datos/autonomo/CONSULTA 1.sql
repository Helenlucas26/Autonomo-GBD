/* CONSULTA 1 */
/* Histórico de cantidad de consumo por sector año, sector, cantidad de dinero recogido por sector.*/

 select
 extract (year from facturacion.fch_fac) as fecha,
 sector.nom_sector as sector,
 sum(servicio.costo_tipo_serv) as recaudacion
 from facturacion
 inner join ubicacion on ubicacion.id_ubi=facturacion.id_ubi
 inner join sector on sector.id_sector=ubicacion.id_sector
 inner join servicio on servicio.id_serv=facturacion.id_serv
 group by 
 facturacion.fch_fac,
 sector.nom_sector