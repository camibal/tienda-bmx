<?php require_once('header.php'); ?>

<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer-master/src/Exception.php';
require 'PHPMailer-master/src/PHPMailer.php';
require 'PHPMailer-master/src/SMTP.php';


$error_message = '';
if (isset($_POST['form1'])) {
    $valid = 1;
    if (empty($_POST['subject_text'])) {
        $valid = 0;
        $error_message .= 'Subject can not be empty\n';
    }
    if (empty($_POST['message_text'])) {
        $valid = 0;
        $error_message .= 'Subject can not be empty\n';
    }
    if ($valid == 1) {

        $subject_text = strip_tags($_POST['subject_text']);
        $message_text = strip_tags($_POST['message_text']);

        // Getting Customer Email Address
        $statement = $pdo->prepare("SELECT * FROM tbl_customer WHERE cust_id=?");
        $statement->execute(array($_POST['cust_id']));
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
        foreach ($result as $row) {
            $cust_email = $row['cust_email'];
        }

        // Getting Admin Email Address
        $statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
        $statement->execute();
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
        foreach ($result as $row) {
            $admin_email = $row['contact_email'];
        }

        $order_detail = '';
        $statement = $pdo->prepare("SELECT * FROM tbl_payment WHERE payment_id=?");
        $statement->execute(array($_POST['payment_id']));
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
        foreach ($result as $row) {

            if ($row['payment_method'] == 'PayPal') :
                $payment_details = '
Transacción Id: ' . $row['txnid'] . '<br>
        		';
            elseif ($row['payment_method'] == 'Stripe') :
                $payment_details = '
                Transacción Id: ' . $row['txnid'] . '<br>
Card number: ' . $row['card_number'] . '<br>
Card CVV: ' . $row['card_cvv'] . '<br>
Card Month: ' . $row['card_month'] . '<br>
Card Year: ' . $row['card_year'] . '<br>
        		';
            elseif ($row['payment_method'] == 'Bank Deposit') :
                $payment_details = '
Transaction Details: <br>' . $row['bank_transaction_info'];
            endif;

            $order_detail .= '
            Nombre del cliente: ' . $row['customer_name'] . '<br>
            Correo electrónico del cliente: ' . $row['customer_email'] . '<br>
            Fecha de pago: ' . $row['payment_date'] . '<br>
            Detalles del pago: <br>' . $payment_details . '<br>
            Monto total: ' . $row['paid_amount'] . '<br>
            Estado del pago: ' . $row['payment_status'] . '<br>
            Estado de envío: ' . $row['shipping_status'] . '<br>
            Id del pago: ' . $row['payment_id'] . '<br>
            ';
        }

        $i = 0;
        $statement = $pdo->prepare("SELECT * FROM tbl_order WHERE payment_id=?");
        $statement->execute(array($_POST['payment_id']));
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
        foreach ($result as $row) {
            $i++;
            $order_detail .= '
<br><b><u>Product Item ' . $i . '</u></b><br>
Nombre del Producto: ' . $row['product_name'] . '<br>
Talla: ' . $row['size'] . '<br>
Color: ' . $row['color'] . '<br>
Cantidad: ' . $row['quantity'] . '<br>
Precio unitario: ' . $row['unit_price'] . '<br>
Precio total: ' . $row['paid_amount'] . '<br>

            ';
        }

        $statement = $pdo->prepare("INSERT INTO tbl_customer_message (subject,message,order_detail,cust_id) VALUES (?,?,?,?)");
        $statement->execute(array($subject_text, $message_text, $order_detail, $_POST['cust_id']));

        // sending email
        $to_customer = $cust_email;
        $message = '
<html><body>
<h3>Mensaje: </h3>
' . $message_text . '
<h3>Detalles del pedido: </h3>
' . $order_detail . '
</body></html>
';

        $mail = new PHPMailer(true);                              // Pasar `true` habilita excepciones
        try {
            //Configuraciones de servidor
            $mail->SMTPDebug = 2;                                 // Habilitar salida de depuración detallada
            $mail->isSMTP();                                      // Configurar el remitente para usar SMTP
            $mail->Host = 'smtp.gmail.com';                  // Especificar servidores SMTP principales y de respaldo
            $mail->SMTPAuth = true;                               // Habilitar autenticación SMTP
            $mail->Username = 'ballesterosvillalbacamiloandre@gmail.com';             // Nombre usuario SMTP
            $mail->Password = 'Camibal1995';                           // Contraseña SMTP
            $mail->SMTPSecure = 'ssl';                            // Habilitar encriptación SSL, TLS también es aceptado con el puerto 587
            $mail->Port = 465;                                    // TCP puerto para conectarse

            //Destinatarios
            $mail->setFrom('ballesterosvillalbacamiloandre@gmail.com', 'Mailer');          //Este es el correo electrónico desde el que envía su formulario
            $mail->addAddress($to_customer, 'Usuario'); // Agregar una dirección de destinatario


            //Contenido
            $mail->isHTML(true);                                  // Establecer formato de correo electrónico a HTML
            $mail->Subject = $subject_text;
            $mail->Body    = $message;

            $mail->send();
            echo "<script>alert('El correo a sido enviado exitosamente')</script>";
        } catch (Exception $e) {
            echo "<script>alert('A ocurrido un error por favor intentar de nuevo o mas tarde')</script>";
        }
    }
}
?>
<?php
if ($error_message != '') {
    echo "<script>alert('" . $error_message . "')</script>";
}
if ($success_message != '') {
    echo "<script>alert('" . $success_message . "')</script>";
}
?>

