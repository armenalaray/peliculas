<?php
include "connect.php"
?>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<?php
$sql = "SELECT * FROM peliculas";

$result = $conn->query($sql);

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
		
		$arr[] = array("id"=>$id,
		"nombre"=> utf8_encode($nombre), 
		"fechaPub"=>$fechaPub,
		"director"=>utf8_encode($director),
		"duracion"=>$duracion,
		"sinopsis"=>utf8_encode($sinopsis),
		"contentRating"=>utf8_encode($contentRating),
		"poster"=>$poster);
		
		echo json_encode($arr);
	}
}
else{
	echo "0 results";
}
?>
</body>
</html>
