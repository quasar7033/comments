<?php
class Db{
    public static function getConnection(){
        $db = new PDO('mysql:host=localhost;dbname=comments', 'root', '');
        $db->exec("set names utf8");
        return $db;
    }
}?>