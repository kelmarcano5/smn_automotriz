select smn_automotriz.smn_afiliados.smn_afiliados_id as id, smn_automotriz.smn_afiliados.afi_num_control || ' - ' || smn_automotriz.smn_afiliados.afi_nombres || ' ' || smn_automotriz.smn_afiliados.afi_apellidos as item from smn_automotriz.smn_afiliados order by 2