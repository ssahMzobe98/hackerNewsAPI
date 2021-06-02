<?php
session_start();
if(isset($_SESSION['id'])){

	include_once("../functions/pdo.php");
	include_once("../functions/mzoebeNews.php");
}
else{
	header("Location:../?error=Warning: illegal attempt!!");exit();

}

?>