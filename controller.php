<?php
session_start();
include_once 'Db.php';
$allComments = Comments::getAllComments();
?>