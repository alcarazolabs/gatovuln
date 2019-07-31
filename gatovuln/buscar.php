<?php 
$buscar = $_POST["txtbuscar"];

$user = "root";
$pass = "";
$host = "localhost";
$db = "gatovuln";
$con = mysqli_connect($host, $user, $pass, $db);

$sql = "SELECT * FROM noticias WHERE titulo LIKE '%".$buscar."%'";

$res = $con->query($sql);


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
	$id = $row["id"];
	echo '<h3 style="padding-left:10px;"> <a href="noticia.php?id='.$id.'">'.utf8_encode($titulo).'</a></h3>';
 
	echo '<hr>';

}

?>

<strong style="font-size:10px">By: surflaweb</strong>
</div>


</body>
</html>
