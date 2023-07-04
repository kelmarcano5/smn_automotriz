setComboValue('smn_usuario_id','${fld:smn_usuario_id}','form1');
setComboValue('smn_rol_id','${fld:smn_rol_id}','form1');
document.form1.ptu_fecha.value='${fld:ptu_fecha@dd-MM-yyyy}';
setComboValue('smn_serie_id','${fld:smn_serie_id}','form1');
setComboValue('smn_entidades_rf','${fld:smn_entidades_rf}','form1');
setComboValue('smn_sucursales_rf','${fld:smn_sucursales_rf}','form1');
setComboValue('smn_areas_servicios_rf','${fld:smn_areas_servicios_rf}','form1');
setComboValue('ptu_estatus','${fld:ptu_estatus}','form1');
document.form1.id.value='${fld:smn_plan_turno_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

