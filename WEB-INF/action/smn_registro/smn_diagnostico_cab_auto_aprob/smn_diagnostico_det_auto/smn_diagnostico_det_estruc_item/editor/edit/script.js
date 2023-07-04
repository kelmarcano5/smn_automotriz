setComboValue('smn_diagnostico_det_auto_id','${fld:smn_diagnostico_det_auto_id}','form1');
setComboValue('smn_componentes_rf','${fld:smn_componentes_rf}','form1');
setComboValue('smn_item_rf','${fld:smn_item_rf}','form1');
setComboValue('smn_servicio_rf','${fld:smn_servicio_rf}','form1');
document.form1.id.value='${fld:smn_diagnostico_det_estruc_item_id@#######}';
document.form1.dde_cantidad.value='${fld:dde_cantidad@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

setComboValue('smn_tipo_componente','${fld:smn_tipo_componente}','form1');
setComboValue('smn_forma_calculo_rf','${fld:smn_forma_calculo_rf}','form1');
setComboValue('smn_visible_rf','${fld:smn_visible_rf}','form1');
setComboValue('smn_grupo_prestador_rf','${fld:smn_grupo_prestador_rf}','form1');

setComboValue('smn_nivel_estructura_rf','${fld:smn_nivel_estructura_rf}','form1');
document.form1.cmp_porcentaje.value='${fld:cmp_porcentaje@#,###,###0.00}';


chgCombo1('${fld:smn_nivel_estructura_rf}');


	//var geo_id1 = null;
	function chgCombo1(id)
	{		
		//var estes = document.getElementById('smn_nivel_estructura_rf').value;
		//alert(id);
		//document.form1.smn_item_rf.disabled=false;
		
		//var combo = document.getElementById('smn_componentes_rf');
		//var valueCombo = getIDSelectedIndex(combo);
		//geo_id1 = valueCombo.split("-").pop().trim();
		
		//findLocation(geo_id0, '');
		
		if (id!=null && id!="") 
		{
			return ajaxCall(	
							httpMethod="GET", 
							uri="${def:actionroot}/getitem?id=" + id, 
							divResponse=null, 
							divProgress="status", 
							formName="form1", 
							afterResponseFn=setElementFirstIndex('smn_item_rf'), //function 'setElementFirstIndex' select first element of combo list
							onErrorFn=null);				
		}
		
	}