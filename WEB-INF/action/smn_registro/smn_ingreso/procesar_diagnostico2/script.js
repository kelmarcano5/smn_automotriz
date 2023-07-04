//search();
//alertBox('El estatus fue actualizado en la base de datos', 'Continuar', null, null);
//alert("si llega aqui");
var f = '${fld:id_ingreso}';
//alert('${fld:id_ingreso}');
agregarprestador(f);

function agregarprestador(id) {
	var uri = "${def:context}${def:actionroot}/editor_diagnostico/form?id_ingreso="+id;
	//alert(uri);
	openDialog("editor6", uri, 650, 400);
}
