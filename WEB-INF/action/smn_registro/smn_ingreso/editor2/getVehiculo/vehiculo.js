var vh = '${fld:placa}';
var vd = '${fld:idd}';

//alert(vh+" id= "+vd);
if (vh == '') {
	document.getElementById('cts_auxiliar').value='';
}else{
	document.getElementById('cts_auxiliar').value=vd;
}
