<?php

	/// Require the header that already contains the sidebar and top of the website and head body tags
	require_once 'header.php'; 
	
	if(is_numeric($_GET['id']) == false) {
		header('Location: ticket.php');
		exit;
	}

	$SQLGetTickets = $odb -> query("SELECT * FROM `tickets` WHERE `id` = {$_GET['id']}");
	while ($getInfo = $SQLGetTickets -> fetch(PDO::FETCH_ASSOC)){
		$username = $getInfo['username'];
		$subject = $getInfo['subject'];
		$status = $getInfo['status'];
		$original = $getInfo['content'];
		$date = date("d/m/Y, h:i:s a" ,$getInfo['date']);
	}

	if ($username != $_SESSION['username']){
		header('Location: tickets.php');
		exit;
	}

	if ($user -> safeString($original)){
		header('Location: ticket.php');
		exit;
	}
?>

<html>
</body>
<title><?php echo $sitename; ?> | Ticket</title>
		<div class="page-wrapper" style="display: block;">
			<div class="page-breadcrumb">
				<div class="d-flex align-items-center">
					<h4 class="page-title text-truncate text-white font-weight-medium mb-0">Ticket</h4>
					<div class="ml-auto">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb m-0 p-0">
								<li class="breadcrumb-item text-sql active" aria-current="page"><?php echo $sitename; ?></li>
								<li class="breadcrumb-item text-muted" aria-current="page">Ticket</li>
							</ol>
						</nav>
					</div>
				</div>
			</div>
      </ul>


  <!-- Page Content -->
                 <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6 col-lg-12">
						<div id="div"></div>
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">Subject: <?php echo $subject; ?></h4>
								<div class="mt-4 activity">
								<h4 class="header-title">Message: </h4><p><?php echo $original; ?></p>
								<p>- <?php echo $username . ' [ ' . $date . ' ]'; ?></p>
								<div id="response"></div>
								<hr></hr>
								<form method="post" onsubmit="return false;">
									<div class="form-group">
									    <label class="text-white" for="reply">Reply: <i style="display: none;" id="image"></i></label></label>
										<textarea type="text" class="form-control" id="reply" name="reply" maxlength="1024"></textarea>
									</div>
									<center><button type="submit" onclick="message()" class="btn btn-purple">Reply</button> <a href="tickets.php" type="button" class="btn btn-primary">Go back</a> <button type="submit" onclick="closeticket()" class="btn btn-danger">Close</button></center>
								</form>
							</div>
						</div>
					</div>
				</div>
				<script>
				response();

				function response()
				{
					var xmlhttp;
					if (window.XMLHttpRequest)
					{
						xmlhttp=new XMLHttpRequest();
					}
					else
					{
						xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
					}
					xmlhttp.onreadystatechange=function()
					{
						if (xmlhttp.readyState==4 && xmlhttp.status==200)
						{
							document.getElementById("response").innerHTML=xmlhttp.responseText;
						}
					}
					xmlhttp.open("GET","includes/ajax/tickets.php?id=<?php echo $_GET['id']; ?>",true);
					xmlhttp.send();
				}
				
				function closeticket()
				{
					document.getElementById("image").style.display="inline"; 
					document.getElementById("div").style.display="none"; 
					var xmlhttp;
					if (window.XMLHttpRequest)
					{
						xmlhttp=new XMLHttpRequest();
					}
					else
					{
						xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
					}
					xmlhttp.onreadystatechange=function()
					{
						if (xmlhttp.readyState==4 && xmlhttp.status==200)
						{
							document.getElementById("div").innerHTML=xmlhttp.responseText;
							document.getElementById("div").style.display="inline";
							document.getElementById("image").style.display="none";
						}
					}
					xmlhttp.open("GET","includes/ajax/closeticket.php?id=<?php echo $_GET['id']; ?>",true);
					xmlhttp.send();
				}
					
				function message()
				{
					var reply=$('#reply').val();
					document.getElementById("image").style.display="inline"; 
					document.getElementById("div").style.display="none"; 
					var xmlhttp;
					if (window.XMLHttpRequest)
					{
						xmlhttp=new XMLHttpRequest();
					}
					else
					{
						xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
					}
					xmlhttp.onreadystatechange=function()
					{
						if (xmlhttp.readyState==4 && xmlhttp.status==200)
						{
							document.getElementById("div").innerHTML=xmlhttp.responseText;
							document.getElementById("div").style.display="inline";
							document.getElementById("image").style.display="none";
							if (xmlhttp.responseText.search("SUCCESS") != -1)
							{
								response();
							}
						}
					}
					xmlhttp.open("GET","includes/ajax/reply.php?id=<?php echo $_GET['id']; ?>" + "&message=" + reply,true);
					xmlhttp.send();
				}
				</script>
			</div>
		</div>
</html>