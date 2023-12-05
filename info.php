<?php include 'header.php'; ?>

<!-- BREADCRUMB -->
<div id="breadcrumb">
	<div class="container">
		<ul class="breadcrumb">
			<li><a href="index.php">Home</a></li>
		</ul>
	</div>
</div>
<!-- /BREADCRUMB -->

<!-- section -->
<div class="section">
	<!-- container -->
	<div class="container">

		<style type="text/css">
			
			@media (max-width: 480px) { 
				.col-xs-6.custom-width{
					/*background: blue !important;*/
					max-width:50% !important;
				}

				.col-xs-6.custom-width img{
					height: 150px !important;
				}

			} 
		</style>

		
		<!-- row -->
		<div class="row">
			
			<?php 
			// include 'sidebar.php'; 
			?>

			<!-- MAIN -->
			<div id="main" class="col-md-12">

				<?php 
				if(isset($_GET['cari'])){
					?>
					Hasil Pencarian : <?php echo htmlspecialchars($_GET['cari']); ?>
					<?php
				}
				?>
                <!-- Info row col col row col row col-->
                    <div style="text-align: center;">
                        <h2>PARDOFELIS STORE</h2>
                    </div>
                    <br>
                    <br>
                    <div class="row"> 
                        <div class="col-sm-6">
                            <div class="row">
                                <div class="col-sm-6">
                                    <img src="frontend/img/pardo4.jpg" class="img-responsive img-rounded" alt="Responsive image" style="border-radius: 20px">                               
                                </div>
                                <div class="col-sm-6">
                                    <h3>Layanan E-commerce melalui Web Desktop</h3>
                                    <hr style="border-top: 5px solid #ab8b83;" />
                                    <p style="font-size: 20px;">
                                        Layanan E-commerce Felis Store menyediakan berbagai pilihan produk Official Stores Hoyoverse. 
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row" style="margin-top: 10px;">
                    <div class="col-sm-6"> </div>
                        <div class="col-sm-6">
                            <div class="row">
                                <div class="col-sm-6">
                                    <img src="frontend/img/pardo7.jpg" class="img-responsive img-rounded" alt="Responsive image" style="border-radius: 20px">                               
                                </div>
                                <div class="col-sm-6">
                                    <h3>Logistik & Fulfillment</h3>
                                    <hr style="border-top: 5px solid #ab8b83;" />
                                    <p style="font-size: 20px;">
                                    Felis Store bekerjasama dengan 3 partner logistik dan fulfillment yang dilengkapi dengan layanan pengiriman di hari yang sama dengan sistem yang terintegrasi. 
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row" style="margin-top: 10px;"> 
                        <div class="col-sm-6">
                            <div class="row">
                                <div class="col-sm-6">
                                    <img src="frontend/img/pardo5.jpg" class="img-responsive img-rounded" alt="Responsive image" style="border-radius: 20px">                               
                                </div>
                                <div class="col-sm-6">
                                    <h3>Kualitas Produk</h3>
                                    <hr style="border-top: 5px solid #ab8b83;" />
                                    <p style="font-size: 20px;">
                                        Produk Original dari Hoyoverse, langsung di ekspor dari China, Selalu Ada garansi resmi di setiap pembelian produk
                                    </p>

                                </div>
                            </div>
                        </div>
                    </div>
                   
                <!-- /Info -->
			</div>
			<!-- /MAIN -->


		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /section -->

<?php include 'footer.php'; ?>