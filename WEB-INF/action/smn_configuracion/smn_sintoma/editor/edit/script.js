document.form1.stm_codigo.value='${fld:stm_codigo@js}';
document.form1.stm_descripcion.value='${fld:stm_descripcion@js}';
document.form1.id.value='${fld:smn_sintoma_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.stm_codigo.disabled=true;
 

