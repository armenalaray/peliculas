export function miAjax(index){
	$.ajax({
		data: {"indice" : index},
        type: "GET",
		dataType: 'jsonp',
        url:"peliculas.php",
        async: true,
        success: function(datos){
            var dataJson = eval(datos);
            
         			
			
			for(var i in dataJson){
				ix=ix+1;
				id=dataJson[i].id;
				tipo=dataJson[i].nombre;
				datobd=dataJson[i].dato;
			}
		},
        error: function (obj, error, objError){
           
        }
	});
}
