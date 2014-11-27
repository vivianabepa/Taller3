<?php
	include "includes/database.php";

	$PlacesID = $_GET['id'];
	$result = "";
	$tmp = [];

	$query = "SELECT * FROM users WHERE ID = '$id'";
	$resultado = mysqli_query($con, $query);

	while ( $row = mysqli_fetch_array($resultado) ) {
		$places["Nombre"] = $row["nombre"];
		$places["Noordenada"] = $row["coordenadas"];

		array_push($tmp, $places);
	}

	$result["error"] = false;
	$result["locations"] = $tmp;


	echo json_encode($result);
	
?>