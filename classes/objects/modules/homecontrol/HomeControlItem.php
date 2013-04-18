<?PHP

class HomeControlItem extends Object {
  private   $ID           = 0;
  private   $X            = 0;
  private   $Y            = 0;
  private   $OBJNAME      = "";
  private   $FUNK_ID      = 0;
  private   $FUNK_ID2     = 0;
  private   $BESCHREIBUNG = "";
  private   $ART          = 0;
  private   $ETAGE        = 0;
  private   $ZIMMER       = 0;
  private   $PIC          = "";
  private   $FUNKID2_NEED = false;

  private   $EDIT_MODE    = false;

  private   $CONTROL_IMAGE_WIDTH = 40;
  private   $CONTROL_IMAGE_HEIGHT = 40;


  function HomeControlItem($currConfigRow, $editModus){
      $this->ID            = $currConfigRow->getNamedAttribute("id");
      $this->X             = $currConfigRow->getNamedAttribute("x");
      $this->Y             = $currConfigRow->getNamedAttribute("y");
      $this->OBJNAME       = $currConfigRow->getNamedAttribute("name");
      $this->FUNK_ID       = $currConfigRow->getNamedAttribute("funk_id");
      $this->FUNK_ID2      = $currConfigRow->getNamedAttribute("funk_id2");
      $this->BESCHREIBUNG  = $currConfigRow->getNamedAttribute("beschreibung");
      $this->ART           = $currConfigRow->getNamedAttribute("control_art");
      $this->ETAGE         = $currConfigRow->getNamedAttribute("etage");
      $this->ZIMMER        = $currConfigRow->getNamedAttribute("zimmer");
      $this->PIC           = strlen($this->getIconPath())>4 ? $this->getIconPath() : "pics/homecontrol/steckdose_100.jpg";
      $this->FUNKID2_NEED  = $this->isFunkId2Needed() == "J";
      
      $this->EDIT_MODE     = $editModus;
  }





