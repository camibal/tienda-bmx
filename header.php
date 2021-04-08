<!-- This is main configuration File -->
<?php
ob_start();
session_start();
include("admin/inc/config.php");
include("admin/inc/functions.php");
include("admin/inc/CSRF_Protect.php");
$csrf = new CSRF_Protect();
$error_message = '';
$success_message = '';
$error_message1 = '';
$success_message1 = '';

// Getting all language variables into array as global variable
$i = 1;
$statement = $pdo->prepare("SELECT * FROM tbl_language");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $row) {
	define('LANG_VALUE_' . $i, $row['lang_value']);
	$i++;
}

$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $row) {
	$logo = $row['logo'];
	$favicon = $row['favicon'];
	$contact_email = $row['contact_email'];
	$contact_phone = $row['contact_phone'];
	$meta_title_home = $row['meta_title_home'];
	$meta_keyword_home = $row['meta_keyword_home'];
	$meta_description_home = $row['meta_description_home'];
	$before_head = $row['before_head'];
	$after_body = $row['after_body'];
}

// Checking the order table and removing the pending transaction that are 24 hours+ old. Very important
$current_date_time = date('Y-m-d H:i:s');
$statement = $pdo->prepare("SELECT * FROM tbl_payment WHERE payment_status=?");
$statement->execute(array('Pending'));
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $row) {
	$ts1 = strtotime($row['payment_date']);
	$ts2 = strtotime($current_date_time);
	$diff = $ts2 - $ts1;
	$time = $diff / (3600);
	if ($time > 24) {

		// Return back the stock amount
		$statement1 = $pdo->prepare("SELECT * FROM tbl_order WHERE payment_id=?");
		$statement1->execute(array($row['payment_id']));
		$result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);
		foreach ($result1 as $row1) {
			$statement2 = $pdo->prepare("SELECT * FROM tbl_product WHERE p_id=?");
			$statement2->execute(array($row1['product_id']));
			$result2 = $statement2->fetchAll(PDO::FETCH_ASSOC);
			foreach ($result2 as $row2) {
				$p_qty = $row2['p_qty'];
			}
			$final = $p_qty + $row1['quantity'];

			$statement = $pdo->prepare("UPDATE tbl_product SET p_qty=? WHERE p_id=?");
			$statement->execute(array($final, $row1['product_id']));
		}

		// Deleting data from table
		$statement1 = $pdo->prepare("DELETE FROM tbl_order WHERE payment_id=?");
		$statement1->execute(array($row['payment_id']));

		$statement1 = $pdo->prepare("DELETE FROM tbl_payment WHERE id=?");
		$statement1->execute(array($row['id']));
	}
}
?>
<!DOCTYPE html>
<html lang="en">

