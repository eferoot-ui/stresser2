<?php

	require_once 'includes/app/config.php';
	require_once 'includes/app/init.php';
	
	if (empty($maintaince)) {
		header('Location: dashboard.php');
		exit;
	}

?>
<html class="no-focus">
	<head>
        <meta charset="utf-8">
        <title>Under Maintenance</title>
        <div class="content pulldown text-muted text-center">EN: We are under maintenance, please try later!<br>
    
</body></html>