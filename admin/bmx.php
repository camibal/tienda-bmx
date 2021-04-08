<?php require_once('header.php'); ?>
<!-- slider videos -->
<section class="content-header">
    <div class="content-header-left">
        <h1>Slider Videos BMX</h1>
    </div>
    <div class="content-header-right">
        <a href="bmx-slider-add.php" class="btn btn-primary btn-sm">Agregar slider video</a>
    </div>
</section>

<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box box-info">
				<div class="box-body table-responsive">
					<table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>SL</th>
								<th>Photo</th>
								<th>Heading</th>
								<th>Content</th>
								<th>Position</th>
								<th width="140">Action</th>
							</tr>
						</thead>
						<tbody>
							<?php
							$i=0;
							$statement = $pdo->prepare("SELECT
														
														id,
														photo,
														heading,
														content,
														position

							                           	FROM tbl_slider_bmx
							                           	
							                           	");
							$statement->execute();
							$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
							foreach ($result as $row) {
								$i++;
								?>
								<tr>
									<td><?php echo $i; ?></td>
									<td style="width:150px;"><img src="../assets/uploads/<?php echo $row['photo']; ?>" alt="<?php echo $row['heading']; ?>" style="width:140px;"></td>
									<td><?php echo $row['heading']; ?></td>
									<td><?php echo $row['content']; ?></td>
									<td><?php echo $row['position']; ?></td>
									<td>										
										<a href="bmx-slider-edit.php?id=<?php echo $row['id']; ?>" class="btn btn-primary btn-xs">Edit</a>
										<a href="#" class="btn btn-danger btn-xs" data-href="bmx-slider-delete.php?id=<?php echo $row['id']; ?>" data-toggle="modal" data-target="#confirm-delete">Delete</a>  
									</td>
								</tr>
								<?php
							}
							?>							
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- videos -->

<section class="content-header">
    <div class="content-header-left">
        <h1>Videos BMX</h1>
    </div>
    <div class="content-header-right">
        <a href="bmx-add.php" class="btn btn-primary btn-sm">Agregar video</a>
    </div>
</section>

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-info">
                <div class="box-body table-responsive">
                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th width="30">SL</th>
                                <th>Video</th>
                                <th width="80">Acción</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $i = 0;
                            $statement = $pdo->prepare("SELECT * FROM tbl_upload_bmx ORDER BY id DESC");
                            $statement->execute();
                            $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                            foreach ($result as $row) {
                                $i++;
                            ?>
                                <tr>
                                    <td><?php echo $i; ?></td>
                                    <td><?php echo $row['video']; ?></td>
                                    <td>
                                        <a href="#" class="btn btn-danger btn-xs" data-href="bmx-delete.php?id=<?php echo $row['id']; ?>" data-toggle="modal" data-target="#confirm-delete">Delete</a>
                                    </td>
                                </tr>
                            <?php
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Eliminar confirmación</h4>
            </div>
            <div class="modal-body">
                <p>¿Estas seguro que deseas eliminarlo?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <a class="btn btn-danger btn-ok">Eliminar</a>
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>