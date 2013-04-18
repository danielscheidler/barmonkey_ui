<?PHP



class ShortcutSidebar extends Object{
  
  private $FONTSIZE = 3;

  private $SHORTCUTS_DB;
  private $LAYOUTART;
  
  private $SHORTCUTS_URL_COMMAND;
  private $SHORTCUTS_TOOLTIP;

  private $SHORTCUTS_ROW_COLOR1 = "#dedede";
  private $SHORTCUTS_ROW_COLOR2 = "#cdcdcd";
  private $SHORTCUTS_ROW_COLOR_LAST;

  public $LAYOUTART_DESKTOP = "DESKTOP";
  public $LAYOUTART_TABLET = "TABLET";
  public $LAYOUTART_MOBILE = "MOBILE";
  
  private $ON_LABEL;
  private $OFF_LABEL;

  function ShortcutSidebar($layoutArt="DESKTOP"){
    $this->SHORTCUTS_DB  = new DbTable($_SESSION['config']->DBCONNECT,
                           'homecontrol_shortcut', 
	                       array( "id", "name", "beschreibung" ) , 
                           "Id, Name, Beschreibung",
        			       "",
        			       "name",
        			       "");
    $this->WIDTH = 140;
    $this->HEIGHT = 370;

    $this->LAYOUTART=$layoutArt;
    
    $this->ON_LABEL = "<div style=\"background-color:#33ee33;\">Ein</Div> ";

    $this->OFF_LABEL = "<div style=\"background-color:#ee3333;\">Aus</Div> ";
  }

  function setFontSize($size){
    $this->FONTSIZE = $size;
  }


  function getConfigName($id){
    $configDb  = new DbTable($_SESSION['config']->DBCONNECT,
                            'homecontrol_config', 
                            array("name") , 
                            "",
                            "",
                            "",
                            "id=".$id);

    $row = $configDb->getRow(1);

    if($row != null){
      return $row->getNamedAttribute("name");
    }
    return "";
  }




  function getConfigFunkId($id, $status){
    $configDb  = new DbTable($_SESSION['config']->DBCONNECT,
                            'homecontrol_config', 
                            array("funk_id", "funk_id2", "control_art") , 
                            "",
                            "",
                            "",
                            "id=".$id);

    $row = $configDb->getRow(1);

    if($row != null){
      if($status=="off" && isFunk2Need($row->getNamedAttribute("control_art"))){
        return $row->getNamedAttribute("funk_id2");
      } else {
        return $row->getNamedAttribute("funk_id");
      }
    }


    return "";
  }


  /**
   * Alle Config-IDs des Zimmers in die URL übernehmen
   */
  function addZimmerShortcutCommandItems($zimmerId, $onOff){

    $configDb  = new DbTable($_SESSION['config']->DBCONNECT,
                            'homecontrol_config', 
                            array( "id", "funk_id", "funk_id2") , 
                            "",
                            "",
                            "",
                            "zimmer=".$zimmerId);

    foreach ( $configDb->ROWS as $itemRow ){  
       $this->addShortcutCommandItem($itemRow->getNamedAttribute("id"), $onOff);
    }

  }


  /**
   * Alle Config-IDs zu Objekten dieser Art in die URL übernehmen
   */
  function addArtShortcutCommandItems($artId, $onOff){

    $configDb  = new DbTable($_SESSION['config']->DBCONNECT,
                            'homecontrol_config', 
                            array( "id", "funk_id", "funk_id2") , 
                            "",
                            "",
                            "",
                            "control_art=".$artId);

    foreach ( $configDb->ROWS as $itemRow ){  
       $this->addShortcutCommandItem($itemRow->getNamedAttribute("id"), $onOff);
    }

  }




  /**
   * Alle Config-IDs der Etage in die URL übernehmen
   */
  function addEtagenShortcutCommandItems($etagenId, $onOff){
    $configDb  = new DbTable($_SESSION['config']->DBCONNECT,
                            'homecontrol_config', 
                            array( "id", "funk_id", "funk_id2") , 
                            "",
                            "",
                            "",
                            "etage=".$etagenId);

    foreach ( $configDb->ROWS as $itemRow ){  
       $this->addShortcutCommandItem($itemRow->getNamedAttribute("id"), $onOff);
    }
  }




