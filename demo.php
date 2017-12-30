<html> 
<head>
  <meta charset="utf-8">
 <link rel="stylesheet" href="style1.css">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link href="https://fonts.googleapis.com/css?family=Cookie" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Oleo Script Swash Caps' rel='stylesheet'>
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
var MAX = 10;
var showStark = "ON";
var showLannister = "ON";
var showMormont = "ON";
var showGreyjoy = "ON";
var showTargaryen = "ON";
var showTully = "ON";
var showArryn = "ON";
var showBaratheon = "ON";


function onStart() {
	alert("Test");
}


function toggleStark() {
	if (showStark == "ON") {
		showStark = "OFF";
	} else {
		showStark = "ON";
	}
	document.getElementById("stark").src = "../GoT/img/Stark"+showStark+".png";
	set(EpNr);
}
function toggleLannister() {
	if (showLannister == "ON") {
		showLannister = "OFF";
	} else {
		showLannister = "ON";
	}
	document.getElementById("lannister").src = "../GoT/img/Lannister"+showLannister+".png";
	set(EpNr);
}
function toggleGreyjoy() {
	if (showGreyjoy == "ON") {
		showGreyjoy = "OFF";
	} else {
		showGreyjoy = "ON";
	}
	document.getElementById("greyjoy").src = "../GoT/img/Greyjoy"+showGreyjoy+".png";
	set(EpNr);
}
function toggleTully() {
	if (showTully == "ON") {
		showTully = "OFF";
	} else {
		showTully = "ON";
	}
	document.getElementById("tully").src = "../GoT/img/Tully"+showTully+".png";
	set(EpNr);
}
function toggleTargaryen() {
	if (showTargaryen == "ON") {
		showTargaryen = "OFF";
	} else {
		showTargaryen = "ON";
	}
	document.getElementById("targaryen").src = "../GoT/img/Targaryen"+showTargaryen+".png";
	set(EpNr);
}
function toggleBaratheon() {
	if (showBaratheon == "ON") {
		showBaratheon = "OFF";
	} else {
		showBaratheon = "ON";
	}
	document.getElementById("baratheon").src = "../GoT/img/Baratheon"+showBaratheon+".png";
	set(EpNr);
}
function toggleMormont() {
	if (showMormont == "ON") {
		showMormont = "OFF";
	} else {
		showMormont = "ON";
	}
	document.getElementById("mormont").src = "../GoT/img/Mormont"+showMormont+".png";
	set(EpNr);
}
function toggleArryn() {
	if (showArryn == "ON") {
		showArryn = "OFF";
	} else {
		showArryn = "ON";
	}
	document.getElementById("arryn").src = "../GoT/img/Arryn"+showArryn+".png";
	set(EpNr);
}

</script>
</head>
 <title>Interactive Game Of Thrones Map</title>

<body onload="reset()">
 
 <div id = "houses">
 
<img id ="stark" src="img\StarkON.png" alt="Stark" height="75" width="75" title="House Stark" onclick="toggleStark()";> 
<img id ="arryn" src="img\ArrynON.png" alt="Arryn" height="75" width="75" title="House Arryn" onclick="toggleArryn()";> 
<img id ="baratheon" src="img\BaratheonON.png" alt="Baratheon" height="75" width="75" title="House Baratheon" onclick="toggleBaratheon()";> 
<img id ="greyjoy" src="img\GreyjoyON.png" alt="Greyjoy" height="75" width="75" title="House Greyjoy" onclick="toggleGreyjoy()";> 
<img id ="lannister" src="img\LannisterON.png" alt="Lannister" height="75" width="75" title="House Lannister" onclick="toggleLannister()";> 
<img id ="mormont" src="img\MormontON.png" alt="Mormont" height="75" width="75" title="House Mormont" onclick="toggleMormont()";> 
<img id ="targaryen" src="img\TargaryenON.png" alt="Targaryen" height="75" width="75" title="House Targaryen" onclick="toggleTargaryen()";> 

 
 </div>
 
 
 
 
