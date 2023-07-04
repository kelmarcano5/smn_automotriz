setComboValue('smn_tipo_documento_id','${fld:smn_tipo_documento_id}','form1');
setComboValue('smn_transaccion_general_rf','${fld:smn_transaccion_general_rf}','form1');
document.form1.doc_codigo.value='${fld:doc_codigo@js}';
document.form1.doc_nombre.value='${fld:doc_nombre@js}';
document.form1.id.value='${fld:smn_documento_id@#,###,###}';

document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.doc_codigo.disabled=true;
 

