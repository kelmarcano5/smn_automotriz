setComboValue('smn_diagnostico_cab_auto_id','${fld:smn_diagnostico_cab_auto_id}','form1');
setComboValue('smn_servicio_rf','${fld:smn_servicio_rf}','form1');
document.form1.did_observacion.value='${fld:did_observacion@js}';
document.form1.id.value='${fld:smn_diagnostico_det_auto_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

