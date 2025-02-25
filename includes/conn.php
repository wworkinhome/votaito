<?php
	$conn = new mysqli('localhost', 'root', '', 'vota');

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	
?>