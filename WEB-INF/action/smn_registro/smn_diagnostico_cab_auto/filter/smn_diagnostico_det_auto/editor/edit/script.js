setComboValue('smn_diagnostico_cab_auto_id','${fld:smn_diagnostico_cab_auto_id}','form1');
document.form1.did_observacion.value='${fld:did_observacion@js}';
document.form1.descripcion_sintoma.value='${fld:descripcion_sintoma@js}';
document.form1.id.value='${fld:smn_diagnostico_det_auto_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

<rows>selectSmnServiciosId('${fld:smn_servicios_id}','${fld:svc_codigo}');</rows> 

