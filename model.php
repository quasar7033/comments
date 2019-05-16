<?php


class User{
    public static function addUser($name, $pass){
        $db = Db::getConnection();
        $sql = 'INSERT INTO users (name, password) VALUES (:name, :password)';
        $result = $db->prepare($sql);
        $result->bindParam('name', $name, PDO::PARAM_STR);
        $result->bindParam('password', $pass, PDO::PARAM_STR);
        $result->execute();
        return true;

    }
    public static function checkUser($name){
        $db = Db::getConnection();
        $sql = 'SELECT COUNT(*) FROM users WHERE name = :name';
        $result = $db->prepare($sql);
        $result->bindParam(':name', $name,PDO::PARAM_STR);
        $result->execute();
        if ($result->fetchColumn()){
            return true;
        }
        return false;
    }
    public static function checkUserLogIn($name, $password){
        $db = Db::getConnection();
        $sql = 'SELECT COUNT(*) FROM users WHERE name = :name AND password = :password';
        $result = $db->prepare($sql);
        $result->bindParam(':name', $name,PDO::PARAM_STR);
        $result->bindParam(':password', $password,PDO::PARAM_STR);
        $result->execute();
        if ($result->fetchColumn()){
            return true;
        }
        return false;
    }


}

class Comments{
    public static function addComment($name, $comment){

        $db = Db::getConnection();
        $sql = 'SELECT * FROM users WHERE name = :name';
        $result = $db->prepare($sql);
        $result->bindParam(':name', $name, PDO::PARAM_STR);
        $result->execute();
        $row = $result->fetch();
        $user_id = $row['id'];

        $sql = 'INSERT INTO comment (user_id, comment_user) VALUES (:user_id, :comment)';
        $result = $db->prepare($sql);
        $result->bindParam(':user_id', $user_id, PDO::PARAM_STR);
        $result->bindParam(':comment', $comment, PDO::PARAM_STR);
        $result->execute();
        return true;

    }
    public static function getAllComments(){
        $db = Db::getConnection();
        $sql = 'SELECT * FROM comment INNER JOIN users ON comment.user_id = users.id ORDER BY comment.id DESC ';
        $result = $db->prepare($sql);
        $result->execute();

        $i =0;
        $allComments = array();
        while($row = $result->fetch()){
            $allComments[$i]['name'] =$row['name'];
            $allComments[$i]['comment_date'] =$row['comment_date'];
            $allComments[$i]['comment'] =$row['comment_user'];
            $i++;
        }
        return $allComments;
    }
}
?>