<?php
	require_once('Layout/header.php');
?>

	<!-- Dashboard -->
    <div class="container-fluid" id="content">
        <div class="row">
            <div class="col-sm-6 col-md-8">
			
            <!-- Carousel -->
			<a href="https://del.ac.id">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

                     
                        <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>
                    
                        <!-- Slides -->
                        <div class="carousel-inner" role="listbox">
							<div class="item active">
								<img src="img/Slide4.jpg" alt="...">
								<div class="carousel-caption">
								Slide 1
								</div>
							</div>
							<div class="item">
								<img src="img/Slide3.jpg" alt="...">
								<div class="carousel-caption">
								Slide 2
								</div>
							</div>
							<div class="item">
								<img src="img/Slide8.jpg" alt="...">
								<div class="carousel-caption">
								Slide 3
								</div>
							</div>	
							<div class="item">
								<img src="img/Slide7.jpg" alt="...">
								<div class="carousel-caption">
								Slide 4
								</div>
							</div>	
							<div class="item">
								<img src="img/Slide9.jpg" alt="...">
								<div class="carousel-caption">
								Slide 5
								</div>
							</div>	
                        </div>
                    
                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>   
                        </a>
						</a>
						</div>
						
			</div>
			
			<div class="col-sm-6 col-md-4">
				<center>
					<h4>Tanggal dan Jam<br>
						<h5><b>
						<?php
							date_default_timezone_set('Asia/Jakarta'); // untuk format indonesia
							echo date('d M Y H:i:s'); // day tanggal M month bulan Y Year
							// H = Hours jam // i = menit // s = second detik
    					?></b>
						</h5>
					</h4>
				</center>

				<div style="width: 390px; height: 0px; border: 1px #000 solid;"></div> <!-- membuat garis horixontal-->
				<h4>
					<span class="glyphicon glyphicon-bell"></span>
					<b>Notifikasi</b>
				</h4>
			</div>
        </div>
	</div>
	<!-- Dashboard End-->  

<?php
    require_once('Layout/footer.php');
?>
