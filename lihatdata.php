<?php
    $db = mysqli_connect('localhost','root','','userdata');
    $sql = "SELECT * FROM datapengguna";
    $result = mysqli_query($db,$sql);
    $ray = array();
    while ($rowData = $result->fetch_assoc()) {
		$ray[] = $rowData;
	}
	echo json_encode($ray);

?>