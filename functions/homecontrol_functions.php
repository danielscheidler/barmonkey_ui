<?PHP

  function switchShortcut($arduinoUrl, $shortcutUrl){
    $ret = "";
    $switchStatusCheck = true;
    ob_implicit_flush(true);

    // Nach Semikolon trennen, 
    // um die einzelnen zu schaltenden Elemente zu erhalten
    $fullConfigArray = explode(";",$shortcutUrl);    
    
    foreach($fullConfigArray as $cfg){
      // Nach Minus trennen um ID und STATUS zu erhalten.
      $tmp    = explode("-",$cfg);

      if(count($tmp)==2){
        $id     = $tmp[0];
        $status = $tmp[1];
     

        if( strlen($id)>0 && $id>0 ){
          $status = $status=="on"?"on":"off";
  
          // Wenn ausgeschaltet werden soll,
          // negative ID ÃÂ¼bergeben
          if($status == "off"){
            $id = $id*(-1);
          }
  
          $urlArr = parse_url($arduinoUrl);
          $host = $urlArr['host'];

          $check = @fsockopen($host, 80); 
          If ($check) { 
            $retVal = file_get_contents( $arduinoUrl."?schalte&" .$id );
 
            if(strpos(substr($retVal,0,50), "Warning")>0){
               $switchStatusCheck = false;
               echo "<b>Vorgang auf Grund eines unerwarteten Fehlers abgebrochen!</b><br><br>".$retVal;
               echo "<br>";
               break;
            } else {
               $ret .=  "<font color='" .($status=="on"?"green":"red") ."'><b>schalte ".($id>=0?$id:($id*-1)) ." ".($status=="on"?"ein":"aus")."</b></font><br>";
            } 
          } else {
             echo "<br><font color='red'>KEINE VERBINDUNG<br><b>Vorgang abgebrochen!</b></font>";
             echo "<br>";
             break;
          }
        }
      }
      sleep(.2);
    }
    
    return $ret;
  }

  function isFunk2Need($art){
    $configDb  = new DbTable($_SESSION['config']->DBCONNECT,
                            'homecontrol_art', 
                            array("zweite_funkid_jn") , 
                            "",
                            "",
                            "",
                            "id=".$art);

    $row = $configDb->getRow(1);

    if($row != null){
      return $row->getNamedAttribute("zweite_funk_id") == "J";    
    }     
    
    return false;
  }
?>