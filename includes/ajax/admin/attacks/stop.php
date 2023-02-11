<?php

	ob_start(); 
	require_once '../../../app/config.php'; 
	require_once '../../../app/init.php'; 

	if (!($user->LoggedIn()) || !($user->notBanned($odb)) || !($user -> isAdmin($odb)) || !(isset($_SERVER['HTTP_REFERER']))) {
		die();
	}
	
	$stop      = intval($_GET['id']);
	$SQLSelect = $odb->query("SELECT * FROM `logs` WHERE `id` = '$stop'");

	while ($show = $SQLSelect->fetch(PDO::FETCH_ASSOC)) {
		$user = $show['user'];
		$host   = $show['ip'];
		$port   = $show['port'];
		$time   = $show['time'];
		$method = $show['method'];
		$handler = $show['handler'];
		$command  = $odb->query("SELECT `command` FROM `methods` WHERE `name` = '$method'")->fetchColumn(0);
	}
	
	$SQL      = $odb->query("UPDATE `logs` SET `stopped` = 1 WHERE `id` = '$stop'");
	
	$handlers = explode(",", $handler);

	foreach ($handlers as $handler){
	}
	die(success('Attack Has Been Stopped!'));
	
?>