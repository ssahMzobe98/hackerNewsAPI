<?php
$user="root";
$pass="";
$dbnam="news";
$conn=mysqli_connect("localhost",$user,$pass,$dbnam)or die("Connection was not established!!");

class mzobeNewsApi{
	public function autoload(){
		$tz = new DateTimeZone("Africa/Johannesburg");
		$now = new DateTime("now", $tz);
		$yr=date("y");
		$m=$this->getMonth(date("m"));
		$day=date("d");
		$hour=$now->format("h");
		$min=$now->format("i");
		$sec=$now->format("s");
		$am=$now->format("a");
		echo "<div class='hours flex' style='margin-top:4%';><h6>Time(SA) : ".$hour.":".$min.":".$sec."".$am."</h6></div>";
		echo "<div class='days flex' style='margin-top:4%';><h6>Date : 20".$yr." ".$m." ".$day."</h6></div>" ;
		if(($hour==12 && $min==00 && $sec==00) || ($hour==01 && $min==00 && $sec==00)|| ($hour==02 && $min==00 && $sec==00)|| ($hour==03 && $min==55 && $sec==00) || ($hour==04 && $min==00 && $sec==00) || ($hour==05 && $min==00 && $sec==00) || ($hour==06 && $min==00 && $sec==00)|| ($hour==07 && $min==00 && $sec==00) || ($hour==8 && $min==00 && $sec==00) || ($hour==9 && $min==31 && $sec==00) || ($hour==10 && $min==00 && $sec==00) || ($hour==11 && $min==00 && $sec==00)){
			$this->getMzobeNews();
		}
	}
	public function getTodaysNews(){
		global $conn;
		$todaysDate=date("y-m-d");
		$_=$conn->query("select*from newsdb ORDER BY date_uploaded DESC");
		if($_->num_rows!=0){
			while($row=mysqli_fetch_array($_)){
				?>
				<div class="block-alter">
					<div class="block">
						<?php $ram=$row['img'];if(empty($row['img'])){$ram="../img/NoImageFound.png";}?>
						<div class="img-show">
							<img src="<?php echo $ram;?>">
						</div>
						<div class="time-load" style="font-size:10px;"> <?php $d1 = new DateTime($row['time_uploaded']);$time = $d1->format('h:i:sa');?>
							<h6><span style='color:red;'>Article date: </span><?php echo $row['date_uploaded']." | ".$time." || <span style='color:red;'>By:</span> ";if(empty($row['author'])){echo "N/A";}else{$split=str_split($row['author']);$count=count($split);if($count<=8){echo $row['author'];}else{for($i=0;$i<8;$i++){echo $split[$i];}echo"...";}}?></h6><h6><span style='color:red;'>Source:</span> <?php echo $row['source']." : ".$row['view_count']." views";?></h6>
						</div>
						<div class="title ">
							<h6><?php echo"<span style='color:red;'>Title:</span> ";$split=str_split($row['title']);$count=count($split);if($count<=130){echo $row['title'];}else{for($i=0;$i<130;$i++){echo $split[$i];}echo"...";}?></h6></div>
						<div class="mat-r flex">
							<div class="descr">
								<h6><?php echo"<span style='color:red;'>Description:</span> ";if(empty($row['descr'])){echo" No Description.";}else{$split=str_split($row['descr']);$count=count($split);if($count<=140){echo $row['descr'];}else{for($i=0;$i<140;$i++){echo $split[$i];}echo"...";}}?></h6>
							</div>
							<div class="url">
								<a href="<?php echo $row['url'];?>" target='_blank'><div class="btn"><button onclick="updateViewCount(<?php echo $row['item_id'];?>)">Read More</button></div></a>
							</div>
						</div>
						
						
					</div>	
				</div>
				<?php

			}
		}
		else{
			?>
			<div class="empty">
				<h2>No News For date (<?php echo $todaysDate;?>)</h2>
			</div>
			<?php
		}
	}
	private function getTopnews($nav){
		return $nav=="top_stories";
	}
	private function getYesterdaysNews($nav){
		return $nav=="yesterday";
	}
	private function get2daysAgoNews($nav){
		return $nav=="2_days_ago";
	}
	// private getPlus3daysAgoNews($nav){
	// 	return $nav=="3_days_ago";
	// }
	private function printTopstories(){
		global $conn;
		$_=$conn->query("select*from newsdb ORDER BY view_count DESC");
		while($row=mysqli_fetch_array($_)){
			?>
			<div class="block-alter">
				<div class="block">
					<?php $ram=$row['img'];if(empty($row['img'])){$ram="../img/NoImageFound.png";}?>
					<div class="img-show">
						<img src="<?php echo $ram;?>">
					</div>
					<div class="time-load" style="font-size:10px;"> <?php $d1 = new DateTime($row['time_uploaded']);$time = $d1->format('h:i:sa');?>
						<h6><span style='color:red;'>Article date: </span><?php echo $row['date_uploaded']." | ".$time." || <span style='color:red;'>By:</span> ";if(empty($row['author'])){echo "N/A";}else{$split=str_split($row['author']);$count=count($split);if($count<=8){echo $row['author'];}else{for($i=0;$i<8;$i++){echo $split[$i];}echo"...";}}?></h6><h6><span style='color:red;'>Source:</span> <?php echo $row['source']." : ".$row['view_count']." views";?></h6>
					</div>
					<div class="title ">
						<h6><?php echo"<span style='color:red;'>Title:</span> ";$split=str_split($row['title']);$count=count($split);if($count<=130){echo $row['title'];}else{for($i=0;$i<130;$i++){echo $split[$i];}echo"...";}?></h6></div>
					<div class="mat-r flex">
						<div class="descr">
							<h6><?php echo"<span style='color:red;'>Description:</span> ";if(empty($row['descr'])){echo" No Description.";}else{$split=str_split($row['descr']);$count=count($split);if($count<=140){echo $row['descr'];}else{for($i=0;$i<140;$i++){echo $split[$i];}echo"...";}}?></h6>
						</div>
						<div class="url">
							<a href="<?php echo $row['url'];?>" target='_blank'><div class="btn"><button onclick="updateViewCount(<?php echo $row['item_id'];?>)" >Read More</button></div></a>
						</div>
					</div>
					
					
				</div>	
			</div>

			<?php
		}
	}
	private function printYesterdayNews($row){
		?>
		<div class="block-alter">
			<div class="block">
				<?php $ram=$row['img'];if(empty($row['img'])){$ram="../img/NoImageFound.png";}?>
				<div class="img-show">
					<img src="<?php echo $ram;?>">
				</div>
				<div class="time-load" style="font-size:10px;"> <?php $d1 = new DateTime($row['time_uploaded']);$time = $d1->format('h:i:sa');?>
					<h6><span style='color:red;'>Article date: </span><?php echo $row['date_uploaded']." | ".$time." || <span style='color:red;'>By:</span> ";if(empty($row['author'])){echo "N/A";}else{$split=str_split($row['author']);$count=count($split);if($count<=8){echo $row['author'];}else{for($i=0;$i<8;$i++){echo $split[$i];}echo"...";}}?></h6><h6><span style='color:red;'>Source:</span> <?php echo $row['source']." : ".$row['view_count']." views";?></h6>
				</div>
				<div class="title ">
					<h6><?php echo"<span style='color:red;'>Title:</span> ";$split=str_split($row['title']);$count=count($split);if($count<=130){echo $row['title'];}else{for($i=0;$i<130;$i++){echo $split[$i];}echo"...";}?></h6></div>
				<div class="mat-r flex">
					<div class="descr">
						<h6><?php echo"<span style='color:red;'>Description:</span> ";if(empty($row['descr'])){echo" No Description.";}else{$split=str_split($row['descr']);$count=count($split);if($count<=140){echo $row['descr'];}else{for($i=0;$i<140;$i++){echo $split[$i];}echo"...";}}?></h6>
					</div>
					<div class="url">
						<a href="<?php echo $row['url'];?>" target='_blank'><div class="btn"><button onclick="updateViewCount(<?php echo $row['item_id'];?>)" >Read More</button></div></a>
					</div>
				</div>
				
				
			</div>	
		</div>

			<?php
	}
	private function print2daysAgoNews($row){
		?>
		<div class="block-alter">
			<div class="block">
				<?php $ram=$row['img'];if(empty($row['img'])){$ram="../img/NoImageFound.png";}?>
				<div class="img-show">
					<img src="<?php echo $ram;?>">
				</div>
				<div class="time-load" style="font-size:10px;"> <?php $d1 = new DateTime($row['time_uploaded']);$time = $d1->format('h:i:sa');?>
					<h6><span style='color:red;'>Article date: </span><?php echo $row['date_uploaded']." | ".$time." || <span style='color:red;'>By:</span> ";if(empty($row['author'])){echo "N/A";}else{$split=str_split($row['author']);$count=count($split);if($count<=8){echo $row['author'];}else{for($i=0;$i<8;$i++){echo $split[$i];}echo"...";}}?></h6><h6><span style='color:red;'>Source:</span> <?php echo $row['source']." : ".$row['view_count']." views";?></h6>
				</div>
				<div class="title ">
					<h6><?php echo"<span style='color:red;'>Title:</span> ";$split=str_split($row['title']);$count=count($split);if($count<=130){echo $row['title'];}else{for($i=0;$i<130;$i++){echo $split[$i];}echo"...";}?></h6></div>
				<div class="mat-r flex">
					<div class="descr">
						<h6><?php echo"<span style='color:red;'>Description:</span> ";if(empty($row['descr'])){echo" No Description.";}else{$split=str_split($row['descr']);$count=count($split);if($count<=140){echo $row['descr'];}else{for($i=0;$i<140;$i++){echo $split[$i];}echo"...";}}?></h6>
					</div>
					<div class="url">
						<a href="<?php echo $row['url'];?>" target='_blank'><div class="btn"><button onclick="updateViewCount(<?php echo $row['item_id'];?>)">Read More</button></div></a>
					</div>
				</div>
				
				
			</div>	
		</div>

		<?php
	}
	private function printPlus3daysAgoNews($row){
		?>
	<div class="block-alter">
		<div class="block">
			<?php $ram=$row['img'];if(empty($row['img'])){$ram="../img/NoImageFound.png";}?>
			<div class="img-show">
				<img src="<?php echo $ram;?>">
			</div>
			<div class="time-load" style="font-size:10px;"> <?php $d1 = new DateTime($row['time_uploaded']);$time = $d1->format('h:i:sa');?>
				<h6><span style='color:red;'>Article date: </span><?php echo $row['date_uploaded']." | ".$time." || <span style='color:red;'>By:</span> ";if(empty($row['author'])){echo "N/A";}else{$split=str_split($row['author']);$count=count($split);if($count<=8){echo $row['author'];}else{for($i=0;$i<8;$i++){echo $split[$i];}echo"...";}}?></h6><h6><span style='color:red;'>Source:</span> <?php echo $row['source']." : ".$row['view_count']." views";?></h6>
			</div>
			<div class="title ">
				<h6><?php echo"<span style='color:red;'>Title:</span> ";$split=str_split($row['title']);$count=count($split);if($count<=130){echo $row['title'];}else{for($i=0;$i<130;$i++){echo $split[$i];}echo"...";}?></h6></div>
			<div class="mat-r flex">
				<div class="descr">
					<h6><?php echo"<span style='color:red;'>Description:</span> ";if(empty($row['descr'])){echo" No Description.";}else{$split=str_split($row['descr']);$count=count($split);if($count<=140){echo $row['descr'];}else{for($i=0;$i<140;$i++){echo $split[$i];}echo"...";}}?></h6>
				</div>
				<div class="url">
					<a href="<?php echo $row['url'];?>" target='_blank'><div class="btn"><button onclick="updateViewCount(<?php echo $row['item_id'];?>)">Read More</button></div></a>
				</div>
			</div>
			
			
		</div>	
	</div>

		<?php
	}
	public function navigation($nav){
		if($this->getTopnews($nav)){
			$this->printTopstories();
		}
		else{
			global $conn;
			$_=$conn->query("select*from newsdb ORDER BY date_uploaded DESC");
			while($row=mysqli_fetch_array($_)){
				$todaysDate=date("y-m-d");
				$val=(strtotime($todaysDate)-strtotime($row['date_uploaded']))/60/60/24;

				if($this->getYesterdaysNews($nav)){
					if($val==1){
						$this->printYesterdayNews($row);
					}
					
				}
				elseif($this->get2daysAgoNews($nav)){
					if($val==2){
						$this->print2daysAgoNews($row);
					}
					
				}
				else{
					if($val>2){
						$this->printPlus3daysAgoNews($row);
					}
				}
			}
		}
	}
	private function getMonth($m){
		if($m==01){
			$n="Jan";
		}
		elseif($m==02){
			$n="Feb";
		}
		elseif($m==03){
			$n="Mar";
		}
		elseif($m==04){
			$n="Apr";
		}
		elseif($m==05){
			$n="May";
		}
		elseif($m==06){
			$n="Jun";
		}
		elseif($m==07){
			$n="Jul";
		}
		elseif($m==8){
			$n="Aug";
		}
		elseif($m==9){
			$n="Sep";
		}
		elseif($m==10){
			$n="Oct";
		}
		elseif($m==11){
			$n="Nov";
		}
		elseif($m==12){
			$n="Dec";
		}
		return $n;
		
	}
	public function getUser($id){
		global $conn;
		$_=mysqli_fetch_array($conn->query("select*from user where username='$id'"));
		?>
		<div class="info">
			<h4>Name : <?php echo $_['firstname']." ".$_['lastname'];?></h4>
			<h4>username : <?php echo $_['username'];?></h4>
			<h4>Registered At : <?php echo $_['time_reg'];?></h4>
			<h4><?php echo "Loggedin : ";if($_['isloggedin']==1){echo"YES";}else{echo "NO";}?></h4>
			<h4><?php $_1=mysqli_fetch_array($conn->query("select count(case when status=1 then 1 else NULL end) from loginattempt where username='$id'"));
				echo "SuccessFull Login Attempts : ".$_1["count(case when status=1 then 1 else NULL end)"];;
			?></h4>
			<h4><?php $_1=mysqli_fetch_array($conn->query("select count(case when status=-1 then 1 else NULL end) from loginattempt where username='$id'"));
				echo "Failed Login Attempts : ".$_1["count(case when status=-1 then 1 else NULL end)"];;
			?></h4>
		</div>
		<center><h2>Login Attempt History</h2></center>
		<div class="attemptHistory">
			<div class="container">
			  <h2>Attempts Table</h2>        
			  <table class="table table-bordered">
			    <thead>
			      <tr>
			        <th>Attempt Time</th>
			        <th>Status</th>
			      </tr>
			    </thead>
			    <tbody>
			<?php
			$_2=$conn->query("select*from loginattempt where username='$id'");
			while($row=mysqli_fetch_array($_2)){
				?>
				<tr>
			        <td><?php echo $row['time_attempt']?></td>
			        <td><?php if($row['status']==1){echo"SuccessFull!!";}else{echo"Failed!!";}?></td>
			      </tr>
				<?php
			}
			?>
				</tbody>
			  </table>
			</div>
		</div>
		<?php
	}
	
