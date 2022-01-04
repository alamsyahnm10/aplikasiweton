<?php
    $db = mysqli_connect('localhost','root','','userdata');

    $id = $_POST['id'];

    $sql = "DELETE FROM datapengguna WHERE id='".$id."'";
    $result = mysqli_query($db,$sql);
?>