setComboValue('smn_diagnostico_cab_auto_id','${fld:smn_diagnostico_cab_auto_id}','form1');
document.form1.did_observacion.value='${fld:did_observacion@js}';
document.form1.id.value='${fld:smn_diagnostico_det_auto_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

var elemento = window.document.getElementById('ing');
<rows>

	var id = "${fld:smn_ingredientes_id}";
	var item = "${fld:item}";
	//var precio = "${fld:precio}"; calcularprecioingrediente(this, this)data-precio=\"'+precio+'\"

	var fila ='<label id="item">'+
				'<input name="smn_ingredientes_id" id="smn_ingredientes_id" type="checkbox" value="'+id+'" style="width:10px" onclick=\"concatenaritem(this, this);\" data-name=\"'+item+'\" >'+item+
			   '</label><br>';
					
   elemento.innerHTML += fila;

    //setCheckboxValue('smn_ingredientes_id','${fld:smn_ingredientes_id}','form1');
   
</rows>
 

