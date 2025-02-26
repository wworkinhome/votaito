<?php
	$conn = new mysqli('databasesrt.c5mqs4ka2gq2.us-east-2.rds.amazonaws.com', 'admin', 'Sofi3110', 'vota', 3306);

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
?>
