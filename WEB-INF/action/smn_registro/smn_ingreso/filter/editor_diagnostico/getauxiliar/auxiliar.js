listboxClear("smn_auxiliar_rf_prest");

var optionChoose = document.createElement("option");
optionChoose.text = '[${lbl:b_choose}]';
optionChoose.value = "0";
document.form1.smn_auxiliar_rf_prest.add(optionChoose, 0);

<smn_auxiliar_rf_prest_rows>
	var option = document.createElement("option");
	option.text = "${fld:item@js}"; 
	option.value = "${fld:id}";
	document.form1.smn_auxiliar_rf_prest.add(option, 0);
</smn_auxiliar_rf_prest_rows>


