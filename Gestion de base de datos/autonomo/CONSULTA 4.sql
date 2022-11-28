/* CONSULTAS 4 */
/* Cantidad de dinero consumido por técnicos en instalaciones en cada sector en cada año.*/
 
 
 select 
 extract (year from bitacora_intalacion.fecha_bitacora) as fecha,
 sector.nom_sector as sector,
 sum (bitacora_intalacion.dinero_consumido) as dinero_consumido
 from bitacora_intalacion
 inner join ubicacion on ubicacion.id_ubi=bitacora_intalacion.id_ubi
 inner join sector on sector.id_sector=ubicacion.id_sector
 group by 
 extract (year from bitacora_intalacion.fecha_bitacora),
 sector.nom_sector