  /**
   * Wenn ID nicht schon enthalten ist, Einstellungs-Werte übernehmen
   */
  function addShortcutCommandItem($id, $status){
    $funkId = $this->getConfigFunkId($id, $status);

    if( !strpos($this->SHORTCUTS_URL_COMMAND, "_".$funkId."-") && strlen($funkId)>0 && strlen($status)>1) {
      $this->SHORTCUTS_URL_COMMAND .= "_".$funkId."-".$status.";";

      if($this->SHORTCUTS_ROW_COLOR_LAST == $this->SHORTCUTS_ROW_COLOR1){
         $this->SHORTCUTS_ROW_COLOR_LAST = $this->SHORTCUTS_ROW_COLOR2;
      } else {
         $this->SHORTCUTS_ROW_COLOR_LAST = $this->SHORTCUTS_ROW_COLOR1;
      }

      $this->SHORTCUTS_TOOLTIP .= "<tr style=\"background-color:" .$this->SHORTCUTS_ROW_COLOR_LAST .";\"><td>" .$this->getConfigName($id) ."</td><td>" .($status=="on"? $this->ON_LABEL : $this->OFF_LABEL) ."</td></tr>";
    }
  }







  /**
   * Liefert die URL zurück, mit der die Kombination 
   * für die gewünschte Schaltung an den Arduino übergeben wird.
   * Hierbei wird für jedes Element die ID und der gewünschte Status (on/off) durch ein Minus getrennt übergeben.
   * Die einzelnen Elemente werden durch ein Semikolon getrennt. Begonnen wird vor der ID immer mit einem Unterstrich.
   *
   * Unterstriche werden verwendet um das vorkommen einzelner IDs sauber zu prüfen. 
   * Diese werden in der show()-Methode wieder entfernt!
   *
   * Beispiel:
   *   _15-on;_22-on;_32-off; ...
   */
  function prepareShortcutSwitchLink($shortcutId){
    // Zuerst alle Config-IDs, Dann alle Zimmer und zum Schluss die Etagen bearbeiten. 
    // Durch die Methode addShortcutCommandItem($id, $status) wird gewährleistet dass jede ID nur einmal pro Vorgang geschaltet wird.
    $itemDb  = new DbTable($_SESSION['config']->DBCONNECT,
                           'homecontrol_shortcut_items', 
                           array( "id", "shortcut_id", "config_id", "art_id", "zimmer_id", "etagen_id", "funkwahl", "on_off") , 
                           "",
                           "",
                           "config_id DESC , zimmer_id DESC , etagen_id DESC ",
                           "shortcut_id=".$shortcutId );

    foreach ( $itemDb->ROWS as $itemRow ){      
        $whereStmt="";
        $onOff = $itemRow->getNamedAttribute("on_off");

        if(strlen($itemRow->getNamedAttribute("config_id"))>0){
          $this->addShortcutCommandItem($itemRow->getNamedAttribute("config_id"), $onOff);
        } else {
        
          if(strlen($itemRow->getNamedAttribute("art_id"))>0){
            $whereStmt = $whereStmt  ."control_art=".$itemRow->getNamedAttribute("art_id");
          } 

          if(strlen($itemRow->getNamedAttribute("zimmer_id"))>0){
            if($whereStmt!=""){
              $whereStmt = $whereStmt  ." AND ";
            }
            $whereStmt = $whereStmt  ."zimmer=" .$itemRow->getNamedAttribute("zimmer_id");
          }

          if(strlen($itemRow->getNamedAttribute("etagen_id"))>0){
            if($whereStmt!=""){
              $whereStmt = $whereStmt  ." AND ";
            }
            $whereStmt = $whereStmt  ."etage=" .$itemRow->getNamedAttribute("etagen_id");
          }

          $configDb  = new DbTable($_SESSION['config']->DBCONNECT,
                                   'homecontrol_config', 
                                   array( "id", "funk_id", "funk_id2") , 
                                   "",
                                   "",
                                   "",
                                   $whereStmt);

          foreach ( $configDb->ROWS as $configRow ){  
            $this->addShortcutCommandItem($configRow->getNamedAttribute("id"), $onOff);
          }
        }
    }

  }