<head>

	<!-- Meta Tags -->
	<meta name="viewport" content="width=device-width,initial-scale=1.0" />
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />

	<!-- Favicon -->
	<link rel="icon" type="image/png" href="assets/uploads/<?php echo $favicon; ?>">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="assets/css/owl.theme.default.min.css">
	<link rel="stylesheet" href="assets/css/jquery.bxslider.min.css">
	<link rel="stylesheet" href="assets/css/magnific-popup.css">
	<link rel="stylesheet" href="assets/css/rating.css">
	<link rel="stylesheet" href="assets/css/spacing.css">
	<link rel="stylesheet" href="assets/css/bootstrap-touch-slider.css">
	<link rel="stylesheet" href="assets/css/animate.min.css">
	<link rel="stylesheet" href="assets/css/tree-menu.css">
	<link rel="stylesheet" href="assets/css/select2.min.css">
	<link rel="stylesheet" href="assets/css/main.css">
	<link rel="stylesheet" href="assets/css/responsive.css">

	<?php

	$statement = $pdo->prepare("SELECT * FROM tbl_page WHERE id=1");
	$statement->execute();
	$result = $statement->fetchAll(PDO::FETCH_ASSOC);
	foreach ($result as $row) {
		$about_meta_title = $row['about_meta_title'];
		$about_meta_keyword = $row['about_meta_keyword'];
		$about_meta_description = $row['about_meta_description'];
		$faq_meta_title = $row['faq_meta_title'];
		$faq_meta_keyword = $row['faq_meta_keyword'];
		$faq_meta_description = $row['faq_meta_description'];
		$blog_meta_title = $row['blog_meta_title'];
		$blog_meta_keyword = $row['blog_meta_keyword'];
		$blog_meta_description = $row['blog_meta_description'];
		$contact_meta_title = $row['contact_meta_title'];
		$contact_meta_keyword = $row['contact_meta_keyword'];
		$contact_meta_description = $row['contact_meta_description'];
		$pgallery_meta_title = $row['pgallery_meta_title'];
		$pgallery_meta_keyword = $row['pgallery_meta_keyword'];
		$pgallery_meta_description = $row['pgallery_meta_description'];
		$vgallery_meta_title = $row['vgallery_meta_title'];
		$vgallery_meta_keyword = $row['vgallery_meta_keyword'];
		$vgallery_meta_description = $row['vgallery_meta_description'];
	}

	$cur_page = substr($_SERVER["SCRIPT_NAME"], strrpos($_SERVER["SCRIPT_NAME"], "/") + 1);

	if ($cur_page == 'index.php' || $cur_page == 'login.php' || $cur_page == 'registration.php' || $cur_page == 'cart.php' || $cur_page == 'checkout.php' || $cur_page == 'forget-password.php' || $cur_page == 'reset-password.php' || $cur_page == 'product-category.php' || $cur_page == 'product.php') {
	?>
		<title><?php echo $meta_title_home; ?></title>
		<meta name="keywords" content="<?php echo $meta_keyword_home; ?>">
		<meta name="description" content="<?php echo $meta_description_home; ?>">
	<?php
	}

	if ($cur_page == 'about.php') {
	?>
		<title><?php echo $about_meta_title; ?></title>
		<meta name="keywords" content="<?php echo $about_meta_keyword; ?>">
		<meta name="description" content="<?php echo $about_meta_description; ?>">
	<?php
	}
	if ($cur_page == 'faq.php') {
	?>
		<title><?php echo $faq_meta_title; ?></title>
		<meta name="keywords" content="<?php echo $faq_meta_keyword; ?>">
		<meta name="description" content="<?php echo $faq_meta_description; ?>">
	<?php
	}
	if ($cur_page == 'contact.php') {
	?>
		<title><?php echo $contact_meta_title; ?></title>
		<meta name="keywords" content="<?php echo $contact_meta_keyword; ?>">
		<meta name="description" content="<?php echo $contact_meta_description; ?>">
	<?php
	}
	if ($cur_page == 'product.php') {
		$statement = $pdo->prepare("SELECT * FROM tbl_product WHERE p_id=?");
		$statement->execute(array($_REQUEST['id']));
		$result = $statement->fetchAll(PDO::FETCH_ASSOC);
		foreach ($result as $row) {
			$og_photo = $row['p_featured_photo'];
			$og_title = $row['p_name'];
			$og_slug = 'product.php?id=' . $_REQUEST['id'];
			$og_description = substr(strip_tags($row['p_description']), 0, 200) . '...';
		}
	}

	if ($cur_page == 'dashboard.php') {
	?>
		<title>Dashboard - <?php echo $meta_title_home; ?></title>
		<meta name="keywords" content="<?php echo $meta_keyword_home; ?>">
		<meta name="description" content="<?php echo $meta_description_home; ?>">
	<?php
	}
	if ($cur_page == 'customer-profile-update.php') {
	?>
		<title>Update Profile - <?php echo $meta_title_home; ?></title>
		<meta name="keywords" content="<?php echo $meta_keyword_home; ?>">
		<meta name="description" content="<?php echo $meta_description_home; ?>">
	<?php
	}
	if ($cur_page == 'customer-billing-shipping-update.php') {
	?>
		<title>Update Billing and Shipping Info - <?php echo $meta_title_home; ?></title>
		<meta name="keywords" content="<?php echo $meta_keyword_home; ?>">
		<meta name="description" content="<?php echo $meta_description_home; ?>">
	<?php
	}
	if ($cur_page == 'customer-password-update.php') {
	?>
		<title>Update Password - <?php echo $meta_title_home; ?></title>
		<meta name="keywords" content="<?php echo $meta_keyword_home; ?>">
		<meta name="description" content="<?php echo $meta_description_home; ?>">
	<?php
	}
	if ($cur_page == 'customer-order.php') {
	?>
		<title>Orders - <?php echo $meta_title_home; ?></title>
		<meta name="keywords" content="<?php echo $meta_keyword_home; ?>">
		<meta name="description" content="<?php echo $meta_description_home; ?>">
	<?php
	}
	?>

	<?php if ($cur_page == 'blog-single.php') : ?>
		<meta property="og:title" content="<?php echo $og_title; ?>">
		<meta property="og:type" content="website">
		<meta property="og:url" content="<?php echo $og_slug; ?>">
		<meta property="og:description" content="<?php echo $og_description; ?>">
		<meta property="og:image" content="assets/uploads/<?php echo $og_photo; ?>">
	<?php endif; ?>

	<?php if ($cur_page == 'product.php') : ?>
		<meta property="og:title" content="<?php echo $og_title; ?>">
		<meta property="og:type" content="website">
		<meta property="og:url" content="<?php echo $og_slug; ?>">
		<meta property="og:description" content="<?php echo $og_description; ?>">
		<meta property="og:image" content="assets/uploads/<?php echo $og_photo; ?>">
	<?php endif; ?>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>

	<script type="text/javascript" src="//platform-api.sharethis.com/js/sharethis.js#property=5993ef01e2587a001253a261&product=inline-share-buttons"></script>

	<?php echo $before_head; ?>

