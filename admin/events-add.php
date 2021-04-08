<?php require_once('header.php'); ?>
<?php
if (isset($_POST['form1'])) {
    // updating the database
    $statement = $pdo->prepare("INSERT INTO tbl_upload_events(video) VALUES (?)");
    $statement->execute(array(
        $_POST['video']
    ));

    $success_message = 'Video almacenado exitosamente';
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Agregar video</h1>
	</div>
	<div class="content-header-right">
		<a href="events.php" class="btn btn-primary btn-sm">Ver todo</a>
	</div>
</section>

<section class="content">

    <div class="row">
        <div class="col-md-12">

            <?php if ($error_message) : ?>
                <div class="callout callout-danger">
                    <p>
                        <?php echo $error_message; ?>
                    </p>
                </div>
            <?php endif; ?>

            <?php if ($success_message) : ?>
                <div class="callout callout-success">
                    <p><?php echo $success_message; ?></p>
                </div>
            <?php endif; ?>

            <form class="form-horizontal" action="" method="post">
                <div class="box box-info">
                    <div class="box-body">
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">Iframe del video</label>
                            <div class="col-sm-8">
                                <textarea class="form-control" name="video"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label"></label>
                            <div class="col-sm-5">
                                <button type="submit" class="btn btn-success pull-left" name="form1">Agregar</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

</section>