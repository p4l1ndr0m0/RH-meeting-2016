<?php
	$host='localhost';
	$user='adria_adminpepsi';
	$password='Prefiero_coca_2016!';
	
	$connection = mysql_connect($host,$user,$password);
	

	$correo = $_POST['correo'];

   
	if(!$connection){
		die('Connection Failed');
	}
	else{
		$dbconnect = @mysql_select_db('adrian_pepsidb', $connection);
		
		if(!$dbconnect){
			die('Could not connect to Database');
		}
		else{
			$query = "UPDATE regitro SET pista_8 = '1' WHERE correo = '$correo'";
						
			mysql_query($query, $connection) or die(mysql_error());
			
			echo 'Successfully added.';
			echo $query;
			
		}
	}