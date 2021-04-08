<?php require_once('header.php'); ?>
<style>
    .page-banner {
        padding: 0;
    }

    .second-header {
        /* min-height: 100vh; */
        position: relative;
    }

    .second-header .container {
        max-width: 1368px;
        margin: 0 auto;
        padding: 1rem 2rem;
    }

    .second-header .container .showcase {
        min-height: 54vh;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: flex-start;
        width: auto;
    }

    .second-header .container .showcase h1 {
        color: #fff;
        font-size: 5rem;
        margin-bottom: 0;
        font-weight: 700;
        margin-bottom: 1rem;
    }

    .second-header .container .showcase p {
        margin-top: 0;
        color: #fff;
        font-weight: 500;
        line-height: 1.4;
        font-size: 2.7vmin;
        /* width: 60rem; */
    }

    .second-header .container .showcase a {
        margin-top: 1rem;
        background-color: #EE1D23;
        color: #fff;
        border: none;
        outline: none;
        padding: 1rem 1.5rem;
        font-size: 0.9rem;
        border-radius: 6px;
        cursor: pointer;
    }

    .second-header .video-container {
        z-index: -1;
        position: absolute;
        top: 0;
        left: 0;
        height: 54vh;
        width: 100%;
    }

    .second-header .video-container video {
        height: 100%;
        width: 100%;
        object-fit: cover;
    }

    .second-header .video-container::after {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        height: 100%;
        width: 100%;
        background-color: rgba(0, 0, 0, 0.82);
    }

    #section-1 h1 {
        color: #000;
        text-align: left;
        padding: 5% 0 1% 0;
    }

    /* Lazy Load Styles */
    .card-image {
        display: block;
        min-height: 20rem;
        /* layout hack */
        background: #fff center center no-repeat;
        background-size: cover;
        /* filter: blur(3px); */
        /* blur the lowres image */
    }

    .card-image>img {
        display: block;
        width: 100%;
        opacity: 0;
        /* visually hide the img element */
    }

    .card-image.is-loaded {
        filter: none;
        /* remove the blur on fullres image */
        transition: filter 1s;
    }





    .card-list {
        display: block;
        margin: 1rem auto;
        padding: 0;
        font-size: 0;
        text-align: center;
        list-style: none;
        min-height: 36rem;
    }

    .card {
        display: inline-block;
        width: auto;
        /* max-width: 20rem; */
        margin: 1rem;
        font-size: 1rem;
        text-decoration: none;
        overflow: hidden;
        box-shadow: 0 0 3rem -1rem rgba(0, 0, 0, 0.5);
        transition: transform 0.1s ease-in-out, box-shadow 0.1s;
        border-radius: 10px;
        text-align: left;
    }

    .card:hover {
        transform: translateY(-0.5rem) scale(1.0125);
        box-shadow: 0 0.5em 3rem -1rem rgba(0, 0, 0, 0.5);
    }

    .card-description {
        display: block;
        padding: 1em 0.5em;
        color: #515151;
        text-decoration: none;
        padding: 5%;

    }

    .card-description>h3 {
        margin: 0 0 0.5em;
    }

    .card-description>p {
        margin: 0;
        font-size: 1.5vmin;
    }


    .contenedor:hover .imagen {
        -webkit-transform: scale(1.3);
        transform: scale(1.3);
    }

    .contenedor {
        overflow: hidden;
    }

    @media (max-width: 850px) {

        .second-header .container .showcase {
            min-height: 80vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            width: 100%;
            text-align: center;
        }

        .second-header .container .showcase h1 {
            font-size: 2.25rem;
        }
    }

    @media (max-width: 500px) {
        .second-headerr .container .showcase h1 {
            font-size: 2.1rem;
        }

        .second-header .container .showcase p {
            font-size: 1rem;
            width: 300px;
        }
    }

    body {
        margin: 0;
    }

    .img-container {
        height: 51vh;
        overflow: hidden;
        position: relative;
        width: 100vw;
    }

    .img-container img {
        height: 100%;
        left: 0;
        -o-object-fit: cover;
        object-fit: cover;
        -o-object-position: center;
        object-position: center;
        opacity: 0;
        position: absolute;
        top: 0;
        width: 100%;
        z-index: -1;
    }

    .img-container img.next {
        opacity: 1;
        z-index: 1;
    }

    .img-container img.prev {
        opacity: 1;
        z-index: 2;
    }

    .img-container img.fade-out {
        opacity: 0;
        transition: visibility 0s 0.5s, opacity 0.5s linear;
        visibility: hidden;
    }

    .card {
        display: flex;
    }

    .card-list {
        display: flex;
        justify-content: center;
        align-items: center;
    }
