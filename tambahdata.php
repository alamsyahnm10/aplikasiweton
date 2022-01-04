<?php
	$db = mysqli_connect('localhost','root','','userdata');
	if (!$db) {
		echo "Database connection faild";
	}

	$nama = $_POST['nama'];
	$hari = $_POST['hari'];

	$sql = "SELECT * FROM datapengguna WHERE nama = '".$nama."' AND hari = '".$hari."'";

	$result = mysqli_query($db,$sql);
	$count = mysqli_num_rows($result);

	if ($count == 1) {
		echo json_encode("Error");
	}else{
		$insert = "INSERT INTO datapengguna(nama,hari)VALUES('".$nama."','".$hari."')";
		$query = mysqli_query($db,$insert);
		if ($query) {
			echo json_encode("Success");
		}
	}

?>