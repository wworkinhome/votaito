<?php
	$conn = new mysqli('localhost', 'root', 'Sofi@3110@@**', 'vota');

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	
?>