	private function getMzobeNews(){
		global $conn;
		$url="https://newsapi.org/v2/top-headlines?country=za&apikey=e8a367febe384f5d8a1e3029f7d509fd";
		$response=file_get_contents($url);
		$news=json_decode($response);
		$error=array();
		foreach ($news->articles as $element) {
			$img=$element->urlToImage;
			$title=str_replace('"', "``",str_replace("'", "`",$element->title));
			$source=$element->source->name;
			$descr=str_replace('"', "``",str_replace("'", "`",$element->description));
			$url=$element->url;
			$type='story';
			$author=str_replace('"', "``",str_replace("'", "`",$element->author));
			$content=str_replace('"', "``",str_replace("'", "`",$element->content));
			$datetime=str_replace('Z', "",str_replace("T", " ",$element->publishedAt));
			$id=rand(0000000,9999999);
			//echo $img."<br>".$title."<br>".$source."<br>".$descr."<br>".$url."<br>".$type."<br>".$author."<br>".$content."<br>".$datetime;
			// $datetime."<br>";
			$datetime=explode(" ", $datetime);

			echo $datetime[0]."<br>".$datetime[1];
			$d = new DateTime($datetime[0]);
			$d1 = new DateTime($datetime[1]);

			//$timestamp = $d->getTimestamp(); // Unix timestamp
			$date = $d->format('Y-m-d');
			//$timestamp = $d1->getTimestamp(); // Unix timestamp
			$time = $d1->format('h:i:sa');

			//$date=;//date("y-m-d");//$datetime[0];
			//$timea= str_split($datetime[1],"Z");
			//$time=date_create_from_format("h:i:sa", $datetime[1])->format("h:i:sa");//date("h:i:s");//$timea[0];
			
			$pdq="select title from newsdb where title=? Limit 1";
			$stmt = $conn->prepare($pdq);
			$stmt->bind_param("s",$title);
			$stmt->execute();
			$stmt->bind_result($title);
			$stmt->store_result();
			$rnum = $stmt->num_rows;
			if($rnum==0){
				if($conn->query("insert into newsdb(item_id,img,item_type,source,author,descr,url,content,title,date_uploaded,time_uploaded) values('$id','$img','$type','$source','$author','$descr','$url','$content','$title','$date','$time')")){
					$status=True;

				}
				else{
					$status=$conn->error;
					
				}
				array_push($error, $status);
			}
		}
		print_r($error);
	}
}


?>