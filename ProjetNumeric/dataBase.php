<?php

try{
    $db = new PDO('mysql:host=localhost;dbname=numeric_history', 'root', "");
}catch(PDOException $e){
    die('Erreur connexion : '.$e->getMessage());
}
?>