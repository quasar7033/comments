<?php include_once 'model.php'?>
<?php include_once 'Db.php'?>
<?php include_once 'recaptchalib.php' ?>
<?php
if ($_POST['submit']){
    $secret = "6Lc6uaMUAAAAABGc-4koqZfesKnRn26hZqlbJR_5";
    $response = null;
    $reCaptcha = new ReCaptcha($secret);
    $login = false;
    $password = false;
    $login = $_POST['login'];
    $password = $_POST['password'];

    $errors = false;
    if ($login == false){
        $errors[] = 'enter login';
    }
    if ($password == false){
        $errors[] = 'enter password';
    }
    if(User::checkUser($login)){
        $errors[] = 'your login is allready exist';
    }

    if ($_POST["g-recaptcha-response"]) {
        $response = $reCaptcha->verifyResponse(
            $_SERVER["REMOTE_ADDR"],
            $_POST["g-recaptcha-response"]
        );
    }
    if (!($response != null && $response->success)) {
        $errors[] = 'verify in ReCaptcha';
    }


    if ($errors == false){
        if (User::addUser($login, $password)){
            session_start();
            $_SESSION['login'] = $login;
            header("Location: index.php");
        }
    }
}

?>

<?php include_once "header.php"?>
<link rel="stylesheet" href="register.css">

    <div>
        <p class="register-name">
            registration
        </p>
    </div>
<?php if (isset($errors) && is_array($errors)): ?>
    <ul class="errors">
        <?php foreach ($errors as $error): ?>
            <li> - <?php echo $error; ?></li>
        <?php endforeach; ?>
    </ul>
<?php endif; ?>


<div class="comments">
    <form method="post" class="full-comment row" action="register.php">
            <div class="col"></div>
            <div class="comment col-4">
                <div class="row">
                    <p class="col">Enter Login</p>
                    <input class="col" type="text" name="login" value="<?php echo $login?>">
                </div>
                <div class="row">
                    <p class="col">Enter Password</p>
                    <input class="col" type="password" name="password" value="<?php echo $password?>">
                </div>
                <div class="g-recaptcha" data-sitekey="6Lc6uaMUAAAAAH6QB2jwQvLq99VcXPLnhcwem5dM"></div>
                <input type="submit" name="submit">
                <div class="comment-text">
                    <p><?php echo $comment['comment'];?></p>
                </div>
            </div>
            <div class="col"></div>
    </form>

</div>


<?php include_once "footer.php"?>