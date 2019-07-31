<!DOCTYPE html>
<html>
<head>
	<title>Gato Vuln v.1.0</title>
</head>
<body>

<?php 
$id = $_GET["id"];
$i = (int)$id;
$i =$i+1;

$user = "root";
$pass = "";
$host = "localhost";
$db = "gatovuln";
$con = mysqli_connect($host, $user, $pass, $db);
//escapar caracteres..
//$id = mysqli_escape_string($con, $id);

//$sql = "select * from noticias where id=".$id;

$stmt = $con->prepare('SELECT * FROM noticias WHERE id = ?');
$stmt->bind_param('i', $id); // 
//'s' typo => 'string'
//'i' typo => 'int'
$stmt->execute();

//$result = $stmt->get_result();
/*
while ($row = $result->fetch_assoc()) {
    // do something with $row
}*/
$res = $stmt->get_result();
//$res = $con->query($sql);


?>
<div id="contenido" style="width: 50%; height: auto;">

<img src="barner.png">
<a href="noticia.php?id=1">Inicio</a>
<a href="https://www.youtube.com/channel/UCy6ttBvsjtroucqQocj3P7Q?view_as=subscriber">Youtube</a>
<a href="https://github.com/alcarazolabs/gatovuln">Github</a>

<form method="post" action="buscar.php">
	<table>
		<tr>
			<td>Buscar:<input type="text" name="txtbuscar"></td>
			<td><input type="submit" value="Buscar"></td>
		</tr>
	</table>

</form>


<hr>
<?php
while($row = mysqli_fetch_array($res)){
	$titulo = $row["titulo"];
	$detalle = $row["detalle"];
	echo '<h3>'.utf8_encode($titulo)."</h3>";
	echo '<hr>';
	echo '<p style="text-align: justify;">'.utf8_encode($detalle).'</p>';
    echo '<strong>Categoria: </strong>';
    echo '<a href="categoria.php?categoria='.$row["categoria"].'">'.$row["categoria"].'</a>';


}

echo '<hr>';
echo '<br>';
echo '<h3>Comentarios:</h3>';
?>
<?php
//$sqlc = "SELECT * FROM comentario_noticia WHERE idnoticia=".$_GET['id'];
//$res = $con->query($sqlc);

$stmt = $con->prepare('SELECT * FROM comentario_noticia WHERE idnoticia = ?');
$stmt->bind_param('i', $_GET['id']); // 
//'s' typo => 'string'
//'i' typo => 'int'
$stmt->execute();
$res = $stmt->get_result();

$rows = array();
while($row = mysqli_fetch_assoc($res)){
	$rows[] = $row;
}
if (count($rows)==0){
	echo '<font face="cursive">No hay comentarios..</font>';
}
echo '<div id="comentarios" style="padding-left:10px; padding:3px;border: solid 1px">';
foreach($rows as $c) {
	echo '<img src="img.png" width="20" height="20">:
	      <font face="cursive" style="font-size:12px;">'.$c["comentario"].'</font>';
	echo '<br>';
}
echo '</div>';

echo '<hr>';
echo '<h3>Comentar:</h3>';
?>
<form action="procesar.php" method="post">
	<textarea cols="45" rows="5" name="comentario"></textarea>
	<input type="hidden" value="<?php echo $_GET['id']; ?>" name="id">
	<br>
	<input type="submit" name="comentar" value="Comentar">
</form>
<?php

echo '<br>';
echo '<a href="noticia.php?id='.$i.'">Ver mas..</a>';

?>

<hr>
<strong style="font-size:10px">By: surflaweb</strong>
</div>


</body>
</html>
