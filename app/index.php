<?php
require("./config.php");

$heading_text="";
$subheading_text = "";
$end_line="";
$sub_end_line="";
$rs=mysqli_query($connection,"SELECT * FROM `Other_Values`; ");
while($row=mysqli_fetch_assoc($rs)){
    $heading_text.=$row['Heading'];
    $subheading_text.=$row['SubHeading'];
    $end_line.=$row['Ending'];
    $sub_end_line.=$row['SubEnding'];
}

$body = "";
$colors = array("rgba(236,122,24,1)","#6cbce9","rgba(112, 146, 101, 1)","rgba(176, 171, 80, 1)","rgba(139,83,128,1)","rgba(189, 104, 116, 1)");
$len = sizeof($colors);
$count = -1;
$body_sql = "SELECT * FROM `body`;";
$rs = mysqli_query($connection, $body_sql);
while($row = mysqli_fetch_assoc($rs)){
    if($count >= $len){
        $count = 0;
    }else{
        $count++;
    }
  $body = $body.'<a href="'.$row['hyperlink'].'"><div class="col-sm-12 col-md-6 col-lg-4" >
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12"  style="background-color:'.$colors[$count].'; border: 10px solid white; padding: 15px; margin: 10px;margin-left: 5px; margin-right: 5px;text-align:center">
                <h3 style="color:#ffffff">'.$row['title'].'</h3>
                <img src="./images/'.$row['image'].'" alt="image" style="width:250px;height:250px;"> 
                <p style="color:#ffffff">'.$row['text'].'</p>
            </div>
            </div>
            </div></a>';                
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Campus IT Serivices</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet"  href="style.css">
  <link rel="stylesheet" href="styles.css">
  <script src="script1.js"></script>
  <script src="script2.js"></script>
</head>
<body>

<div class="jumbotron text-center" style="background-color:#3276b1;padding:20px;" >

    <img id="logo_on_top" src="http://bmlwebsite.2apqjrz0nuhf8wl5w.netdna-cdn.com/wp-content/themes/bmlmunjal/assets/images/logo_bml.png">
    <h1 style="color:#ffffff;font-family:Helvetica"><?php 																				echo $heading_text;?></h1>
    <p style="color:#dcdcdc";><?php echo $subheading_text;?></p>
</div>

<div class="container" style="background-color:#e7e7e7;">

  <div class="row" id="row" >
 <?php echo $body;?>
  </div>
</div>


<div class="container-fluid" id="end" >
    <div class="row">
        <div class="col-sm-6 col-md-6 col-lg-6" >
            <img id="logo_at_bottom" src="https://upload.wikimedia.org/wikipedia/en/9/9d/BML_Munjal_University-Logo.png" alt="" style="width:100px;height:100px;">
        </div>
        <h1 style="color:#999;font-family:Helvetica;font-size:200%;text-align:center;"><?php echo $end_line?></h1>
        <p style="color:#999;text-align:center"><b><?php echo $sub_end_line?></b></p>
    </div>
</div>

</body>
</html>
