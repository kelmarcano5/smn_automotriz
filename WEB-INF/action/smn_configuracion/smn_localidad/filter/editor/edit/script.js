document.form1.loc_codigo.value='${fld:loc_codigo@js}';
document.form1.loc_descripcion.value='${fld:loc_descripcion@js}';
setComboValue('loc_status','${fld:loc_status}','form1');
document.form1.id.value='${fld:smn_localidad_id}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");
<rows>setCheckboxValue('smn_sector_id','${fld:smn_sector_id}','form1');</rows>

