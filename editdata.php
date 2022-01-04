<?php
    $db = mysqli_connect('localhost','root','','userdata');

    $id = $_POST['id'];
    $nama = $_POST['nama'];
    $hari = $_POST['hari'];

    $sql = "UPDATE datapengguna SET nama='".$nama."', hari='".$hari."' WHERE id='".$id."'";
    $result = mysqli_query($db,$sql);
?>