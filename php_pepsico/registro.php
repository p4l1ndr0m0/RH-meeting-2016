<?php
	$host='localhost';
	$user='adria_adminpepsi';
	$password='Prefiero_coca_2016!';
	
	$connection = mysql_connect($host,$user,$password);
	
	$nombre = $_POST['nombre'];
	$paterno = $_POST['paterno'];
	$materno = $_POST['materno'];
	$area = $_POST['area'];
	$correo = $_POST['correo'];
	$passw = $_POST['passw'];
	$asunto = "Nuevo Registro RH PEPSI";
	$cuerpo = "Nuevo Registro en la base de datos  RH PEPSI"; //este es el cuerpo del mail
	$headers = "From: an4rk0z@me.com" . "\r\n";
	$email_base = "an4rk0z@me.com";
        $headers = 'Bcc: oswaldo.olvera.plaza@gmail.com' . "\r\n".
            'Bcc: an4rk0z@me.com' . "\r\n";
   
	if(!$connection){
		die('Connection Failed');
	}
	else{
		$dbconnect = @mysql_select_db('adrian_pepsidb', $connection);
		
		if(!$dbconnect){
			die('Could not connect to Database');
		}
		else{
			$query = "INSERT INTO `adrian_pepsidb`.`regitro` (`nombre`, `paterno`, `materno`, `area`,`correo`,`passw`)
				VALUES ('$nombre','$paterno','$materno','$area','$correo','$passw');";
						mail($email_base,$asunto,$cuerpo,$headers);
			mysql_query($query, $connection) or die(mysql_error());
			
			echo 'Successfully added.';
			echo $query;
			echo mail;
		}
	}
	
	
?>