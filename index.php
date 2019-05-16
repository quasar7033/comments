<?php
$message = false;
if ($_POST['mainSubmit']){
    $message = $_POST['message'];
    if($message!= ''){
        Comments::addComment($_SESSION['login'], $message);
        header("Location: index.php");
    }
}
?>

<?php include_once "model.php"?>
<?php include_once "controller.php";?>
<?php include_once "header.php"?>



<?php if($_SESSION['login']!= false):  ?>
    <div class="container-add-comment row">
        <div class="col"></div>
        <div class="add-comment col-8">
            <form method="post" action="index.php">
                <label>Add comment</label>
                <hr>
                <textarea name="message"></textarea><br>
                <input type="submit" value="submit" name="mainSubmit">
            </form>
        </div>
        <div class="col"></div>
    </div>
<?php else:  ?>
 <div class="row">
     <div class="col-5"></div>
     <div class="col-2">
         <form action="log_in.php">
             <button class="button button-log">Log In to write the comments</button>
         </form>
     </div>
     <div class="col-3"></div>

 </div>

<?php endif;  ?>



    <div class="comments">
        <?php foreach ($allComments as $comment): ?>
        <div class="full-comment row" >
        <div class="col"></div>
        <div class="comment col-8">
            <div class="comment-head row">
                <p class="col"><?php echo $comment['name'];?></p>
                <p class="col"><?php echo $comment['comment_date'];?></p>
            </div>
            <div class="comment-text">
                <p><?php echo $comment['comment'];?></p>
            </div>
        </div>
        <div class="col"></div>
        </div>
        <?php endforeach; ?>
    </div>

<button class="top">Go to top</button>

<?php include_once "footer.php"?>