  function getMobileView(){
    $dvSc = new Div();
    $dvSc->setWidth($this->WIDTH);
    $dvSc->setHeight($this->HEIGHT);

    $title = new Title("Shortcuts");

    $spc = new Line();

    $dvSc->add(new Spacer(30));
    $dvSc->add($title);
    $dvSc->add($spc);

    $tblAll = new Table(array(""));

    foreach ( $this->SHORTCUTS_DB->ROWS as $shortcutRow ){
      $tbl = new Table(array("",""));
      $tbl->setColSizes(array("300"));

      $this->SHORTCUTS_URL_COMMAND = "/?switchShortcut=";
      $this->prepareShortcutSwitchLink( $shortcutRow->getNamedAttribute("id") );

      $rName = $tbl->createRow();
      $tbl->addRow($rName);
      
      $nameTtl = new Text($shortcutRow->getNamedAttribute("name"),7, true);
      $nameTtl->setAlign("left");
      
      $rName->setAttribute(0, $nameTtl);    
      $rName->setSpawnAll(true);
      
      $rInfo = $tbl->createRow();
      $tbl->addRow($rInfo);
      
      $aktivierenBtn = null;
      if($this->SHORTCUTS_URL_COMMAND!="/?switchShortcut="){
        // aktiver Link mit konfigurierten Items
        $this->SHORTCUTS_URL_COMMAND = str_replace ("_", "", $this->SHORTCUTS_URL_COMMAND );

        $aktivierenBtnDiv = new Div();
        $aktivierenBtnDiv->setBackgroundColor("green");
        $aktivierenBtnDiv->setBorder(2);
        $aktivierenBtnDiv->setAlign("center");
        $aktivierenBtnDiv->setHeight(113);
        $aktivierenBtnDiv->add(new Text("Aktivieren",11));
        $aktivierenBtn = new Link($this->SHORTCUTS_URL_COMMAND, $aktivierenBtnDiv);

      } else {
        $aktivierenBtn = new Div();
        $aktivierenBtn->setWidth("40%");
        $aktivierenBtn->setHeight(113);
      }      

// -- ConfigListe START
      $cfgListDiv = new Div();
      $cfgListDiv->setWidth("96%");
      $cfgListDiv->setOverflow("auto");
      $cfgListDiv->setHeight(105);
      $cfgListDiv->setBorder(1);
                  
                        
      $configListe = new Table(array("", ""));
      
      $configListe->setColSizes(array("","60"));
      $configListe->setAlignments("left", "right");      

      $cfgItemList = new DbTable($_SESSION['config']->DBCONNECT,
                       'homecontrol_shortcut_items', 
                       array( "id", "shortcut_id", "config_id", "art_id", "zimmer_id", "etagen_id", "funkwahl", "on_off") , 
                       "",
                       "",
                       "config_id DESC , zimmer_id DESC , etagen_id DESC ",
                       "shortcut_id=".$shortcutRow->getNamedAttribute("id") );

      foreach ($cfgItemList->ROWS as $cfgItm){
        $whereStmt = "";
        
        if(strlen($cfgItm->getNamedAttribute("config_id"))>0){
            $cfgRow = $configListe->createRow();
            $configListe->addRow($cfgRow);
            if($cfgItm->getNamedAttribute("on_off") == "on"){
              $cfgRow->setBackgroundColor("#ccffcc");
            } else {
              $cfgRow->setBackgroundColor("red");
            }
//            $configListe->addSpacer(1,0);
            $cfgRow->setAttribute(0, new Text($cfgItm->getNamedAttribute("name"),4));
            $cfgRow->setAttribute(1, new Text($cfgItm->getNamedAttribute("on_off"),4));
        } else {
        
          if(strlen($cfgItm->getNamedAttribute("art_id"))>0){
            $whereStmt = $whereStmt  ."control_art=".$cfgItm->getNamedAttribute("art_id");
          } 

          if(strlen($cfgItm->getNamedAttribute("zimmer_id"))>0){
            if($whereStmt!=""){
              $whereStmt = $whereStmt  ." AND ";
            }
            $whereStmt = $whereStmt  ."zimmer=" .$cfgItm->getNamedAttribute("zimmer_id");
          }

          if(strlen($cfgItm->getNamedAttribute("etagen_id"))>0){
            if($whereStmt!=""){
              $whereStmt = $whereStmt  ." AND ";
            }
            $whereStmt = $whereStmt  ."etage=" .$cfgItm->getNamedAttribute("etagen_id");
          }

          $configDb  = new DbTable($_SESSION['config']->DBCONNECT,
                                   'homecontrol_config', 
                                   array( "id", "name", "funk_id", "funk_id2") , 
                                   "",
                                   "",
                                   "",
                                   $whereStmt);

          foreach ( $configDb->ROWS as $configRow ){  
            $cfgRow = $configListe->createRow();
            $configListe->addRow($cfgRow);
            if($cfgItm->getNamedAttribute("on_off") == "on"){
              $cfgRow->setBackgroundColor("#ccffcc");
            } else {
              $cfgRow->setBackgroundColor("#ffcccc");
            }
            $cfgRow->setAttribute(0, new Text($configRow->getNamedAttribute("name"),6));
            $cfgRow->setAttribute(1, new Text($cfgItm->getNamedAttribute("on_off"),6));
//            $configListe->addSpacer(1,0);
          }
        }
      }
      
      $cfgListDiv->add($configListe);
      $cfgListDiv->setPadding(5);
      $cfgListDiv->setBackgroundColor("#f3f3f3");

// -- ConfigListe Ende
      $rInfo->setAttribute(0, $aktivierenBtn);
      $rInfo->setAttribute(1, $cfgListDiv);

      $dv = new Div();
      $dv->setBorder(2);
      $dv->add($tbl);
      $dv->setBackgroundColor("#dedede");
      
      $rowAll = $tblAll->createRow();
      $rowAll->setHeight(160);
      $rowAll->setAttribute(0, $dv);
      $tblAll->addRow($rowAll);    
      
    }
        
    return $tblAll;
  }


