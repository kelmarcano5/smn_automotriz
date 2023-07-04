setComboValue('smn_documento_id','${fld:smn_documento_id}','form1');
document.form1.cnt_numero_control.value='${fld:cnt_numero_control@#,###,###}';
setComboValue('smn_clase_auxiliar_rf','${fld:smn_clase_auxiliar_rf}','form1');
setComboValue('smn_auxiliar_rf','${fld:smn_auxiliar_rf}','form1');
setComboValue('smn_plan_id','${fld:smn_plan_id}','form1');
document.form1.cnt_fecha_de_inicio.value='${fld:cnt_fecha_de_inicio@dd-MM-yyyy}';
document.form1.cnt_cantidad_citas.value='${fld:cnt_cantidad_citas@#,###,###}';
document.form1.id.value='${fld:smn_contratante_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

