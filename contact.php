<?php require_once('header.php'); ?>

<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'admin/PHPMailer/src/Exception.php';
require 'admin/PHPMailer/src/PHPMailer.php';
require 'admin/PHPMailer/src/SMTP.php';

$statement = $pdo->prepare("SELECT * FROM tbl_page WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $row) {
    $contact_title = $row['contact_title'];
    $contact_banner = $row['contact_banner'];
}
$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $row) {
    $contact_map_iframe = $row['contact_map_iframe'];
    $contact_email = $row['contact_email'];
    $contact_phone = $row['contact_phone'];
    $contact_address = $row['contact_address'];
}
?>

<div class="page-banner" style="background-image: url(assets/uploads/<?php echo $contact_banner; ?>);">
    <div class="inner">
        <h1><?php echo $contact_title; ?></h1>
    </div>
</div>

<div class="page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3>Formulario de contacto</h3>
                <div class="row cform">
                    <div class="col-md-8">
                        <div class="well well-sm">

                            <?php
                            // After form submit checking everything for email sending
                            if (isset($_POST['form_contact'])) {
                                $error_message = '';
                                $success_message = '';
                                $statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
                                $statement->execute();
                                $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                foreach ($result as $row) {
                                    $receive_email = $row['receive_email'];
                                    $receive_email_subject = $row['receive_email_subject'];
                                    $receive_email_thank_you_message = $row['receive_email_thank_you_message'];
                                }

                                $valid = 1;

                                if (empty($_POST['visitor_name'])) {
                                    $valid = 0;
                                    $error_message .= 'Please enter your name.\n';
                                }

                                if (empty($_POST['visitor_phone'])) {
                                    $valid = 0;
                                    $error_message .= 'Please enter your phone number.\n';
                                }


                                if (empty($_POST['visitor_email'])) {
                                    $valid = 0;
                                    $error_message .= 'Please enter your email address.\n';
                                } else {
                                    // Email validation check
                                    if (!filter_var($_POST['visitor_email'], FILTER_VALIDATE_EMAIL)) {
                                        $valid = 0;
                                        $error_message .= 'Please enter a valid email address.\n';
                                    }
                                }

                                if (empty($_POST['visitor_message'])) {
                                    $valid = 0;
                                    $error_message .= 'Please enter your message.\n';
                                }

                                if ($valid == 1) {

                                    $visitor_name = strip_tags($_POST['visitor_name']);
                                    $visitor_email = strip_tags($_POST['visitor_email']);
                                    $visitor_phone = strip_tags($_POST['visitor_phone']);
                                    $visitor_message = strip_tags($_POST['visitor_message']);

                                    // sending email
                                    $to_admin = $receive_email;
                                    $subject = $receive_email_subject;
                                    $message = '
<html><body>
<table>
<tr>
<td>Name</td>
<td>' . $visitor_name . '</td>
</tr>
<tr>
<td>Email</td>
<td>' . $visitor_email . '</td>
</tr>
<tr>
<td>Phone</td>
<td>' . $visitor_phone . '</td>
</tr>
<tr>
<td>Comment</td>
<td>' . nl2br($visitor_message) . '</td>
</tr>
</table>
</body></html>
';

                                    $mail = new PHPMailer(true);                              // Pasar `true` habilita excepciones
                                    try {
                                        //Configuraciones de servidor
                                        $mail->SMTPDebug = 2;                                 // Habilitar salida de depuración detallada
                                        $mail->isSMTP();                                      // Configurar el remitente para usar SMTP
                                        $mail->Host = 'smtp.gmail.com';                  // Especificar servidores SMTP principales y de respaldo
                                        $mail->SMTPAuth = true;                               // Habilitar autenticación SMTP
                                        $mail->Username = 'camibal1995@gmail.com';             // Nombre usuario SMTP
                                        $mail->Password = 'caanbavi';                           // Contraseña SMTP
                                        $mail->SMTPSecure = 'ssl';                            // Habilitar encriptación SSL, TLS también es aceptado con el puerto 587
                                        $mail->Port = 465;                                    // TCP puerto para conectarse

                                        //Destinatarios
                                        $mail->setFrom($visitor_email, $visitor_name);          //Este es el correo electrónico desde el que envía su formulario
                                        $mail->addAddress('camibal1995@gmail.com', 'Admin'); // Agregar una dirección de destinatario


                                        //Contenido
                                        $mail->isHTML(true);                                  // Establecer formato de correo electrónico a HTML
                                        $mail->Subject = $subject;
                                        $mail->Body    = $message;

                                        $mail->send();
                                        echo "<script>alert('El correo a sido enviado exitosamente')</script>";
                                    } catch (Exception $e) {
                                        echo "<script>alert('A ocurrido un error por favor intentar de nuevo o mas tarde', $e)</script>";
                                    }
                                }
                            }
                            ?>



                            <form action="" method="post">
                                <?php $csrf->echoInputField(); ?>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="name">Nombre</label>
                                            <input type="text" class="form-control" name="visitor_name" placeholder="Ingrese nombre">
                                        </div>
                                        <div class="form-group">
                                            <label for="email">EDirección de correo electrónico</label>
                                            <input type="email" class="form-control" name="visitor_email" placeholder="Ingrese correo">
                                        </div>
                                        <div class="form-group">
                                            <label for="email">Número telefónico</label>
                                            <input type="text" class="form-control" name="visitor_phone" placeholder="Ingrese numero de Teléfono">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="name">Mensaje</label>
                                            <textarea name="visitor_message" class="form-control" rows="9" cols="25" placeholder="Ingrese mensaje"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="submit" value="Enviar mensaje" class="btn btn-primary pull-right" name="form_contact">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <legend><span class="glyphicon glyphicon-globe"></span> Nuestra oficina</legend>
                        <address>
                            <?php echo nl2br($contact_address); ?>
                        </address>
                        <address>
                            <strong>Teléfono:</strong><br>
                            <span><?php echo $contact_phone; ?></span>
                        </address>
                        <address>
                            <strong>Correo:</strong><br>
                            <a href="mailto:<?php echo $contact_email; ?>"><span><?php echo $contact_email; ?></span></a>
                        </address>
                    </div>
                </div>



            </div>
        </div>
    </div>
    <div class="container-fluid-map">
        <!-- <h3>Encuéntranos en el mapa</h3> -->
        <?php echo $contact_map_iframe; ?>
    </div>
</div>

<?php require_once('footer.php'); ?>