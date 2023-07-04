var elemento = window.document.getElementById('observaciones');
elemento.innerHTML="";
 //data-precio=\"'+precio+'\" calcularprecioingrediente(this, this)
<smn_observaciones_ingresos_id_rows>

	var id = "${fld:smn_observaciones_ingresos_id}";
	var item = "${fld:item}";
	//var precio = "${fld:precio}";


	var fila ='<label id="item">'+
				'<input name="smn_observaciones_ingresos_id" id="smn_observaciones_ingresos_id" type="checkbox" value="'+id+'" style="width:10px" onclick=\"concatenaritem2(this, this)\" data-name=\"'+item+'\">'+item+
			   '</label><br>';
				
    elemento.innerHTML += fila;
	
</smn_observaciones_ingresos_id_rows>







