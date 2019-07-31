<?php 
$comentario = $_POST["comentario"];
$idnoticia = $_POST["id"];


$user = "root";
$pass = "";
$host = "localhost";
$db = "gatovuln";
$con = mysqli_connect($host, $user, $pass, $db);

$sql = 'INSERT INTO comentario_noticia (idnoticia, comentario)
        VALUES ("'.$_POST["id"].'", "'.$_POST["comentario"].'")';
$res = $con->query($sql) or die("error");

header('Location: noticia.php?id='.$idnoticia);


?>