  function executeShortcutURL($shortcutUrl){
    return switchShortcut("http://".$_SESSION['config']->PUBLICVARS['arduino_url'], $shortcutUrl);
  }

  /**
   * Shortcut-Sidebar anzeigen 
   * (Standard-Anzeige-Methode)
   *
   * Unterstriche werden rausgefiltert. Diese werden verwendet um das vorkommen einzelner IDs sauber zu prüfen.
   */
  function show() {
   
    if($this->LAYOUTART == $this->LAYOUTART_MOBILE){
        $mobileView = $this->getMobileView();
        $mobileView->show();
        return;
    }


    $dvSc = new Div();
    $dvSc->setWidth($this->WIDTH);
    $dvSc->setHeight($this->HEIGHT);

    $title = new Title("Shortcuts");

    $spc = new Line();

    $dvSc->add(new Spacer(30));
    $dvSc->add($title);
    $dvSc->add($spc);

    foreach ( $this->SHORTCUTS_DB->ROWS as $shortcutRow ){
      $this->SHORTCUTS_URL_COMMAND = "/?switchShortcut=";
      $this->SHORTCUTS_TOOLTIP = "<table cellspacing=0 cellpadding=0>";

      $this->prepareShortcutSwitchLink( $shortcutRow->getNamedAttribute("id") );

      if($this->SHORTCUTS_URL_COMMAND!="/?switchShortcut="){
        // aktiver Link mit konfigurierten Items
        $this->SHORTCUTS_URL_COMMAND = str_replace ("_", "", $this->SHORTCUTS_URL_COMMAND );


        $this->SHORTCUTS_TOOLTIP .= "</table> <a href='" .$this->SHORTCUTS_URL_COMMAND ."'>" 
                                 ."<center><div align='center' style='display:table-cell; height:40px;width:100px;vertical-align:middle;background-color:green'>"
                                   ."aktivieren" 
                                 ."</div></center>"
                                 ."</a>";

        $txtShortcut = new Text($shortcutRow->getNamedAttribute("name"), $this->FONTSIZE, true);
        $txtShortcut->setTooltip($this->SHORTCUTS_TOOLTIP);
        
        $dvSc->add($txtShortcut);
        $dvSc->add($spc);

      } else {
        // inaktiv (Keine konfigurierten Items)

        $txt = new Text($shortcutRow->getNamedAttribute("name"), 3, false);
        $txt->setTooltip("Noch keine Konfiguration hinterlegt");

        $dvSc->add($txt);
        $dvSc->add($spc);

      }
    }

    $dvSc->show();
  }

}
?>