<div id="Info">
<img id ="charinf" src="img\background.png" alt="CharInf" height="918" width="474"> 
<img id ="charpor" src="img\Portrait.png" alt="CharPor" height="921" width="474"> 

	<div id="name">
		User Guide
	</div>
	
	<div id="icon">
		<img id ="por" src="img\base.png" alt="Por" height="100" width="100">
	</div>

	<div id="char">
		This map shows the Game of Thrones universe  <br>
		and the position of its main characters,<br>
		based on where they're are at a given episode.<br>
		<br>
		To navigate the map, you can use the options <br>
		on the bottom left.<br>
		With the slider you can select an episode to show.<br>
		The Play button will auto play until the last episode. <br>
		(This takes a couple of seconds to start, <br>please 
		be patient) <br>
		<br>
		You can filter by specific houses <br>
		by selecting/deselecting the icons top right. <br>
		<br>
		Get more information on a character by <br>
		clicking on their icon. <br>
		Background information on their story <br>
		will then be shown here.
		
		
		
		
	</div>
</div>
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
	for($e; $e <11; $e++) {
		$result = $conn->query($sql);
		$charCount = 0;
		if ($result->num_rows > 0) {
			$id = 1;
			$ep = "S".$s."E".$e;
			// output data of each row
			while($row = $result->fetch_assoc()) {
				// get name + make picture
				$tempName = str_replace(' ', '',$row["character_name"]);
				if($e==0) {
					echo "<div>";
					echo "<img id=\"".$tempName."\" src=\"img/".$row["character_name"].".png \" alt=\"".$row["character_name"]. "\" height=\"25\" width=\"25\" title=\"".$tempName."\"onclick=\"onCharClick(".$charCount.")\"; ";
					echo "</div> \n";
				}
				$charCount = $charCount+1;
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

	$resultinfo = $conn->query("SELECT * FROM character_info");
	// set array
	$info = array();

	// look through query
	while($row = $resultinfo->fetch_assoc()){
		// add each row returned into an array
		$info[] = $row;
	}

	$famres = $conn->query("SELECT character_name, character_house FROM characters");

	$fam = array();
	
	while($row = $famres->fetch_assoc()){
		// add each row returned into an array
		$fam[] = $row;
	}
	$data = array 
	(
		array($nameS1E0,$topS1E0,$leftS1E0),
		array($nameS1E1,$topS1E1,$leftS1E1),
		array($nameS1E2,$topS1E2,$leftS1E2),
		array($nameS1E3,$topS1E3,$leftS1E3),
		array($nameS1E4,$topS1E4,$leftS1E4),
		array($nameS1E5,$topS1E5,$leftS1E5),
		array($nameS1E6,$topS1E6,$leftS1E6),
		array($nameS1E7,$topS1E7,$leftS1E7),
		array($nameS1E8,$topS1E8,$leftS1E8),
		array($nameS1E9,$topS1E9,$leftS1E9),
		array($nameS1E10,$topS1E10,$leftS1E10)
	);
	
	//echo '<pre>'; print_r($data); echo '</pre>';
?>

</div>
<script>
var EpNr = 0;


function moveSlow(id, t, l, i) {
	var fam = <?php echo json_encode($fam); ?>;
	var data = <?php echo json_encode($data); ?>;
	
	name = name.replace(/([A-Z])/g, ' $1').trim();
	//console.log("moveid:" +fam[i]["character_name"]);
	
	var house = fam[i]["character_house"];
	
	var show = window["show"+house];
	//console.log(show);
	
	if(show!="OFF"){
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
				moveS(id, startingTop+i*intervalTop, startingLeft+i*intervalLeft);
				i++;
				movement++;
			}
		}, 20);
	} else {
		document.getElementById(id).style.zIndex = -2;
	}
	
}

function move(id, t, l, i) //Moves image 

