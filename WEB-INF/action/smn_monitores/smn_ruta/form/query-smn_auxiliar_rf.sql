select smn_base.smn_auxiliar.smn_auxiliar_id as id, smn_base.smn_auxiliar.aux_codigo || ' - ' || smn_base.smn_auxiliar.aux_nombres || ' ' ||  smn_base.smn_auxiliar.aux_apellidos as item from smn_base.smn_auxiliar order by smn_base.smn_auxiliar.aux_nombres, smn_base.smn_auxiliar.aux_apellidos