</head>
<style>
	.header2 {
		width: 100%;
		background-color: #000;
		border-bottom: 1px solid #fff;
		padding: 0% 5% 0 5%;
		/* height: 2rem; */
	}

	.nav2 {
		display: flex;
		justify-content: space-between;
		align-items: center;
	}

	.logo {
		color: yellow;
		/* padding: 10px; */
		font-size: 35px;
	}

	.nav2 ul {
		list-style: none;
	}

	.menu2>li {
		display: inline-block;
		/* padding: 10px; */
		position: relative;
	}

	.menu2>li>a {
		text-decoration: none;
		color: white;
		font-size: 14px;
		padding: 1px 14px;
	}

	.menu2 li:hover {
		background-color: black;
		color: white;
	}

	/*Submenu style*/
	.submenu {
		list-style: none;
		background-color: green;
		width: 140px;
		position: absolute;
		left: 0;
		display: none;
		animation: slideup .3s ease;
	}

	.submenu>li {
		display: block;
		padding: 10px;
		text-align: center;
		position: relative;
	}

	.submenu>li>a {
		text-align: center;
		text-decoration: none;
		color: white;
	}

	.submenu li:hover {
		background-color: black;
		color: white;
	}

	/*Submenu2 style*/
	.submenu2 {
		display: none;
		/* background-color: green; */
		width: 140px;
		position: absolute;
		left: 100%;
		top: 0;
		list-style: none;
		animation: slideleft .3s ease;
	}

	.submenu2 li {
		display: block;
		padding: 10px;
		text-align: center;
	}

	.submenu2 li a {
		color: white;
		text-decoration: none;
	}

	.submenu2 li:hover {
		background-color: black;
		color: white;
	}

	/*Submenu and Submenu2 appear on hover*/

	.menu2>li:hover .submenu {
		display: block;
	}

	.submenu>li:hover .submenu2 {
		display: block;
	}

	.row-width {
		width: auto;
	}

	.li-d-none {
		display: none !important;
	}

	.li-d-none-2 {
		display: inline !important;
		color: #fff;
	}

	.col-none {
		display: none !important;
	}

	.col-none-2 {
		display: inline !important;
	}

	/*Animations*/
	@keyframes slideup {
		0% {
			transform: translateY(18px);
			opacity: 0;
		}

		100% {
			transform: none;
			opacity: 1;
		}
	}

	@keyframes slideleft {
		0% {
			transform: translateX(18px);
			opacity: 0;
		}

		100% {
			transform: none;
			opacity: 1;
		}
	}

	@media(max-width: 1080px) {
		.menu2>li>a {
			font-size: 16px;
		}
	}

	@media(max-width: 959px) {
		.row-width {
			width: 100vw;
		}

		.li-d-none-2 {
			display: none !important;
		}

		.li-d-none {
			display: block !important;
		}

		.col-none {
			display: block !important;
		}

		.col-none-2 {
			display: none !important;
		}
	}
