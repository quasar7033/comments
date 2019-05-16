

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8" http-equiv="content-type" content="text/html">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Comments</title>
    <link rel="stylesheet" href="main.css">
    <link rel="stylesheet" href="animate.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>

<body>
<header>
    <div class="header-icon"><a href="index.php"><i class="fab fa-500px fa-6x icon1"></i></a>
        <?php if($_SESSION['login']!= false):  ?>
            <div class="header-velcome">
                <p>Hello <?php echo $_SESSION['login'];?></p>
            </div>
        <?php endif;  ?>
    </div>
    <div class="user-panel">
        <?php if($_SESSION['login']== false):  ?>
            <a href="log_in.php">log in</a>
            <a href="register.php">register</a>
        <?php else:  ?>
        <a href="log_out.php">log out</a>
        <?php endif;  ?>
    </div>
</header>