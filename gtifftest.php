<?php
if($argc != 3){
    die("Usage: {argv[0]} filename desired_square_dimension_in_map_units\n" .$_SERVER['argc']);
}

$ll_x=0;
$ll_y=0;
$ur_x=0;
$ur_y=0;
$res ="";
 
$file_name = $argv[1];
$square    = $argv[2]; //Umrechnungswert(Faktor) Bspl: 1.6324234

$info = `gdalinfo $file_name`;

foreach(split("\n", $info) as $i){
    echo "<br>---------------------------------<br>".$i;
    if(strpos($i, 'Lower Left') !== false){
        preg_match_all('/\d+\.\d+/', $i, $res);
        $ll_x = $res[0][0];
        $ll_y = $res[0][1];
    }
    if(strpos($i, 'Upper Right') !== false){
        preg_match_all('/\d+\.\d+/', $i, $res);
        $ur_x = $res[0][0];
        $ur_y = $res[0][1];
    }
}

echo "Bild-Parameter eingelesen!<br>";

// Extent
$x_ext = $ur_x - $ll_x;
$y_ext = $ur_y - $ll_y;
 
// Fit square
$iter_x = floor($x_ext / $square);
$iter_y = floor($y_ext / $square);
 
$square_x = floor($x_ext / $iter_x);
$square_y = floor($y_ext / $iter_y);
 
// Iter
$iter_x = floor($x_ext / $square_x);
$iter_y = floor($y_ext / $square_y);
 
 
 
$tiles_number = $iter_x * $iter_y;

echo "<br>---------------------------------------------------<br>"; 
print "Coords ($ll_x, $ll_y) - ($ur_x, $ur_y)\n<br>";
print "Ext  ($x_ext) - ($y_ext)\n<br>";
print "Producing $iter_x x $iter_y = $tiles_number tiles for $square_x x $square_y\n<br>";
echo "<br>---------------------------------------------------<br>"; 


for($ix = 0 ; $ix < $iter_x; $ix++){
    $tile_llx = $ix * $square_x + $ll_x;
    $tile_urx = $tile_llx + $square_x;
    for($iy = 0 ; $iy < $iter_y; $iy++){
        $tile_lly = $iy * $square_y + $ll_y;
        $tile_ury = $tile_lly + $square_y;
        print "Tiling \t($ix, $iy)\t($tile_llx, $tile_lly) - ($tile_urx, $tile_ury) \n";
        // Tile filename
        //$tilename = "$tile_llx-$tile_lly-$tile_urx-$tile_ury.tif"
        // Proj wants UL LR
        $tilename = "$tile_llx-$tile_ury-$tile_urx-$tile_lly.tif";
        `http://www.gdal.org/gdal_translate.html -of GTiff -projwin $tile_llx $tile_ury $tile_urx $tile_lly $file_name $tilename`;
    }
}

 
// Remove exit and define scales if you want to produce overviews at defined scales
//exit();
 
 
// Pixel der Zielgrafik??
$scales = array(1000000, 500000);
 
// Conversion
$dpi = 72;
// Screen resolution in meters: pixel/meter of screen
$dpm = 0.0254 / $dpi;
 
$scale_pix = array();
foreach($scales as $s){
    $scale_pix[] = $s * $dpm;
}
 
//var_dump($scale_pix);
$i = 0;
foreach($scale_pix as $sp){
    $ovfile = $_SERVER['DOCUMENT_ROOT'] ."pics/tmpmaps/" .'OVV-' . $scales[$i++] . '-' . floor($sp) .'.tif';
print "gdalwarp -of GTiff -rc -tr  $sp $sp $file_name $ovfile";

    $chk = `gdalwarp -of GTiff -rc -tr  $sp $sp $file_name $ovfile`;

  //Bild in jpg konvertieren
   $exec = "convert ".$ovfile." ".str_replace(".tif",".jpg", $ovfile);
   exec($exec, $yaks);
   //to view any errors >> // print_r($yaks); 
}


echo "<br><hr><br>";

echo "<img src='" .substr(str_replace(".tif",".jpg", $ovfile), strlen($_SERVER['DOCUMENT_ROOT'])) ."'>";
?>