</style>

<!-- <body style="background-image: url(./assets/img/fondo.jpg); background-size: cover; background-attachment: fixed;"> -->

<body>
	<?php echo $after_body; ?>
	<header class="header2">
		<nav class="nav2">
			<div class="row col-none">
				<div class="col-12">
					<div class="logo">
						<a href="index.php">
							<img src="assets/uploads/<?php echo $logo; ?>" width="100" alt="logo image">
						</a>
					</div>
				</div>
				<div class="col-12">
					<ul class="menu2" style="width: 94vw; text-align: center;">

						<?php
						if (isset($_SESSION['customer'])) {
						?>
							<li class="li-d-none-2"><i class="fa fa-user"></i> <?php echo LANG_VALUE_13; ?> <?php echo $_SESSION['customer']['cust_name']; ?></li>
							<li class="li-d-none-2"><a href="dashboard.php"><i class="fa fa-home"></i> <?php echo LANG_VALUE_89; ?></a></li>
						<?php
						} else {
						?>
							<li class="li-d-none-2"><a href="login.php"><i class="fa fa-sign-in"></i> <?php echo LANG_VALUE_9; ?></a></li>
							<li class="li-d-none-2"><a href="registration.php"><i class="fa fa-user-plus"></i> <?php echo LANG_VALUE_15; ?></a></li>
						<?php
						}
						?>

						<li class="li-d-none-2"><a href="cart.php"><i class="fa fa-shopping-cart"></i> <?php echo LANG_VALUE_19; ?> (<?php echo LANG_VALUE_1; ?><?php
																																								if (isset($_SESSION['cart_p_id'])) {
																																									$table_total_price = 0;
																																									$i = 0;
																																									foreach ($_SESSION['cart_p_qty'] as $key => $value) {
																																										$i++;
																																										$arr_cart_p_qty[$i] = $value;
																																									}
																																									$i = 0;
																																									foreach ($_SESSION['cart_p_current_price'] as $key => $value) {
																																										$i++;
																																										$arr_cart_p_current_price[$i] = $value;
																																									}
																																									for ($i = 1; $i <= count($arr_cart_p_qty); $i++) {
																																										$row_total_price = $arr_cart_p_current_price[$i] * $arr_cart_p_qty[$i];
																																										$table_total_price = $table_total_price + $row_total_price;
																																									}
																																									echo $table_total_price;
																																								} else {
																																									echo '0.00';
																																								}
																																								?>)</a></li>
						<li>
							<form class="navbar-form" role="search" action="search-result.php" method="get">
								<?php $csrf->echoInputField(); ?>
								<div class="form-group">
									<input type="text" class="form-control search-top" placeholder="<?php echo LANG_VALUE_2; ?>" name="search_text">
								</div>
								<button type="submit" class="btn btn-default"><?php echo LANG_VALUE_3; ?></button>
							</form>
						</li>
					</ul>
				</div>
			</div>
			<div class="logo col-none-2" style="padding: 1%;">
				<a href="index.php">
					<img src="assets/uploads/<?php echo $logo; ?>" width="100" alt="logo image">
				</a>
			</div>
			<ul class="menu2 col-none-2">

				<?php
				if (isset($_SESSION['customer'])) {
				?>
					<li class="li-d-none-2"><i class="fa fa-user"></i> <?php echo LANG_VALUE_13; ?> <?php echo $_SESSION['customer']['cust_name']; ?></li>
					<li class="li-d-none-2"><a href="dashboard.php"><i class="fa fa-home"></i> <?php echo LANG_VALUE_89; ?></a></li>
				<?php
				} else {
				?>
					<li class="li-d-none-2"><a href="login.php"><i class="fa fa-sign-in"></i> <?php echo LANG_VALUE_9; ?></a></li>
					<li class="li-d-none-2"><a href="registration.php"><i class="fa fa-user-plus"></i> <?php echo LANG_VALUE_15; ?></a></li>
				<?php
				}
				?>

				<li class="li-d-none-2"><a href="cart.php"><i class="fa fa-shopping-cart"></i> <?php echo LANG_VALUE_19; ?> (<?php echo LANG_VALUE_1; ?><?php
																																						if (isset($_SESSION['cart_p_id'])) {
																																							$table_total_price = 0;
																																							$i = 0;
																																							foreach ($_SESSION['cart_p_qty'] as $key => $value) {
																																								$i++;
																																								$arr_cart_p_qty[$i] = $value;
																																							}
																																							$i = 0;
																																							foreach ($_SESSION['cart_p_current_price'] as $key => $value) {
																																								$i++;
																																								$arr_cart_p_current_price[$i] = $value;
																																							}
																																							for ($i = 1; $i <= count($arr_cart_p_qty); $i++) {
																																								$row_total_price = $arr_cart_p_current_price[$i] * $arr_cart_p_qty[$i];
																																								$table_total_price = $table_total_price + $row_total_price;
																																							}
																																							echo $table_total_price;
																																						} else {
																																							echo '0.00';
																																						}
																																						?>)</a></li>
				<li>
					<form class="navbar-form" role="search" action="search-result.php" method="get">
						<?php $csrf->echoInputField(); ?>
						<div class="form-group">
							<input type="text" class="form-control search-top" placeholder="<?php echo LANG_VALUE_2; ?>" name="search_text">
						</div>
						<button type="submit" class="btn btn-default"><?php echo LANG_VALUE_3; ?></button>
					</form>
				</li>
			</ul>

		</nav>
	</header>

	<div class="nav">
		<div class="container-fluid">
			<div class="row row-width">
				<div class="col-md-12 pl_0 pr_0">
					<div class="menu-container">
						<div class="menu">
							<ul>
								<?php
								if (isset($_SESSION['customer'])) {
								?>
									<li class="li-d-none"> <?php echo LANG_VALUE_13; ?> <?php echo $_SESSION['customer']['cust_name']; ?></li>
									<li class="li-d-none"><a href="dashboard.php"> <?php echo LANG_VALUE_89; ?></a></li>
								<?php
								} else {
								?>
									<li class="li-d-none"><a href="login.php"> <?php echo LANG_VALUE_9; ?></a></li>
									<li class="li-d-none"><a href="registration.php"> <?php echo LANG_VALUE_15; ?></a></li>
								<?php
								}
								?>
								<li class="li-d-none"><a href="cart.php"> <?php echo LANG_VALUE_19; ?> (<?php echo LANG_VALUE_1; ?><?php
																																	if (isset($_SESSION['cart_p_id'])) {
																																		$table_total_price = 0;
																																		$i = 0;
																																		foreach ($_SESSION['cart_p_qty'] as $key => $value) {
																																			$i++;
																																			$arr_cart_p_qty[$i] = $value;
																																		}
																																		$i = 0;
																																		foreach ($_SESSION['cart_p_current_price'] as $key => $value) {
																																			$i++;
																																			$arr_cart_p_current_price[$i] = $value;
																																		}
																																		for ($i = 1; $i <= count($arr_cart_p_qty); $i++) {
																																			$row_total_price = $arr_cart_p_current_price[$i] * $arr_cart_p_qty[$i];
																																			$table_total_price = $table_total_price + $row_total_price;
																																		}
																																		echo $table_total_price;
																																	} else {
																																		echo '0.00';
																																	}
																																	?>)</a></li>
								<li><a href="index.php">Inicio</a></li>
								<li><a href="events.php">Eventos</a></li>
								<li><a href="videos.php">Videos</a></li>
								<li><a href="see-products.php">Productos</a></li>

								<?php
								$statement = $pdo->prepare("SELECT * FROM tbl_top_category WHERE show_on_menu=1");
								$statement->execute();
								$result = $statement->fetchAll(PDO::FETCH_ASSOC);
								foreach ($result as $row) {
								?>
									<li><a href="product-category.php?id=<?php echo $row['tcat_id']; ?>&type=top-category"><?php echo $row['tcat_name']; ?></a>
										<ul>
											<?php
											$statement1 = $pdo->prepare("SELECT * FROM tbl_mid_category WHERE tcat_id=?");
											$statement1->execute(array($row['tcat_id']));
											$result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);
											foreach ($result1 as $row1) {
											?>
												<li><a href="product-category.php?id=<?php echo $row1['mcat_id']; ?>&type=mid-category"><?php echo $row1['mcat_name']; ?></a>
													<ul>
														<?php
														$statement2 = $pdo->prepare("SELECT * FROM tbl_end_category WHERE mcat_id=?");
														$statement2->execute(array($row1['mcat_id']));
														$result2 = $statement2->fetchAll(PDO::FETCH_ASSOC);
														foreach ($result2 as $row2) {
														?>
															<li><a href="product-category.php?id=<?php echo $row2['ecat_id']; ?>&type=end-category"><?php echo $row2['ecat_name']; ?></a></li>
														<?php
														}
														?>
													</ul>
												</li>
											<?php
											}
											?>
										</ul>
									</li>
								<?php
								}
								?>

								<?php
								$statement = $pdo->prepare("SELECT * FROM tbl_page WHERE id=1");
								$statement->execute();
								$result = $statement->fetchAll(PDO::FETCH_ASSOC);
								foreach ($result as $row) {
									$about_title = $row['about_title'];
									$faq_title = $row['faq_title'];
									$blog_title = $row['blog_title'];
									$contact_title = $row['contact_title'];
									$pgallery_title = $row['pgallery_title'];
									$vgallery_title = $row['vgallery_title'];
								}
								?>

								<li><a href="about.php"><?php echo $about_title; ?></a></li>
								<!-- <li><a href="faq.php"><?php echo $faq_title; ?></a></li> -->

								<li><a href="contact.php"><?php echo $contact_title; ?></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Button trigger modal -->
	<button type="button" class="btn btn-message" data-toggle="modal" data-target="#exampleModal">
		¿Como hacer mi pedido?
	</button>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content content-modal">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="modal-body text-center">
					<div class="p-5 m-5" style="border: #fff5 2px dashed; padding: 5%;">
						<h3>PASO 1</h3>
						<p>Registrate o si ya estas registrado iniciar sesión.</p>
						<h3>PASO 2</h3>
						<p>Elije los productos que quieras agregar al carrito.</p>
						<h3>PASO 3</h3>
						<p>Ve a "Ver Carrito" y si ya estas seguro que tu pedido esta completo y es correcto dar click en "Solicitar Pedido".</p>
						<h3>PASO 4</h3>
						<p>Te aparecerá un mensaje de confimación y ya solo tendrás que esperar que nos comuniquemos con tigo.</p>
						<h3>PASO 5</h3>
						<p>El pedido realizado te aparacera en "Panel, Pedidos" donde podras ver todos tus pedidos con nosotros.</p>
					</div>
				</div>
			</div>
		</div>
	</div>