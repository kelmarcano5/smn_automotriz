SELECT 
smn_automotriz.smn_contratante.smn_contratante_id as id,	
smn_automotriz.smn_contratante.cnt_numero_control || ' - ' || smn_automotriz.smn_contratante.smn_auxiliar_rf as item
	
from 
	smn_automotriz.smn_contratante