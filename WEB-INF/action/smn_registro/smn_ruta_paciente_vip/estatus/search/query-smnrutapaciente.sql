select smn_automotriz.smn_estatus.sta_cod_siguiente as id, 
	case
		when smn_automotriz.smn_estatus.sta_cod_siguiente='PE' then '${lbl:b_pend}'
		when smn_automotriz.smn_estatus.sta_cod_siguiente='EA' then '${lbl:b_enaten}'
		when smn_automotriz.smn_estatus.sta_cod_siguiente='AT' then '${lbl:b_atend}'
	end as item from smn_automotriz.smn_estatus