</style>


<div id="bootstrap-touch-slider" class="carousel bs-slider fade control-round indicators-line" data-ride="carousel" data-pause="hover" data-interval="false">

    <!-- Wrapper For Slides -->
    <div class="carousel-inner" role="listbox">

        <?php
        $i = 0;
        $statement = $pdo->prepare("SELECT * FROM tbl_slider_mtb");
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


<div class="page-banner">
    <section class="container-fluid" id="section-1">
        <div class="row">

            <?php
            $i = 0;
            $statement = $pdo->prepare("SELECT * FROM tbl_upload_mtb ORDER BY id DESC");
            $statement->execute();
            $result = $statement->fetchAll(PDO::FETCH_ASSOC);
            foreach ($result as $row) {
                $video = $row['video'];
            ?>
                <div class="col-md-4">
                    <ul class="card-list">
                        <li class="card">
                            <?php echo $video; ?>
                        </li>
                    </ul>
                </div>

            <?php $i++;
            } ?>
        </div>
    </section>
</div>

<div class="page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">

            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>

<script>
    // This is "probably" IE9 compatible but will need some fallbacks for IE8
    // - (event listeners, forEach loop)

    // wait for the entire page to finish loading
    window.addEventListener('load', function() {

        // setTimeout to simulate the delay from a real page load
        setTimeout(lazyLoad, 1000);

    });

    function lazyLoad() {
        var card_images = document.querySelectorAll('.card-image');

        // loop over each card image
        card_images.forEach(function(card_image) {
            var image_url = card_image.getAttribute('data-image-full');
            var content_image = card_image.querySelector('img');

            // change the src of the content image to load the new high res photo
            content_image.src = image_url;

            // listen for load event when the new photo is finished loading
            content_image.addEventListener('load', function() {
                // swap out the visible background image with the new fully downloaded photo
                card_image.style.backgroundImage = 'url(' + image_url + ')';
                // add a class to remove the blur filter to smoothly transition the image change
                card_image.className = card_image.className + ' is-loaded';
            });

        });

    }
</script>

<script>
    class Slideshow {

        constructor() {
            this.initSlides();
            this.initSlideshow();
        }

        // Set a `data-slide` index on each slide for easier slide control.
        initSlides() {
            this.container = $('[data-slideshow]');
            this.slides = this.container.find('img');
            this.slides.each((idx, slide) => $(slide).attr('data-slide', idx));
        }

        // Pseudo-preload images so the slideshow doesn't start before all the images
        // are available.
        initSlideshow() {
            this.imagesLoaded = 0;
            this.currentIndex = 0;
            this.setNextSlide();
            this.slides.each((idx, slide) => {
                $('<img>').on('load', $.proxy(this.loadImage, this)).attr('src', $(slide).attr('src'));
            });
        }

        // When one image has loaded, check to see if all images have loaded, and if
        // so, start the slideshow.
        loadImage() {
            this.imagesLoaded++;
            if (this.imagesLoaded >= this.slides.length) {
                this.playSlideshow()
            }
        }

        // Start the slideshow.
        playSlideshow() {
            this.slideshow = window.setInterval(() => {
                this.performSlide()
            }, 3500);
        }

        // 1. Previous slide is unset.
        // 2. What was the next slide becomes the previous slide.
        // 3. New index and appropriate next slide are set.
        // 4. Fade out action.
        performSlide() {
            if (this.prevSlide) {
                this.prevSlide.removeClass('prev fade-out')
            }

            this.nextSlide.removeClass('next');
            this.prevSlide = this.nextSlide;
            this.prevSlide.addClass('prev');

            this.currentIndex++;
            if (this.currentIndex >= this.slides.length) {
                this.currentIndex = 0
            }

            this.setNextSlide();

            this.prevSlide.addClass('fade-out');
        }

        setNextSlide() {
            this.nextSlide = this.container.find(`[data-slide="${this.currentIndex}"]`).first();
            this.nextSlide.addClass('next');
        }

    }

    $(document).ready(function() {
        new Slideshow;
    });
</script>