<section class="content-header">
    <div class="content-header-left">
        <h1>View Orders</h1>
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
                                <th>Detalle del cliente</th>
                                <th>Detalles del producto</th>
                                <th>Fecha pedido</th>
                                <!-- <th>
                    	Payment Information
                    </th> -->
                                <th>Total a pagar</th>
                                <th>Estado del pago</th>
                                <th>Estado del envío</th>
                                <!-- <th>Acción</th> -->
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $i = 0;
                            $statement = $pdo->prepare("SELECT * FROM tbl_payment ORDER by id DESC");
                            $statement->execute();
                            $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                            foreach ($result as $row) {
                                $i++;
                            ?>
                                <tr class="<?php if ($row['payment_status'] == 'Pending') {
                                                echo 'bg-r';
                                            } else {
                                                echo 'bg-g';
                                            } ?>">
                                    <td><?php echo $i; ?></td>
                                    <td>
                                        <b>Id:</b> <?php echo $row['customer_id']; ?><br>
                                        <b>Nombre:</b><br> <?php echo $row['customer_name']; ?><br>
                                        <b>Correo:</b><br> <?php echo $row['customer_email']; ?><br><br>
                                        <a href="#" data-toggle="modal" data-target="#model-<?php echo $i; ?>" class="btn btn-warning btn-xs" style="width:100%;margin-bottom:4px;">Enviar mensaje</a>
                                        <div id="model-<?php echo $i; ?>" class="modal fade" role="dialog">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h4 class="modal-title" style="font-weight: bold;">Enviar mensaje</h4>
                                                    </div>
                                                    <div class="modal-body" style="font-size: 14px">
                                                        <form action="" method="post">
                                                            <input type="hidden" name="cust_id" value="<?php echo $row['customer_id']; ?>">
                                                            <input type="hidden" name="payment_id" value="<?php echo $row['payment_id']; ?>">
                                                            <table class="table table-bordered">
                                                                <tr>
                                                                    <td>Asunto</td>
                                                                    <td>
                                                                        <input type="text" name="subject_text" class="form-control" style="width: 100%;">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Mensaje</td>
                                                                    <td>
                                                                        <textarea name="message_text" class="form-control" cols="30" rows="10" style="width:100%;height: 200px;"></textarea>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td></td>
                                                                    <td><input type="submit" value="Send Message" name="form1"></td>
                                                                </tr>
                                                            </table>
                                                        </form>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <?php
                                        $statement1 = $pdo->prepare("SELECT * FROM tbl_order WHERE payment_id=?");
                                        $statement1->execute(array($row['payment_id']));
                                        $result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);
                                        foreach ($result1 as $row1) {
                                            echo '<b>Nombre del producto:</b> ' . $row1['product_name'];
                                            echo '<br>(<b>Talla:</b> ' . $row1['size'];
                                            echo ', <b>Color:</b> ' . $row1['color'] . ')';
                                            echo '<br>(<b>Cantidad:</b> ' . $row1['quantity'];
                                            echo ', <b>Precio unitario:</b> ' . $row1['unit_price'] . ')';
                                            echo '<br><br>';
                                        }
                                        ?>
                                    </td>
                                    <!-- <td>
                        	<?php if ($row['payment_method'] == 'PayPal') : ?>
                        		<b>Payment Method:</b> <?php echo '<span style="color:red;"><b>' . $row['payment_method'] . '</b></span>'; ?><br>
                        		<b>Payment Id:</b> <?php echo $row['payment_id']; ?><br>
                        		<b>Date:</b> <?php echo $row['payment_date']; ?><br>
                        		<b>Transaction Id:</b> <?php echo $row['txnid']; ?><br>
                        	<?php elseif ($row['payment_method'] == 'Stripe') : ?>
                        		<b>Payment Method:</b> <?php echo '<span style="color:red;"><b>' . $row['payment_method'] . '</b></span>'; ?><br>
                        		<b>Payment Id:</b> <?php echo $row['payment_id']; ?><br>
								<b>Date:</b> <?php echo $row['payment_date']; ?><br>
                        		<b>Transaction Id:</b> <?php echo $row['txnid']; ?><br>
                        		<b>Card Number:</b> <?php echo $row['card_number']; ?><br>
                        		<b>Card CVV:</b> <?php echo $row['card_cvv']; ?><br>
                        		<b>Expire Month:</b> <?php echo $row['card_month']; ?><br>
                        		<b>Expire Year:</b> <?php echo $row['card_year']; ?><br>
                        	<?php elseif ($row['payment_method'] == 'Bank Deposit') : ?>
                        		<b>Payment Method:</b> <?php echo '<span style="color:red;"><b>' . $row['payment_method'] . '</b></span>'; ?><br>
                        		<b>Payment Id:</b> <?php echo $row['payment_id']; ?><br>
								<b>Date:</b> <?php echo $row['payment_date']; ?><br>
                        		<b>Transaction Information:</b> <br><?php echo $row['bank_transaction_info']; ?><br>
                        	<?php endif; ?>
                        </td> -->
                                    <td><?php echo $row['payment_date']; ?></td>
                                    <td><?php echo $row['paid_amount']; ?></td>
                                    <td>
                                        <?php
                                        if ($row['payment_status'] == 'Completed') {


                                        ?>
                                            completo
                                        <?php } else if ($row['payment_status'] == 'Pending') { ?>
                                            Pendiente
                                        <?php } ?>
                                        <br><br>
                                        <?php
                                        if ($row['payment_status'] == 'Pending') {
                                        ?>
                                            <a href="order-change-status.php?id=<?php echo $row['id']; ?>&task=Completed" class="btn btn-warning btn-xs" style="width:100%;margin-bottom:4px;">Hacer completado</a>
                                        <?php
                                        }
                                        ?>
                                    </td>
                                    <td>
                                    <?php
                                            if ($row['shipping_status'] == 'Completed') {


                                            ?>
                                                completo
                                            <?php } else if ($row['shipping_status'] == 'Pending') { ?>
                                                Pendiente
                                            <?php } ?>
                                        
                                        <br><br>
                                        <?php
                                        if ($row['payment_status'] == 'Completed') {
                                            if ($row['shipping_status'] == 'Pending') {
                                        ?>
                                                <a href="shipping-change-status.php?id=<?php echo $row['id']; ?>&task=Completed" class="btn btn-warning btn-xs" style="width:100%;margin-bottom:4px;">Hacer completado</a>
                                        <?php
                                            }
                                        }
                                        ?>
                                    </td>
                                    <!-- <td>
                                        <a href="#" class="btn btn-danger btn-xs" data-href="order-delete.php?id=<?php echo $row['id']; ?>" data-toggle="modal" data-target="#confirm-delete" style="width:100%;">Eliminar</a>
                                    </td> -->
                                </tr>
                            <?php
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>


</section>


<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Delete Confirmation</h4>
            </div>
            <div class="modal-body">
                Are you sure want to delete this item?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                <a class="btn btn-danger btn-ok">Delete</a>
            </div>
        </div>
    </div>
</div>


<?php require_once('footer.php'); ?>