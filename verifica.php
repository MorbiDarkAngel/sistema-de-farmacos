<?php 
session_start();
if(!isset($_SESSION["id_usuario"])  || !isset($_SESSION["login"]) && !isset($_SESSION["senha"]))
{ 
header("Location: login.php"); 
exit; 
} 
?> 
