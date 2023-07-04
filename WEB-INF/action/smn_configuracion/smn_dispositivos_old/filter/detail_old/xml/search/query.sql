select
	case
	when smn_automotriz.smn_dispositivos.dis_tipo='DI' then '${lbl:b_digitalizador_dis}'
	when smn_automotriz.smn_dispositivos.dis_tipo='MO' then '${lbl:b_monitor_dis}'
	end as dis_tipo_combo,
select
select
select
select
select
	smn_automotriz.smn_dispositivos.*
from
	smn_automotriz.smn_dispositivos
where
	smn_dispositivos_id = ${fld:id}