{
	// needs to get ID so can search for family
	// then match and check if family is turned on
	// in each toggle function, call set to current ep
	var fam = <?php echo json_encode($fam); ?>;
	var data = <?php echo json_encode($data); ?>;
	
	name = name.replace(/([A-Z])/g, ' $1').trim();
	console.log("moveid:" +fam[i]["character_name"]);
	
	var house = fam[i]["character_house"];
	
	var show = window["show"+house];
	console.log(show);
	
	if(show!="OFF") {
		document.getElementById(id).style.top = t + "px";
		document.getElementById(id).style.left = l + "px";
		document.getElementById(id).style.zIndex = l;
	} else {
		document.getElementById(id).style.top = t + "px";
		document.getElementById(id).style.left = l + "px";
		document.getElementById(id).style.zIndex = -l;		
	}
}

function moveS(id, t, l) //Moves image 

{
		document.getElementById(id).style.top = t + "px";
		document.getElementById(id).style.left = l + "px";
		document.getElementById(id).style.zIndex = l;
	
}


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
//console.log("Moving Slow:");
	}
	
	
	for(var i = 0; i < names.length; i++) {
			//console.log(top[i]);
			if(top[i]!=0) {
				if(EpNr==0) {
					move(names[i], top[i], left[i], i);
				//console.log(names[i]);
				} else {
					if(data[EpNr-1][1][i]!=data[EpNr][1][i] || data[EpNr-1][2][i]!=data[EpNr][2][i]) {
						if(data[EpNr-1][1][i]==0) {
							move(names[i], top[i], left[i], i);
							//console.log("init");
						} else {
							//console.log("moving slow:"+names[i]);
							moveSlow(names[i], top[i], left[i],i);
						}
					} else {
						//console.log("not moving:"+names[i]);
						
					}
				}
			} else {
				document.getElementById(names[i]).style.zIndex = '-2';
			}
	}
    $( "#amount" ).val(EpNr);
	setTimeout(function(){
		sizeBack();
	}, 3000);
	
	EpNr++;
	
}

function onCharClick(id) {
	var info = <?php echo json_encode($info); ?>;
	var text = info[id]['character_information'];
	var name = info[id]['character_name'];
	console.log(info);
	console.log("ONCLICK");
	console.log(name);
	document.getElementById("char").innerHTML = text;
	document.getElementById("name").innerHTML = name;
	document.getElementById("por").src = "../GoT/img/" +name+".png";
	
	console.log(document.getElementById("por").src);
}

var playing = "pause";
function play() {
	document.getElementById("plays").src = "../GoT/img/"+playing+".png";
	console.log(document.getElementById("plays").src);
	if(playing == "pause") {
		playing = "play";
	} else {
		playing = "pause";
	}
	console.log(playing);
	var interval = setInterval(function(){
	var movement = 0;
	var maxmove = MAX-EpNr+1;
		if(movement == maxmove || playing == "pause") {
			console.log("Last episode reached");
			clearInterval(interval);
			document.getElementById("plays").src = "../GoT/img/play.png";
		} else {
			moveAll();
			movement++;
		}
	}, 5000);
	console.log(EpNr);
	
	
}



function sizeBack() {
	var data = <?php echo json_encode($data); ?>;
	if(EpNr!=0) {
		var names = data[EpNr-1][0];
		for(var i = 0; i < names.length; i++) {
			document.getElementById(names[i]).style.width = 25;
			document.getElementById(names[i]).style.height = 25;
		}
	}
}
function reset() {
	moveAll();
	EpNr = 0;
}

function set(x) {
	if(x > MAX) {
		x = MAX;
	}
	EpNr = x;
	
	console.log("Set at Ep: "+EpNr);
	var data = <?php echo json_encode($data); ?>;
	var names = data[EpNr][0];
	var top = data[EpNr][1];
	var left = data[EpNr][2];
	for(var i = 0; i < names.length; i++) {
			//console.log(top[i]);
				if(top[i]!=0) {
					move(names[i], top[i], left[i], i);
				//console.log(names[i]);
				} else {
					document.getElementById(names[i]).style.zIndex = -2;
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
 
 <div id="play">
	<img id ="plays" src="img\play.png" alt="play" height="75" width="75" onclick="play()";> 
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