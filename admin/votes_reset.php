<?php
	include 'includes/session.php';

	$sql = "DELETE FROM votes";
	if($conn->query($sql)){
		$_SESSION['success'] = "Los Votos se restablece correctamente";
	}
	else{
		$_SESSION['error'] = "Algo salió mal en la restauración";
	}

	header('location: votes.php');

?>