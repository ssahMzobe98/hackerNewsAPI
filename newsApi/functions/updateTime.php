<?php
session_start();
if(isset($_SESSION['id'])){
	include_once("pdo.php");
	function getMonth($m){
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
	function getMzobeNews(){
		global $conn;
		$url="https://newsapi.org/v2/top-headlines?country=sa&apikey=e8a367febe384f5d8a1e3029f7d509fd";
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
	$tz = new DateTimeZone("Africa/Johannesburg");
	$now = new DateTime("now", $tz);
	$yr=date("y");
	$m=getMonth(date("m"));
	$day=date("d");
	$hour=$now->format("h");
	$min=$now->format("i");
	$sec=$now->format("s");
	$am=$now->format("a");
	echo "<div class='hours flex' style='margin-top:4%';><h6>Time(SA) : ".$hour.":".$min.":".$sec."".$am."</h6></div>";
	echo "<div class='days flex' style='margin-top:4%';><h6>Date : 20".$yr." ".$m." ".$day."</h6></div>" ;
	if(($hour==12 && $min==00 && $sec==00) || ($hour==01 && $min==00 && $sec==00)|| ($hour==02 && $min==00 && $sec==00)|| ($hour==03 && $min==55 && $sec==00) || ($hour==04 && $min==00 && $sec==00) || ($hour==05 && $min==00 && $sec==00) || ($hour==06 && $min==00 && $sec==00)|| ($hour==07 && $min==00 && $sec==00) || ($hour==8 && $min==00 && $sec==00) || ($hour==9 && $min==00 && $sec==00) || ($hour==10 && $min==00 && $sec==00) || ($hour==11 && $min==00 && $sec==00)){
		getMzobeNews();
	}
}
else{
	session_destroy();
	header("Location:../?error=Warning: Illigal Attempt!!");exit();
}
?>