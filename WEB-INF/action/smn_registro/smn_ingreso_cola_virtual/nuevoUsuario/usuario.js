alertBox ('${lbl:b_num_ticket_colaV}: ${fld:serie}-${fld:id}', '${lbl:b_continue_button}', null);
document.getElementById("write").value = "";

var cedula = '${fld:cedula}';
var serie = '${fld:serie}';

if (serie == 'A'){


ajaxCall(	
				httpMethod="POST", 
				uri="${def:actionroot}/insertarRutaNuevoPaciente2?cedula=" + cedula + "&serie=" + serie, 
				divResponse=null, 
				divProgress="status", 
				formName="form1", 
				afterResponseFn=null, 
				onErrorFn=null);


}else if (serie == 'B'){


	ajaxCall(	
									httpMethod="POST", 
									uri="${def:actionroot}/insertarRutaPacienteregistrado2?cedula=" + cedula + "&serie=" + serie, 
									divResponse=null, 
									divProgress="status", 
									formName="form1", 
									afterResponseFn=null, 
									onErrorFn=null);

}else if (serie == 'C'){


	ajaxCall(	
									httpMethod="POST", 
									uri="${def:actionroot}/insertarRutaPacienteregistrado?cedula=" + cedula + "&serie=" + serie, 
									divResponse=null, 
									divProgress="status", 
									formName="form1", 
									afterResponseFn=null, 
									onErrorFn=null);

}else if (serie == 'D'){


	ajaxCall(	
									httpMethod="POST", 
									uri="${def:actionroot}/insertarRutaPacienteregistrado?cedula=" + cedula + "&serie=" + serie, 
									divResponse=null, 
									divProgress="status", 
									formName="form1", 
									afterResponseFn=null, 
									onErrorFn=null);

}