  function getIconTooltip($configButtons=true){
    $ttt = "<table cellspacing='10'><tr><td colspan=2><center><b>"
          .$this->OBJNAME ."</b></center><hr></td></tr>"
          ."<tr><td>Funk-Id: </td><td align='right'>".$this->FUNK_ID."</td></tr>";

    if ($this->FUNKID2_NEED && strlen($this->FUNK_ID2)>0 && $this->FUNK_ID2>0){
      $ttt .= "<tr><td>Funk-Id2: </td><td align='right'>" .$this->FUNK_ID2."</td></tr>"; 
    }
    
    $ttt .= "<tr><td colspan=2 height='1px'> </td></tr>"; 
  
    switch ($this->ART){
      case 1:
        // Steckdosen
        $ttt .= "<tr><td><a href='http://" .$_SESSION['config']->PUBLICVARS['arduino_url'] 
             ."?schalte&".$this->FUNK_ID 
             ."' target='arduinoSwitch'><div style=\"border-width:3px; border-style:solid;border-color:black;background-color:green;width:50;height:40;text-align:center;\" ><h1>AN</h1></div></a></td>"

             ."<td align='right'><a href='http://" .$_SESSION['config']->PUBLICVARS['arduino_url'] 
             ."?schalte&-".$this->FUNK_ID 
             ."' target='arduinoSwitch'><div style=\"border-width:3px; border-style:solid;border-color:black;background-color:red;width:50;height:40;text-align:center;\" ><h1>AUS</h1></div></a></td></tr>"
             ."</table>";
        break;

      case 2:
        // Jalousien
        $ttt .= "<tr><td><a href='http://" .$_SESSION['config']->PUBLICVARS['arduino_url'] 
             ."?schalte&".$this->FUNK_ID 
             ."' target='arduinoSwitch'><div style=\"border-width:3px; border-style:solid;border-color:black;background-color:orange;width:70;height:40;text-align:center;\" ><h1>AUF</h1></div></a></td>"

             ."<td align='right'><a href='http://" .$_SESSION['config']->PUBLICVARS['arduino_url'] 
             ."?schalte&-".$this->FUNK_ID 
             ."' target='arduinoSwitch'><div style=\"border-width:3px; border-style:solid;border-color:black;background-color:#7777ee;width:70;height:40;text-align:center;\" ><h1>ZU</h1></div></a></td></tr>"
             ."</table>";
        break;

      case 3:
        // Glühbirne
        $ttt .= "<tr><td><a href='http://" .$_SESSION['config']->PUBLICVARS['arduino_url'] 
             ."?schalte&".$this->FUNK_ID 
             ."' target='arduinoSwitch'><div style=\"border-width:3px; border-style:solid;border-color:black;background-color:green;width:70;height:40;text-align:center;\" ><h1>AN</h1></div></a></td>"

             ."<td align='right'><a href='http://" .$_SESSION['config']->PUBLICVARS['arduino_url'] 
             ."?schalte&-".$this->FUNK_ID 
             ."' target='arduinoSwitch'><div style=\"border-width:3px; border-style:solid;border-color:black;background-color:red;width:70;height:40;text-align:center;\" ><h1>AUS</h1></div></a></td></tr>"
             ."</table>";
        break;

      case 4:
        // Heizung
        $ttt .= "<tr><td><a href='http://" .$_SESSION['config']->PUBLICVARS['arduino_url'] 
             ."?schalte&-".$this->FUNK_ID 
             ."' target='arduinoSwitch'><div style=\"spacing:1px;border-width:3px; border-style:solid;border-color:black;background-color:blue;width:100;height:40;text-align:center;\" ><h1>KALT</h1></div></a></td>"

             ."<td align='right'><a href='http://" .$_SESSION['config']->PUBLICVARS['arduino_url'] 
             ."?schalte&".$this->FUNK_ID 
             ."' target='arduinoSwitch'><div style=\"border-width:3px; border-style:solid;border-color:black;width:100;height:40;text-align:center;background-color:red;\" ><h1>WARM</h1></div></a></td></tr>"
             ."</table>";
        break;

      default:
        $ttt .= "<tr><td><a href='http://" .$_SESSION['config']->PUBLICVARS['arduino_url'] 
             ."?schalte&".$this->FUNK_ID 
             ."' target='arduinoSwitch'><div style=\"border-width:3px; border-style:solid;border-color:black;background-color:green;width:70;height:40;text-align:center;\" ><h1>AN</h1></div></a></td>"

             ."<td align='right'><a href='http://" .$_SESSION['config']->PUBLICVARS['arduino_url'] 
             ."?schalte&-".$this->FUNK_ID 
             ."' target='arduinoSwitch'><div style=\"border-width:3px; border-style:solid;border-color:black;background-color:red;width:70;height:40;text-align:center;\" ><h1>AUS</h1></div></a></td></tr>"
             ."</table>";

    } 


    $ttt .= "<tr><td colspan=2 height='10px'> </td></tr>"; 
    return $ttt;

  }

  
  function getMobileSwitch(){

    $tbl = new Table(array("icon", "space", "name", "space", "an", "space", "aus", "space"));
    $tbl->setWidth("99%");
    $tbl->setColSizes(array("50", "10", "", "10", "150", "10", "150", "20"));
    $row = $tbl->createRow();
    $row->setHeight(50);
    $tbl->addRow($row);
    $tbl->addSpacer();

    $txtName = new Text($this->OBJNAME, 7 , true);
   
    $txtAn  = new Text("AN",8,true);
    $txtAus = new Text("AUS",8,true);

    $divAn = new Div();
    $divAn->add($txtAn);
    $divAn->setWidth("100%");
    $divAn->setHeight("100%");
    $divAn->setAlign("center");
    $divAn->setBorder(1);
    $divAn->setBackgroundColor("green");
    $lnkAn  = new Link("http://" .$_SESSION['config']->PUBLICVARS['arduino_url'] 
                      ."?schalte&".$this->FUNK_ID, $divAn, false, "arduinoSwitch");
    
    $divAus = new Div();
    $divAus->setWidth("100%");
    $divAus->setHeight("100%");
    $divAus->setAlign("center");
    $divAus->add($txtAus);
    $divAus->setBorder(1);
    $divAus->setBackgroundColor("red");
    $lnkAus = new Link("http://" .$_SESSION['config']->PUBLICVARS['arduino_url'] 
                      ."?schalte&-".$this->FUNK_ID, $divAus,false,"arduinoSwitch");

    $row->setAttribute(0, new Image($this->getIconPath(), -1, -1, 50) );
    $row->setAttribute(1, " " );
    $row->setAttribute(2, $txtName);
    $row->setAttribute(3, " ");
    $row->setAttribute(4, $lnkAn);
    $row->setAttribute(5, " ");    
    $row->setAttribute(6, $lnkAus);
    $row->setAttribute(7, " ");
        
    return $tbl;
  }


  
  function getTabletSwitch(){

    $tbl = new Table(array("", ""));
    $tbl->setWidth(170);
    $tbl->setBorder(2);
    $rowTtl = $tbl->createRow();
    $rowTtl->setSpawnAll(true);
    $rowTtl->setHeight(50);

    $txtName = new Text($this->OBJNAME, 2 , true);
   
    $tblIconName = new Table(array("", "", ""));
    $tblIconName->setColSizes(array(50,5));
    $rIconName = $tblIconName->createRow();
    $rIconName->setAttribute(0, new Image($this->getIconPath(), -1, -1, 50) );
    $rIconName->setAttribute(1, " " );
    $rIconName->setAttribute(2, $txtName);
    $tblIconName->addRow($rIconName);
    
    $rowTtl->setAttribute(0, $tblIconName);
    $tbl->addRow($rowTtl);  

    $rowAnAus = $tbl->createRow();
    $rowAnAus->setAlign("center");

    $txtAn  = new Text("AN",4,true);
    $txtAus = new Text("AUS",4,true);

    $divAn = new Div();
    $divAn->add($txtAn);
    $divAn->setWidth(86);
    $divAn->setHeight(25);
    $divAn->setAlign("center");
    $divAn->setBorder(1);
    $divAn->setBackgroundColor("green");
    $lnkAn  = new Link("http://" .$_SESSION['config']->PUBLICVARS['arduino_url'] 
                                 ."?schalte&".$this->FUNK_ID, 
                       $divAn, 
                       false, 
                       "arduinoSwitch");
    $rowAnAus->setAttribute(0, $lnkAn);

    
    $divAus = new Div();
    $divAus->setWidth(86);
    $divAus->setHeight(25);
    $divAus->setAlign("center");
    $divAus->add($txtAus);
    $divAus->setBorder(1);
    $divAus->setBackgroundColor("red");
    $lnkAus = new Link("http://" .$_SESSION['config']->PUBLICVARS['arduino_url'] 
                                 ."?schalte&-".$this->FUNK_ID,
                       $divAus, 
                       false,
                       "arduinoSwitch");

    $rowAnAus->setAttribute(1, $lnkAus);
    
    $tbl->addRow($rowAnAus);
    
    return $tbl;
  }


