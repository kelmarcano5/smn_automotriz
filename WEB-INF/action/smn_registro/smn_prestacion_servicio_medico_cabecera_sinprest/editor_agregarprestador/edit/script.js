document.form1.smn_auxiliar_rf.value='${fld:smn_auxiliar_rf@js}';
document.form1.igs_num_ingreso_pl0.value='${fld:igs_num_ingreso_pl0@#######}';
document.form1.smn_grupo_prestador_rf.value='${fld:smn_grupo_prestador_rf_rf@js}';
setComboValue('smn_prestador_servicio_rf','${fld:smn_prestador_servicio_rf}','form1');
document.form1.id.value='${fld:smn_prestacion_servicio_medico_cabecera_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

