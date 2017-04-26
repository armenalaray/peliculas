<?php
include "connect.php";

$index = "";
if(isset($_GET["indice"])){
	$index = $_GET["indice"];
}
$sql = "SELECT * FROM peliculas";
switch($index){
	case 1:
		//fecha
		$sql = "SELECT * FROM peliculas ORDER BY fechaPub DESC;";
	break;
	case 2:
	//drama
		$sql = "SELECT peliculascategorias.idCategorias, peliculas.*
				FROM peliculascategorias
				INNER JOIN peliculas
				ON peliculascategorias.idPeliculas = peliculas.id
				WHERE peliculascategorias.idCategorias = 1;";
	break;
	case 3:
	//accion
		$sql = "SELECT peliculascategorias.idCategorias, peliculas.*
				FROM peliculascategorias
				INNER JOIN peliculas
				ON peliculascategorias.idPeliculas = peliculas.id
				WHERE peliculascategorias.idCategorias = 5;";

	break;
	case 4:
	//todo
		$sql = "SELECT * FROM peliculas";
	
	break;
	default:
	$sql = "SELECT * FROM peliculas";
}



$result = $conn->query($sql);
$table = array();
$i = 0;
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
		$id = $row["id"];
		$nombre = $row["nombre"];
		$fechaPub = $row["fechaPub"];
		$director = $row["director"];
		$duracion = $row["duracion"];
		$sinopsis = $row["sinopsis"];
		$contentRating = $row["contentRating"];
		$poster = $row["poster"];
		
		$fila = array("id"=>$id,
		"nombre"=> utf8_encode($nombre), 
		"fechaPub"=>$fechaPub,
		"director"=>utf8_encode($director),
		"duracion"=>$duracion,
		"sinopsis"=>utf8_encode($sinopsis),
		"contentRating"=>utf8_encode($contentRating),
		"poster"=>$poster);
		
		$table[$i]=$fila;
		$i += 1;
		
	}
	echo json_encode($table);
}
else{
	echo "0 results";
}


?>

