uri = "${def:context}${def:actionroot}/../smn_ingreso_movimiento/form?id_ingreso=${fld:id}"+"&id_area=${fld:smn_areas_servicios_rf}&igs_estatus_financiero=PE&igs_fecha_registro=${def:date}";
//uri = "${def:context}${def:actionroot}/../smn_ingreso_movimiento/form?id_ingreso=${fld:id}"+"&id_area=12";
//openDialog("editor5", uri, 900, 900);
openDialog("editor950", uri, 1020, 580);