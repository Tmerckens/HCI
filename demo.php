<html> 
<head>
  <meta charset="utf-8">
 <link rel="stylesheet" href="style6.css">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 <?php
 $servername = "localhost";
$username = "root";
$password = "";
$dbname = "got";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
?>
 
 
<script type="text/javascript">
var MAX = 6;

function move(id, t, l) //Moves image 

{

document.getElementById(id).style.top = t + "px";
document.getElementById(id).style.left = l + "px";
document.getElementById(id).style.zIndex = l;
}

function moveSlow(id, t, l) {
	var startingTop = parseInt(document.getElementById(id).style.top, 10);
	var startingLeft = parseInt(document.getElementById(id).style.left, 10);
	var intervalTop = (t - startingTop)/50;
	var intervalLeft = (l - startingLeft)/50;
	var i = 1;
			//console.log(startingTop);
			//console.log(intervalLeft);
	var started = Date.now();
	
	if(startingTop != t || startingLeft != l) {
		document.getElementById(id).style.width = 50;
		document.getElementById(id).style.height = 50;
	}
	
	var interval = setInterval(function(){
	var movement = 0;
		if(Date.now() - started > 1000 || movement == 20) {
			clearInterval(interval);
		} else {
			move(id, startingTop+i*intervalTop, startingLeft+i*intervalLeft);
			i++;
			movement++;
		}
	}, 20);
	
}

function onStart() {
	alert("Test");
}

</script>
</head>
 <title>Interactive Game Of Thrones Map</title>

<body onload="moveAll()">
 
 <div id="Interactive">
<img id ="Map" src="img\mapv2.png" alt="Map" height="921" width="1446"> 


<?php

$sql = "SELECT character_ID, character_name FROM characters ORDER BY character_ID";
for($s = 1; $s < 2; $s++) {	
	if($s==1) {
		$e = 0;
	} else {
		$e = 1;
	}
	for($e; $e <7; $e++) {
		$result = $conn->query($sql);

		if ($result->num_rows > 0) {
			$id = 1;
			$ep = "S".$s."E".$e;
			// output data of each row
			while($row = $result->fetch_assoc()) {
				// get name + make picture
				$tempName = str_replace(' ', '',$row["character_name"]);
				if($e==0) {
					echo "<div>";
					echo "<img id=\"".$tempName."\" src=\"img/".$row["character_name"].".jpg \" alt=\"".$row["character_name"]. "\" height=\"25\" width=\"25\" onmouseover=\"this.width='150'; this.height='150'; this.style.zIndex = '2'\" onmouseout=\"this.width='25'; this.height='25'; this.style.zIndex = '1'\">";
					echo "</div> \n";
				}
				// get position (for initial pos)
				$sql2 = "SELECT `x_value`,`y_value` FROM `position_id_x_y` WHERE `position_block_number` IN (SELECT `S".$s."E".$e."`FROM character_positions WHERE `Character ID` = ".$id.")";
				$result2 = $conn->query($sql2);
				$row2 = $result2->fetch_assoc();
				$id++;
				// add to arrays
				${"name".$ep}[] = $tempName;
				${"left".$ep}[] = $row2["y_value"]*25;
				${"top".$ep}[] = $row2["x_value"]*25;
			}

		} else {
			echo "0 results";
		}
	}
}
	$data = array 
	(
		array($nameS1E0,$topS1E0,$leftS1E0),
		array($nameS1E1,$topS1E1,$leftS1E1),
		array($nameS1E2,$topS1E2,$leftS1E2),
		array($nameS1E3,$topS1E3,$leftS1E3),
		array($nameS1E4,$topS1E4,$leftS1E4),
		array($nameS1E5,$topS1E5,$leftS1E5),
		array($nameS1E6,$topS1E6,$leftS1E6)
	);
	
	//echo '<pre>'; print_r($data); echo '</pre>';
?>

</div>
<script>
var EpNr = 0;

 function moveAll() {
	console.log(EpNr);
	var data = <?php echo json_encode($data); ?>;
	var names = data[EpNr][0];
	var top = data[EpNr][1];
	var left = data[EpNr][2];
	
	//console.log(names);
	//console.log(top);
	//console.log(left);
	
	if(EpNr==0) {
			console.log("Init:");
	} else {
			console.log("Moving Slow:");
	}
	
	
	for(var i = 0; i < names.length; i++) {
			//console.log(top[i]);
			if(top[i]!=0) {
				if(EpNr==0) {
					move(names[i], top[i], left[i]);
				//console.log(names[i]);
				} else {	
					if(data[EpNr-1][1][i]==0) {
						move(names[i], top[i], left[i]);
						console.log("init");
					} else {
						moveSlow(names[i], top[i], left[i]);
					}
				
					//console.log(names[i]);
				}
			} else {
				document.getElementById(names[i]).style.zIndex = '-2';
			}
	}
    $( "#amount" ).val(EpNr);
	document.getElementById("enr").innerHTML = EpNr;
	setTimeout(function(){
		sizeBack();
	}, 3000);
	
	EpNr++;
	
}


function play() {
	console.log("play pressed");
	console.log(MAX);
	
	var interval = setInterval(function(){
	var movement = 0;
	var maxmove = MAX-EpNr+1;
		if(movement == maxmove) {
			clearInterval(interval);
		} else {
			moveAll();
			movement++;
		}
	}, 5000);
	
	
	
	console.log("play stopped");
	console.log(EpNr);
	
}



function sizeBack() {
	var data = <?php echo json_encode($data); ?>;
	var names = data[EpNr-1][0];
	for(var i = 0; i < names.length; i++) {
		document.getElementById(names[i]).style.width = 25;
		document.getElementById(names[i]).style.height = 25;
	}
	
}
function reset() {
	EpNr = 0;
	moveAll();
}

function set(x) {
	EpNr = x;
	console.log(EpNr);
	document.getElementById("enr").innerHTML = EpNr;
	var data = <?php echo json_encode($data); ?>;
	var names = data[EpNr][0];
	var top = data[EpNr][1];
	var left = data[EpNr][2];
	for(var i = 0; i < names.length; i++) {
			//console.log(top[i]);
				if(top[i]!=0) {
					move(names[i], top[i], left[i]);
				//console.log(names[i]);
				} 
	}
}

$( function() {
	  
    $( "#slider-range-max" ).slider({
      range: "max",
      min: 0,
      max: MAX,
      value: 0,
      slide: function( event, ui ) {
        $( "#amount" ).val( ui.value );
		set(ui.value);
		
      }
    });
    $( "#amount" ).val( $( "#slider-range-max" ).slider( "value" ) );
  } );
</script>

 </body>
 
<button onclick="play()">Next</button>

<button onclick="reset()">Back To 0</button>
<div id="EpisodeNr"> 
Season 1, 
Episode <span id="enr"> </span>
</div>
<div id = "slider">
	<div id="slider-range-max"></div>
	<p>
	  <label for="amount" id="white">EpisodeNr:</label>
	  <input type="text" id="amount" >
	</p>
	</div>
 <?php
 $conn->close();
?>
 </html>