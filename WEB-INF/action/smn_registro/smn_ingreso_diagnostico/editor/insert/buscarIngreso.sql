select
		smn_automotriz.smn_ingresos.igs_estatus_financiero
from
		smn_automotriz.smn_ingresos
where
		smn_automotriz.smn_ingresos.igs_ticket = ${fld:igs_ticket}
