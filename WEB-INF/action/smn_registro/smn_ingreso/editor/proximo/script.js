var uri = "${def:context}${def:actionroot}/form?usuario=${fld:usuario}&entidad_prestador=${fld:entidad_prestador}&sucursal_prestador=${fld:sucursal_prestador}&area_prestador=${fld:area_prestador}&unidad_prestador=${fld:unidad_prestador}&ruta_id=${fld:ruta_id}&auxiliar_id=${fld:auxiliar_id}";
//alert(uri);	
openDialog("editor300", uri, 1050, 600);