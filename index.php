<?php require_once('header.php'); ?>
<style>
    .parallas,
    .main,
    .texto {
        margin: 0 auto
    }

    .parallax {
        background-attachment: fixed;
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
        height: 50vh;
        margin-top: 1%;
        max-width: 100%;
        position: relative;
    }

    .texto-interior {
        color: #fff;
        font-size: 2rem;
        font-weight: bold;
        left: 10%;
        position: absolute;
        text-align: center;
        top: 40%;
        width: 80%;
    }

    .texto-interior a {
        width: 10rem;
        background: #EE1D23;
        color: #fff;
        font-weight: bold;
        border-radius: 7px;
    }

    .texto-interior a:hover {
        background: #ee1d24b9;
        color: #fff;
        font-weight: bold;
    }

    .img-uno {
        background-image: url('./assets/img/stunt-2050843_1920.jpg')
    }

    .img-dos {
        background-image: url("./assets/img/mountain-bike-3469484_1920.jpg")
    }

    .img-tres {
        background-image: url("./assets/img/cycling-races-3476755_1920.jpg")
    }
</style>
<?php
$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $row) {
    $cta_title = $row['cta_title'];
    $cta_content = $row['cta_content'];
    $cta_read_more_text = $row['cta_read_more_text'];
    $cta_read_more_url = $row['cta_read_more_url'];
    $cta_photo = $row['cta_photo'];
    $featured_product_title = $row['featured_product_title'];
    $featured_product_subtitle = $row['featured_product_subtitle'];
    $latest_product_title = $row['latest_product_title'];
    $latest_product_subtitle = $row['latest_product_subtitle'];
    $popular_product_title = $row['popular_product_title'];
    $popular_product_subtitle = $row['popular_product_subtitle'];
    $total_featured_product_home = $row['total_featured_product_home'];
    $total_latest_product_home = $row['total_latest_product_home'];
    $total_popular_product_home = $row['total_popular_product_home'];
    $home_service_on_off = $row['home_service_on_off'];
    $home_welcome_on_off = $row['home_welcome_on_off'];
    $home_featured_product_on_off = $row['home_featured_product_on_off'];
    $home_latest_product_on_off = $row['home_latest_product_on_off'];
    $home_popular_product_on_off = $row['home_popular_product_on_off'];
}


?>

<div id="bootstrap-touch-slider" class="carousel bs-slider fade control-round indicators-line" data-ride="carousel" data-pause="hover" data-interval="false">

    <!-- Indicators -->
    <!-- <ol class="carousel-indicators">
        <?php
        $i = 0;
        $statement = $pdo->prepare("SELECT * FROM tbl_slider");
        $statement->execute();
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
        foreach ($result as $row) {
        ?>
            <li data-target="#bootstrap-touch-slider" data-slide-to="<?php echo $i; ?>" <?php if ($i == 0) {
                                                                                            echo 'class="active"';
                                                                                        } ?>></li>
        <?php
            $i++;
        }
        ?>
    </ol> -->

    <!-- Wrapper For Slides -->
    <div class="carousel-inner" role="listbox">

        <?php
        $i = 0;
        $statement = $pdo->prepare("SELECT * FROM tbl_slider");
        $statement->execute();
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
        foreach ($result as $row) {
        ?>
            <div class="item <?php if ($i == 0) {
                                    echo 'active';
                                } ?>" style="background-image:url(assets/uploads/<?php echo $row['photo']; ?>);">
                <div class="bs-slider-overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="slide-text <?php if ($row['position'] == 'Left') {
                                                    echo 'slide_style_left';
                                                } elseif ($row['position'] == 'Center') {
                                                    echo 'slide_style_center';
                                                } elseif ($row['position'] == 'Right') {
                                                    echo 'slide_style_right';
                                                } ?>">
                            <h1 data-animation="animated <?php if ($row['position'] == 'Left') {
                                                                echo 'zoomInLeft';
                                                            } elseif ($row['position'] == 'Center') {
                                                                echo 'flipInX';
                                                            } elseif ($row['position'] == 'Right') {
                                                                echo 'zoomInRight';
                                                            } ?>"><?php echo $row['heading']; ?></h1>
                            <p data-animation="animated <?php if ($row['position'] == 'Left') {
                                                            echo 'fadeInLeft';
                                                        } elseif ($row['position'] == 'Center') {
                                                            echo 'fadeInDown';
                                                        } elseif ($row['position'] == 'Right') {
                                                            echo 'fadeInRight';
                                                        } ?>"><?php echo nl2br($row['content']); ?></p>
                            <a href="<?php echo $row['button_url']; ?>" target="_blank" class="btn btn-primary" data-animation="animated <?php if ($row['position'] == 'Left') {
                                                                                                                                                echo 'fadeInLeft';
                                                                                                                                            } elseif ($row['position'] == 'Center') {
                                                                                                                                                echo 'fadeInDown';
                                                                                                                                            } elseif ($row['position'] == 'Right') {
                                                                                                                                                echo 'fadeInRight';
                                                                                                                                            } ?>"><?php echo $row['button_text']; ?></a>
                        </div>
                    </div>
                </div>
            </div>
        <?php
            $i++;
        }
        ?>
    </div>

    <!-- Slider Left Control -->
    <a class="left carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="prev">
        <span class="fa fa-angle-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>

    <!-- Slider Right Control -->
    <a class="right carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="next">
        <span class="fa fa-angle-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>

</div>

<div class="wrapper">
    <div class="main">
        <section class="content">
            <div class="parallax img-uno" id="m">
                <div class="texto-interior">
                    <h2 id="m">BMX</h2>
                    <a href="./videos-bmx.php" class="btn">Ver videos</a>
                </div>
            </div><!-- .parallax -->

            <div class="parallax img-dos" id="p">
                <div class="texto-interior">
                    <h2>MTB</h2>
                    <a href="./videos-mtb.php" class="btn">Ver videos</a>
                </div>
            </div> <!-- .parallax -->

            <div class="parallax img-tres" id="c">
                <div class="texto-interior">
                    <h2>RUTA</h2>
                    <a href="./videos-ruta.php" class="btn">Ver videos</a>
                </div>

            </div> <!-- .parallax -->
        </section> <!-- .content -->

    </div>
    <!--.main -->
</div> <!-- wrapper -->




<?php require_once('footer.php'); ?>