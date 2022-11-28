CREATE OR REPLACE FUNCTION RESTRICCION_CONVENIO() RETURNS TRIGGER
AS 
    $RESTRICCION_CONVENIO$
DECLARE
    CANTIDAD INT;
BEGIN
 select 
 	count (convenio.nom_est_conv) into CANTIDAD
 from convenio 
 	inner join cliente on cliente.id_cliente=convenio.id_cliente
 	inner join contrato on contrato.id_contr=convenio.id_contr
 where convenio.id_cliente = new.id_cliente; 
    if (CANTIDAD  > 2) THEN
        RAISE EXCEPTION 'Esta persona llego al limite de convenios.';
    END IF;
    RETURN NEW;
END;
$RESTRICCION_CONVENIO$
LANGUAGE plpgsql;

CREATE TRIGGER RESTRICCION_CONVENIO AFTER
INSERT ON CONVENIO FOR EACH ROW
EXECUTE PROCEDURE RESTRICCION_CONVENIO();

/*----SCRIPT PARA PRUEBA-------*/

INSERT INTO public.convenio(
	id_conv, id_cliente, id_emp, id_contr, nom_est_conv, fecha_conv)VALUES 
	(6, 1, 2, 2, 'Conv. Vigente', '30/06/2022');
