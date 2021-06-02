
<?php 
include_once("../includes/index.php");?>
<br><br>
<div class="content">
	<div class="body-content">
		<div class="displayTodaysNews">
			<?php
				if(isset($_GET['nav'])){
					if($_GET['nav']=='top_stories'){
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
										<h6><span style='color:red;'>Article date: </span><?php echo $row['date_uploaded']." | ".$time." || <span style='color:red;'>By:</span> ";if(empty($row['author'])){echo "N/A";}else{$split=str_split($row['author']);$count=count($split);if($count<=8){echo $row['author'];}else{for($i=0;$i<8;$i++){echo $split[$i];}echo"...";}}?></h6><h6><span style='color:red;'>Source:</span> <?php echo $row['source'];?></h6>
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
					else{
						$_=$conn->query("select*from newsdb ORDER BY date_uploaded DESC");
						while($row=mysqli_fetch_array($_)){
							$todaysDate=date("y-m-d");
							$val=(strtotime($todaysDate)-strtotime($row['date_uploaded']))/60/60/24;
							if($_GET['nav']=="yesterday"){
								if($val==1){
									?>
									<div class="block-alter">
									<div class="block">
										<?php $ram=$row['img'];if(empty($row['img'])){$ram="../img/NoImageFound.png";}?>
										<div class="img-show">
											<img src="<?php echo $ram;?>">
										</div>
										<div class="time-load" style="font-size:10px;"> <?php $d1 = new DateTime($row['time_uploaded']);$time = $d1->format('h:i:sa');?>
											<h6><span style='color:red;'>Article date: </span><?php echo $row['date_uploaded']." | ".$time." || <span style='color:red;'>By:</span> ";if(empty($row['author'])){echo "N/A";}else{$split=str_split($row['author']);$count=count($split);if($count<=8){echo $row['author'];}else{for($i=0;$i<8;$i++){echo $split[$i];}echo"...";}}?></h6><h6><span style='color:red;'>Source:</span> <?php echo $row['source'];?></h6>
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
							elseif($_GET['nav']=='2_days_ago'){
								if($val==2){
									?>
									<div class="block-alter">
										<div class="block">
											<?php $ram=$row['img'];if(empty($row['img'])){$ram="../img/NoImageFound.png";}?>
											<div class="img-show">
												<img src="<?php echo $ram;?>">
											</div>
											<div class="time-load" style="font-size:10px;"> <?php $d1 = new DateTime($row['time_uploaded']);$time = $d1->format('h:i:sa');?>
												<h6><span style='color:red;'>Article date: </span><?php echo $row['date_uploaded']." | ".$time." || <span style='color:red;'>By:</span> ";if(empty($row['author'])){echo "N/A";}else{$split=str_split($row['author']);$count=count($split);if($count<=8){echo $row['author'];}else{for($i=0;$i<8;$i++){echo $split[$i];}echo"...";}}?></h6><h6><span style='color:red;'>Source:</span> <?php echo $row['source'];?></h6>
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
								if($val>2){
									?>
									<div class="block-alter">
									<div class="block">
										<?php $ram=$row['img'];if(empty($row['img'])){$ram="../img/NoImageFound.png";}?>
										<div class="img-show">
											<img src="<?php echo $ram;?>">
										</div>
										<div class="time-load" style="font-size:10px;"> <?php $d1 = new DateTime($row['time_uploaded']);$time = $d1->format('h:i:sa');?>
											<h6><span style='color:red;'>Article date: </span><?php echo $row['date_uploaded']." | ".$time." || <span style='color:red;'>By:</span> ";if(empty($row['author'])){echo "N/A";}else{$split=str_split($row['author']);$count=count($split);if($count<=8){echo $row['author'];}else{for($i=0;$i<8;$i++){echo $split[$i];}echo"...";}}?></h6><h6><span style='color:red;'>Source:</span> <?php echo $row['source'];?></h6>
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
						}
					}
					
				}
				else{
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
										<h6><span style='color:red;'>Article date: </span><?php echo $row['date_uploaded']." | ".$time." || <span style='color:red;'>By:</span> ";if(empty($row['author'])){echo "N/A";}else{$split=str_split($row['author']);$count=count($split);if($count<=8){echo $row['author'];}else{for($i=0;$i<8;$i++){echo $split[$i];}echo"...";}}?></h6><h6><span style='color:red;'>Source:</span> <?php echo $row['source'];?></h6>
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
			?>
		</div>
	</div>	
</div>
<script>
	function updateViewCount(id){
		$.ajax({
			url: "../functions/upload.php",
			type: "POST",
			data: {
				id: id
			},
			cache: false,
			success: function(){
				console.log("success");						
			}
		});
	}
</script>
</center>

</body>
</html>