<?php require_once('header.php'); ?>

<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'admin/PHPMailer/src/Exception.php';
require 'admin/PHPMailer/src/PHPMailer.php';
require 'admin/PHPMailer/src/SMTP.php';

$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $row) {
    $banner_forget_password = $row['banner_forget_password'];
}
?>

<?php
if (isset($_POST['form1'])) {

    $valid = 1;

    if (empty($_POST['cust_email'])) {
        $valid = 0;
        $error_message .= LANG_VALUE_131 . "\\n";
    } else {
        if (filter_var($_POST['cust_email'], FILTER_VALIDATE_EMAIL) === false) {
            $valid = 0;
            $error_message .= LANG_VALUE_134 . "\\n";
        } else {
            $statement = $pdo->prepare("SELECT * FROM tbl_customer WHERE cust_email=?");
            $statement->execute(array($_POST['cust_email']));
            $total = $statement->rowCount();
            if (!$total) {
                $valid = 0;
                $error_message .= LANG_VALUE_135 . "\\n";
            }
        }
    }

    if ($valid == 1) {

        $statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
        $statement->execute();
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
        foreach ($result as $row) {
            $forget_password_message = $row['forget_password_message'];
        }

        $token = md5(rand());
        $now = time();

        $statement = $pdo->prepare("UPDATE tbl_customer SET cust_token=?,cust_timestamp=? WHERE cust_email=?");
        $statement->execute(array($token, $now, strip_tags($_POST['cust_email'])));

        $message = '<p>' . LANG_VALUE_142 . '<br> <a href="http://chechobikes.com/reset-password.php?email=' . $_POST['cust_email'] . '&token=' . $token . '">Click here</a>';

        $to      = $_POST['cust_email'];
        $subject = LANG_VALUE_143;



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
            $mail->setFrom('camibal1995@gmail.com', 'Mailer');          //Este es el correo electrónico desde el que envía su formulario
            $mail->addAddress($to, 'Usuario'); // Agregar una dirección de destinatario


            //Contenido
            $mail->isHTML(true);                                  // Establecer formato de correo electrónico a HTML
            $mail->Subject = $subject;
            $mail->Body    = $message;

            $mail->send();
            echo "<script>alert('El correo a sido enviado exitosamente')</script>";
        } catch (Exception $e) {
            echo "<script>alert($error_message)</script>";
        }
    }
}
?>

<div class="page-banner" style="background-color:#444;background-image: url(assets/uploads/<?php echo $banner_forget_password; ?>);">
    <div class="inner">
        <h1><?php echo LANG_VALUE_97; ?></h1>
    </div>
</div>

<div class="page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="user-content">
                  
                    <form action="" method="post">
                        <?php $csrf->echoInputField(); ?>
                        <div class="row">
                            <div class="col-md-4"></div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for=""><?php echo LANG_VALUE_94; ?> *</label>
                                    <input type="email" class="form-control" name="cust_email">
                                </div>
                                <div class="form-group">
                                    <label for=""></label>
                                    <input type="submit" class="btn btn-primary" value="<?php echo LANG_VALUE_4; ?>" name="form1">
                                </div>
                                <a href="login.php" style="color:#e4144d;"><?php echo LANG_VALUE_12; ?></a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>