/* CONSULTA 2 */
/* Histórico de solicitudes de servicios por sector.*/
 
 select 
 extract (year from solicitud.fecha_inicio_solicitud) as fecha,
 sector.nom_sector as sector,
 tipo_solicitud.nom_tipo_soli as tipo_solicitud,
 count (tipo_solicitud.nom_tipo_soli) as cantidad
 from solicitud
 inner join ubicacion on ubicacion.id_ubi=solicitud.id_ubi
 inner join sector on sector.id_sector=ubicacion.id_sector
 inner join tipo_solicitud on Tipo_solicitud.id_tipo_soli=solicitud.id_tipo_soli
 group by 
 extract (year from solicitud.fecha_inicio_solicitud),
 sector.nom_sector,
 tipo_solicitud.nom_tipo_soli