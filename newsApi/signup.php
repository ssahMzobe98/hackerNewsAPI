<?php
if(isset($_POST['signup'])){
	include_once("functions/pdo.php");
	$_=mysqli_escape_string($conn,$_POST['email']);
	$_0=mysqli_escape_string($conn,$_POST['fname']);
	$_01=mysqli_escape_string($conn,$_POST['lname']);
	$_1=hash('sha256',mysqli_escape_string($conn,$_POST['pass']));
	$s=0;
$a=0;
	//i could have created my own encyphering method.
	$_11="select username from user where username=? Limit 1";
	$stmt = $conn->prepare($_11);
	$stmt->bind_param("s", $_11);
	$stmt->execute();
	$stmt->bind_result($_11);
	$stmt->store_result();
	$rnum = $stmt->num_rows;
	if($rnum==1){
		header("Location:./?error=username already taken");exit();
	}
	else{
		if($conn->query("insert into user(username,firstname,lastname,password,isadmin,isloggedin,about,time_reg)values('$_','$_0','$_01','$_1','$s','$a','$a',NOW())")){
			header("Location:./?success=Account Created successfuly");exit();
		}
		else{
			header("Location:./?error=".$conn->error);exit();
		}
	}
}
?>
<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta name="author" content="Mr M.S Mzobe">
	<link rel='dns-prefetch' href='//s0.wp.com' />
	<link rel='dns-prefetch' href='#'/>
	<link rel='dns-prefetch' href='//fonts.googleapis.com' />
	<link rel='dns-prefetch' href='//s.w.org' />
	<link rel="alternate" type="application/rss+xml" title="Samble Site &raquo; Feed" href="#/feed/" />
	<link rel="alternate" type="application/rss+xml" title="Samble Site &raquo; Comments Feed" href="#/feed/" />
	<link rel="stylesheet" type="text/css" href="css/index1.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style></style>
</head>
<style >


</style>
<body>
<center>
	<div class="content">
		<div class="mac">
			<div class="sub-body">
				<h2 class="login">Hacker News SignUp</h2>
			</div>
			<form action="signup.php" method="post">
				<div class="media-content">
						<i  class="fa fa-hacker-news" style="font-size:58px;color:orangered;" aria-hidden="true"></i>
				</div>
				<br>
				<div class="media-content"><label>First Name</label></div>
				<div class="media-content"><input title="Enter First Name" type="text" name="fname" placeholder="Enter First Name" required></div>
				<div class="media-content"><label>Last Name</label></div>
				<div class="media-content"><input title="Enter Last Name" type="text" name="lname" placeholder="Enter Last name" required></div>
				<div class="media-content"><label>Email Address/username</label></div>
				<div class="media-content"><input title="Enter Email Address" type="email" name="email" placeholder="Enter Email/username" required></div>
				<div class="media-content"><label>Password</label></div>
				<div class="media-content"><input title="Enter Password" type="password" name="pass" placeholder="Enter Password" required></div>
				<br>
				<div class="media-content">
					<div class="button"><button type="submit" name="signup" class="btn-subm">SignUp</button></div>
				</div>
            </form>
			<div class="error"><?php if(isset($_GET["error"])){echo $_GET['error'];}?></div>
			<div class="late flex">
				<div class="late-aff"> <a href="password.php"><div class="left">Forgot Password</div></a> </div>
				<div class="late-aff"> <a href="./"><div class="right">Login</div></a> </div>
			</div>

		</div>
	</div>
</center>

</body>
</html>