  function getIconPath(){
    $dbTable  = new DbTable($_SESSION['config']->DBCONNECT,
                            'homecontrol_art', 
	                      array("pic") , 
			                 "",
                             "",
                             "",
                             "id=" .$this->ART);
    $row = $dbTable->getRow(1);
 
    return $row->getNamedAttribute("pic");
  }


  function isFunkId2Needed(){
    $dbTable  = new DbTable($_SESSION['config']->DBCONNECT,
                            'homecontrol_art', 
	                        array("zweite_funkid_jn") , 
			                "",
                            "",
                            "",
                            "id=" .$this->ART);
    $row = $dbTable->getRow(1);
 
    return $row->getNamedAttribute("zweite_funkid_jn");
  }


  /**
   *  Liefert den HTML-Code für das Grafik-Symbol zurück (IMG),
   *  die zur Control-Art passt.
   */
  function getControlArtIcon($tooltipActive=true){
    $lnkImg = new Image( $this->PIC );
    $lnkImg->setWidth($this->CONTROL_IMAGE_WIDTH);

    if( $tooltipActive ){
      $ttt = $this->getIconTooltip();
      $lnkImg->setToolTip($ttt);
    }
    $lnkImgSrc = $lnkImg->getImgSrc( $this->PIC ); 

    return $lnkImgSrc;
  }



  function show(){
      if( $this->EDIT_MODE ){
        echo "<a href=\"?editControl=" .$this->ID ."\" style=\"position:absolute; left:" .$this->X ."px; top:" .$this->Y ."px; width:".$this->CONTROL_IMAGE_WIDTH."px; height:".$this->CONTROL_IMAGE_HEIGHT."px;\">";
        echo   $this->getControlArtIcon();  
        echo "</a>";

      } else {
  
        echo "<div style=\"position:absolute; left:" .$this->X ."px; top:" .$this->Y ."px; width:".$this->CONTROL_IMAGE_WIDTH."px; height:".$this->CONTROL_IMAGE_HEIGHT."px;\">";
        echo   $this->getControlArtIcon();  
        echo "</div>";
      }
  }


}

?>