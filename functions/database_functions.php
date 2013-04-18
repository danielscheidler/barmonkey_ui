<?PHP




  function getDbValue($tab, $col, $where){
    //Liefert die angeforderten Werte aus der public_vars - Tabelle als Array ($title=>$text)
    $sql    = "select " .$col ." from " .$tab ." where " .$where ." limit 1 ";

    $res = $_SESSION['config']->DBCONNECT->executeQuery($sql);
    $row = mysql_fetch_array($res);

    debugOutput("getDbValue(".$tab.", ".$col.", ".$where." )  ->  ".$row[$col] ."<br>");
    return $row[$col];    
  }






  function getRowCount($tab, $where="1=1"){
    //Liefert die angeforderten Werte aus der public_vars - Tabelle als Array ($title=>$text)
    $sql    = "select count('X') anzahl from " .$tab ." where " .$where ;

    $res = $_SESSION['config']->DBCONNECT->executeQuery($sql);
    $row = mysql_fetch_array($res);

    debugOutput("getDbValue(".$tab.", ".$where." )  -> ".$row['anzahl'] ."<br>");
    return $row['anzahl'];    
  }






  function getSqlConformString($tmp, $replaceMarker=false){
    /*
	$tmp = str_replace("ÃÂ", "ss", $tmp);
    $tmp = str_replace("ÃÂ¼", "ue", $tmp);
    $tmp = str_replace("ÃÂ¤", "ae", $tmp);
    $tmp = str_replace("ÃÂ¶", "oe", $tmp);
    $tmp = str_replace("-", "_", $tmp);
    $tmp = str_replace(" ", "_", $tmp);
    */
    
    if($replaceMarker){
      $tmp = str_replace("'", "''", $tmp);
    }
    
		
	
	return $tmp;
  }



?>