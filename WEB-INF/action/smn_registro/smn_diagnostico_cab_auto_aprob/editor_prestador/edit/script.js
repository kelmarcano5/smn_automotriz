document.form1.smn_ingresos_id.value='${fld:smn_ingresos_id@#,###,###}';
setComboValue('smn_clase_auxiliar_rf','${fld:smn_clase_auxiliar_rf}','form1');
setComboValue('smn_auxiliar_rf','${fld:smn_auxiliar_rf}','form1');
setComboValue('dia_estatus','${fld:dia_estatus}','form1');
document.form1.id.value='${fld:smn_diagnostico_cab_auto_id@#,###,###}';
 
//document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.getElementById("smn_ingresos_id").disabled=false;

 

