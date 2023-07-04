select
select
	case
	when smn_automotriz.smn_rol.rol_tipo='SO' then '${lbl:b_solicitante}'
	when smn_automotriz.smn_rol.rol_tipo='AP' then '${lbl:b_autorizador}'
	when smn_automotriz.smn_rol.rol_tipo='AM' then '${lbl:b_ambos}'
	end as rol_tipo_combo,
select
select
select
select
select
select
	smn_automotriz.smn_rol.*
from
	smn_automotriz.smn_rol
where
	smn_rol_id = ${fld:id}
