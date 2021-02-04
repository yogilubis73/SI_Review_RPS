<!-- header -->
<!DOCTYPE html>
<html>
<head>
	<title>Dashboard</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/mystyle.css">
	<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body style="background-color:#ffffff;">
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-3 col-sm-3 col-md-1">
				<a href="Dashboard.php"><img src="img/silabus.png" style="width:100px;padding:10px;"></a>
			</div>
			<div class="col-xs-9 col-sm-9 col-md-11" style="margin-top:20px;">
				<h4><b>Sistem Review RPS,Soal dan Berita Acara</b><br>
				INSTITUT TEKNOLOGI DEL<img src="img/LogoDel.jpg" style="width:40px; height:40px; margin-left:10px;"></h4>
			</div>
		</div>
	</div>
	<nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="105" style="background-color:#195CDE;">
		<div class="container-fluid">	
			<div class="navbar-header">
				<button aria-expanded="false" class="navbar-toggle collapsed" data-target="#bs-example-navbar-collapse-1" data-toggle="collapse" type="button">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#" style="font-family:tinymce; color:#ffffff;">Fakultas Informatika dan Teknik Elektro</a>
			</div><!-- navbar header end -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="dashboard.php"  style="color:#ffffff;">Beranda<span class="sr-only">(current)</span></a></li>
					<li><a href="undangdosen.php"  style="color:#ffffff;">Undang Dosen<span class="sr-only" style="color:#ffffff;">(current)</span></a></li>
					<li><a href="uploadFile.php" style="color:#ffffff;">Upload File<span class="sr-only" style="color:#ffffff;">(current)</span></a></li>
					<li><a href="reviewFile.php" style="color:#ffffff;">Review File<span class="sr-only" style="color:#ffffff;">(current)</span></a></li>
					<li><a href="generateFile.php" style="color:#ffffff;">Generate File<span class="sr-only" style="color:#ffffff;">(current)</span></a></li>

	
					<li>
						<a href="logout.php" style="color:#ffffff;">Logout</a>
					</li>
				</ul>
			</div>
		</div> 
	</nav><!--header end-->