<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	
		<div id="titulo">
		Peliculas
		</div>
	<div id="main">
		
		<div id = "maincontent">
			<div class= "contenido">
				<img src="img/theCirclePoster.jpg" alt="imag" height="100%">
				
					<ul class = "text">
						<div class = "moviename">The Circle</div>
						<li class = "movietext">Fecha de Publicacion: 2017-04-28</li>
						<li class = "movietext">Director: James Ponsoldt</li>
						<li class = "movietext">110 mins</li>
						<li class = "movietext">A woman lands a dream job at a powerful tech company called the Circle, only to uncover a nefarious agenda that will affect the lives of her friends, family and that of humanity.</li>
						<li class = "movietext">MPAA: PG-13</li>
					</ul>			
				
			</div>
		</div>
		
		<div id="opciones">
			<ul class = "menu">
			<form>
				<li class = "boton"><a index ="1">Fecha</a></li>
				<li class = "boton"><a index ="2">Drama</a></li>
				<li class = "boton"><a index ="3">Accion</a></li>
				<li class = "boton"><a index ="4">Todos</a></li>
			</form>
			</ul>
		</div>
	</div>
<script src="js/jQuery.js"></script>
<script>
$(document).ready(function(){
	$("a").click(function(){
		var index = $(this).attr("index");
		$.ajax({url: "demo_test.txt", success: function(result){
            $("#div1").html(result);
        }});
	});
	
});

</script>
</body>
</html>














