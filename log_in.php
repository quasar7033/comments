<?php include_once 'model.php'?>
<?php include_once 'Db.php'?>
<?php
if ($_POST['submit']){
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
    if(!User::checkUserLogIn($login, $password)){
        $errors[] = 'wrong login or password';
    }

    if ($errors == false){
            session_start();
            $_SESSION['login'] = $login;
            header("Location: index.php");

    }
}

?>

<?php include_once "header.php"?>
    <link rel="stylesheet" href="register.css">

<div>
    <p class="register-name">
        log in
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
        <form method="post" class="full-comment row" action="log_in.php">
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
                <input type="submit" name="submit">
                <div class="comment-text">
                    <p><?php echo $comment['comment'];?></p>
                </div>
            </div>
            <div class="col"></div>
        </form>
    </div>

    <div class="row">
        <div class="col"></div>
        <div class="col-4">
            <form action="register.php">
                <button class="button button-log">Registration (if you dont have login)</button>
            </form>
        </div>
        <div class="col"></div>

    </div>


<?php include_once "footer.php"?>