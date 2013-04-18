<?PHP

class Rezept extends Object {
    private $REZEPTE_ROW;
    private $ZUTATEN;

    /**
     * Rezept::Rezept()
     * 
     * @param mixed $rezeptRow
     * @return
     */
    function Rezept($rezeptRow) {
        $this->REZEPTE_ROW = $rezeptRow;
        $this->initZutaten();
    }



    /**
     * Rezept::Rezept()
     * 
     * @param mixed $rezeptRow
     * @return
     */
    function getRezepteRow() {
        return $this->REZEPTE_ROW;
    }


    /**
     * Rezept::getId()
     * 
     * @return String (Int)
     */
    function getId() {
        return $this->REZEPTE_ROW->getAttribute(count($this->REZEPTE_ROW->COLNAMES));
    }

    /**
     * Rezept::getName()
     * 
     * @return String
     */
    function getName() {
        return $this->REZEPTE_ROW->getNamedAttribute('name');
    }


    /**
     * Rezept::getBeschreibung()
     * 
     * @return String
     */
    function getBeschreibung() {
        return $this->REZEPTE_ROW->getNamedAttribute('beschreibung');
    }

    /**
     * Rezept::getVorbereitung()
     * 
     * @return String (Blob)
     */
    function getVorbereitung() {
        return $this->REZEPTE_ROW->getNamedAttribute('vorbereitung');
    }

    /**
     * Rezept::getVorbereitung()
     * 
     * @return String (Blob)
     */
    function getNachbereitung() {
        return $this->REZEPTE_ROW->getNamedAttribute('nachbereitung');
    }

    /**
     * Rezept::getPic()
     * 
     * @return String
     */
    function getPic() {
        return $this->REZEPTE_ROW->getNamedAttribute('pic');
    }


    /**
     * Rezept::getImage()
     * 
     * @return Image
     */
    function getImage() {
        $img = new Image($this->REZEPTE_ROW->getNamedAttribute('pic'));

        if (!is_file($this->REZEPTE_ROW->getNamedAttribute('pic'))) {
            return new Text("no pic");
        }

        return $img;
    }


    /**
     * Rezept::getZutaten()
     * 
     * @return Array
     */
    function getZutaten() {
      return $this->ZUTATEN;
    }
    

    /**
     * Rezept::initZutaten()
     * 
     * @return Array
     */
    function initZutaten() {        
        $ret = array();

        if ($this->getId() == null) {
            return $ret;
        }

        $zutatenDbTbl = new DbTable( $_SESSION['config']->DBCONNECT, 
                                    'zutaten', 
                                    array("id",
                                    "name", "beschreibung", "prozente", "cl_preis", "manuell",
                                    "(select menge from zutaten_zuordnung  WHERE zutaten.id = zutaten_zuordnung.zutat_id " 
                                    ."AND zutaten_zuordnung.rezept_id=" . $this->getId() . ") menge "), 
                                    "Name, Prozente, Preis je cl, Nur Manuell", 
                                    "", 
                                    "manuell",
                                    "exists(SELECT 'x' FROM zutaten_zuordnung WHERE " 
                                    ."zutaten.id = zutaten_zuordnung.zutat_id " . "AND zutaten_zuordnung.rezept_id=" 
                                    .$this->getId() . ") ");

        foreach ($zutatenDbTbl->ROWS as $zutatRow) {
            $zutat = new Zutat($zutatRow);
            array_push($ret, $zutat);
        }

        $this->ZUTATEN = $ret;
    }


    /**
     * Rezept::getPreis()
     * 
     * @return int
     */
    function getPreis(){
        $ret = 0;
        
        // Alle Preise der einzelnen Zutaten aufaddieren
        foreach($this->getZutaten() as $zutat){
            $prs = $zutat->getPreis();

            $ret = $ret + $prs;
        }
        
        $ret = $ret / 100;
        
        $ret = number_format($ret, 2, '.', ' ');

        return $ret;
    }


    /**
     * Rezept::getZutatenListeAsString()
     * 
     * @param integer $maxLen
     * @return String
     */
    function getZutatenListeAsString($maxLen = -1) {
        $ret = "";

        $zutaten = $this->getZutaten();
        foreach ($zutaten as $zutat) {
            if ($ret != "") {
                $ret .= ", ";
            }
            if ($maxLen < 0 || strlen($ret . $zutat->getName()) < $maxLen) {
                if($zutat->isManuell()){
                    $ret .= "[red]";
                } elseif ( ! $zutat->isAngeschlossen()){
                    $ret .= "[orange]";
                } else {
                    $ret .= "[fett]";
                }

                $ret .= $zutat->getName();

                if($zutat->isManuell()){
                    $ret .= "[/red]";
                } elseif ( ! $zutat->isAngeschlossen()){
                    $ret .= "[/orange]";
                } else {
                    $ret .= "[/fett]";
                }
            }
        }

        return $ret;
    }




    /**
     * Rezept::getZutatenListeForInterface()
     * 
     * @param integer $maxLen
     * @return String
     */
    function getZutatenListeForInterface() {
        $ret = "";

        $zutaten = $this->getZutaten();
        foreach ($zutaten as $zutat) {
            if( $zutat->isAngeschlossen() && ! $zutat->isManuell()){
                if ($ret != "") {
                    $ret .= ", ";
                }

                $ret .= $zutat->getId() .":".$zutat->getMenge();              
            }
        }

        return $ret;
    }

    /**
     * Rezept::getZutatenListe()
     * 
     * @return Div
     */
    function getZutatenListe() {
        $ret = new Div();
        $ret->setWidth(450);
        $ret->setHeight(100);

        $tbl = new Table(array("Zutat", "Menge", "Preis (je cl)"));
        $tbl->setWidth("99%");
        $tbl->setHeight("99%");
        $tbl->setHeadEnabled(true);
        $tbl->setColSizes(array("150"));
        $tbl->setAlignments(array("left", "right", "right"));

        $zutaten = $this->getZutaten();
        
        $bgCtr = 1;
        $manuell = false;
        foreach ($zutaten as $zutat) {
            $r = $tbl->createRow();
            
            // Manuell?            
            if($zutat->isManuell()){
              $r->setBackgroundColor('#ff7777');
              $manuell = true;
            } else if ( !$zutat->isAngeschlossen() ) {
              $r->setStyle("color", "#ffaa22");
              $manuell = true;                
            } else {
              $r->setBackgroundColor($_SESSION['config']->COLORS['Tabelle_Hintergrund_' . $bgCtr]);
            }
            
            $r->setStyle("padding-left","10px");
            $r->setStyle("padding-right","10px");

            if ($bgCtr == 1) {
                $bgCtr = 2;
            } else {
                $bgCtr = 1;
            }
            
            $prs=number_format($zutat->getPreis()/100, 2, '.', ' ');
                                                
            $r->setAttribute(0, new Text($zutat->getName(), 2));
            $r->setAttribute(1, new Text($zutat->getMenge() . "ml", 2));            
            $r->setAttribute(2, new Text($prs ."Euro (" .$zutat->getClPreis() ."ct)", 2));
            $tbl->addRow($r);
        }
        
        if($manuell){
            $r = $tbl->createRow();
            $r->setSpawnAll(true);
            $r->setAttribute(0, new Text("(Rot hinterlegte Zutaten sind nicht automatisch verwendbar.<br>Orange sind nicht angeschlossen.)",1,false,true,false,false));
            $tbl->addRow($r);
        }

        $ret->add($tbl);
        
        return $ret;
    }


    /**
     * Rezept::getZutatenZuordnung()
     * 
     * @return Div
     */
    function getZutatenZuordnung() {
        $rezepteDbTbl = new DbTable($_SESSION['config']->DBCONNECT, 'zutaten_zuordnung',
            array("zutat_id", "menge", "rezept_id"), "Zutat, Menge (ml)", "rezept_id = " . $this->getId(), "",
            "rezept_id=" . $this->getId());
            
        $rezepteDbTbl->setReadOnlyCols(array("rezept_id"));
        if (isset($_REQUEST['DbTableUpdate' . $rezepteDbTbl->TABLENAME]) && $_REQUEST['DbTableUpdate' .
            $rezepteDbTbl->TABLENAME] == "Speichern") {

            $rezepteDbTbl->doUpdate();
        }


        $dv = new Div();

        if (isset($_REQUEST['dbTableNewZutat'])) {
            
            if (isset($_REQUEST['InsertIntoDB' . $rezepteDbTbl->TABLENAME]) && $_REQUEST['InsertIntoDB' .
                $rezepteDbTbl->TABLENAME] == "Speichern") {
        
                $rezepteDbTblInsert = new DbTable($_SESSION['config']->DBCONNECT, 'zutaten_zuordnung',
                    array("zutat_id", "menge", "rezept_id"), "Zutat, Menge (ml), Rezept", "rezept_id = " . $this->getId(), "", "");
    
                $rezepteDbTblInsert->doInsert();
                
         //       $newLnk = $rezepteDbTbl->getNewEntryButton("Zutat hinzufügen", "Zutat");
//                $newLnk->add(new Hiddenfield("editRezept", $_REQUEST['editRezept']));
//                $dv->add($newLnk);
//
}//            } else {
            
                $title = new Title("Neuer Eintrag");
                $title->show();
    
                $form = $rezepteDbTbl->getInsertMask("Zutat");
                $form->add(new Spacer());
                $form->add(new Hiddenfield("editRezept", $_REQUEST['editRezept']));
                $form->show();
          //  }
          
        } else {
            $newLnk = $rezepteDbTbl->getNewEntryButton("Zutat hinzufügen", "Zutat");
            $newLnk->add(new Hiddenfield("editRezept", $_REQUEST['editRezept']));
            $dv->add($newLnk);
            
        }
        
        $rezepteDbTbl->refresh();
        $frm = $rezepteDbTbl->getUpdateAllMask();

        $dv->add($frm);
        return $dv;
    }


    /**
     * Rezept::getDetailLink()
     * 
     * @param string $urlParamName
     * @return Table
     */
    function getDetailLink($urlParamName = "showRezept") {
        $ttl = new Text($this->getName(), 4);
        $lnk = new Link("?" . $urlParamName . "=" . $this->getId(), $ttl);

        $tbl = new Table(array("", "", ""));
        $tbl->setColSizes(array(60, 240));
        $tbl->setStyle("padding-left", "15px");
        $tbl->setStyle("padding-right", "15px");

        $tbl->addSpacer(1,0);

        $rowTtl = $tbl->createRow();
        $rowTtl->setAttribute(0, "BILD");
        $rowTtl->setAttribute(1, $lnk);
        $rowTtl->setAttribute(2, new Text("[fett]Zutaten: [/fett]\n\r[italian]" . $this->getZutatenListeAsString
            (300) . "[/italian]", 2, false, false, false, true) );
        $tbl->addRow($rowTtl);


        return $tbl;
    }


    /**
     * Rezept::showDetailLink()
     * 
     * @param string $urlParamName
     * @return Table
     */
    function showDetailLink($urlParamName = "showRezept") {
        $lnk = $this->getDetailLink($urlParamName);
        $lnk->show();
    }


    /**
     * Rezept::getSingleRowEditor()
     * 
     * @return Table
     */
    function getSingleRowEditor() {
        return $this->REZEPTE_ROW->getUpdateMask();
    }



    function getCancleLink($text="Zurück"){
    
        // Button zum Abbrechen 
        $abbrechenTxt = new Text($text, 3);
        $abbrechenTxt->setColor("#565656");

        $tblCancleBtn = new Table(array(""));
        $rowCancle = $tblCancleBtn->createRow();
        $rowCancle->setSpawnAll(true);
        $rowCancle->setBorder(1);
        $rowCancle->setBackgroundcolor("#ff9999");
        $rowCancle->setStyle("padding-top","3px");
        $rowCancle->setStyle("padding-bottom","3px");        
        $rowCancle->setStyle("padding-left","10px");
        $rowCancle->setStyle("padding-right","10px");        
        $rowCancle->setStyle("text-align","center");        
        $rowCancle->setStyle("text-valign","middle");        
        $rowCancle->setAttribute(0, $abbrechenTxt);
        $tblCancleBtn->addRow($rowCancle);

        $CancleLnk = new Link("?changeGroup=" .$_SESSION['currentGroup'],  $tblCancleBtn );

        return $CancleLnk;
    }


   function getZubereitenLink(){
    
        // Button zum Zubereitungsvorgang starten 
        $zubereitenTxt = new Text("Zubereiten", 5, true);
        $zubereitenTxt->setColor("#565656");

        $tblPrepareBtn = new Table(array(""));
        $rowPrepare = $tblPrepareBtn->createRow();
        $rowPrepare->setSpawnAll(true);
        $rowPrepare->setBorder(1);
        $rowPrepare->setBackgroundcolor("#99ff99");
        $rowPrepare->setStyle("padding-top","10px");
        $rowPrepare->setStyle("padding-bottom","10px");        
        $rowPrepare->setStyle("padding-left","10px");
        $rowPrepare->setStyle("padding-right","10px");        
        $rowPrepare->setStyle("text-align","center");        
        $rowPrepare->setStyle("text-valign","middle");        
        $rowPrepare->setAttribute(0, $zubereitenTxt);
        $tblPrepareBtn->addRow($rowPrepare);

        $CancleLnk = new Link("?showRezept=" .$this->getId() ."&starteZubereitung=" .$this->getId(),  $tblPrepareBtn);

        return $CancleLnk;
    }


   function getVorbereitungOkLink(){
    
        // Button zum Zubereitungsvorgang starten 
        $zubereitenTxt = new Text("Weiter", 5, true);
        $zubereitenTxt->setColor("#565656");

        $tblPrepareBtn = new Table(array(""));
        $rowPrepare = $tblPrepareBtn->createRow();
        $rowPrepare->setSpawnAll(true);
        $rowPrepare->setBorder(1);
        $rowPrepare->setBackgroundcolor("#99ff99");
        $rowPrepare->setStyle("padding-top","10px");
        $rowPrepare->setStyle("padding-bottom","10px");        
        $rowPrepare->setStyle("padding-left","10px");
        $rowPrepare->setStyle("padding-right","10px");        
        $rowPrepare->setStyle("text-align","center");        
        $rowPrepare->setStyle("text-valign","middle");        
        $rowPrepare->setAttribute(0, $zubereitenTxt);
        $tblPrepareBtn->addRow($rowPrepare);

        $CancleLnk = new Link("?showRezept=" .$this->getId() ."&starteZubereitung=" .$this->getId()."&VorbereitungPruefen=".$this->getId(),  $tblPrepareBtn);

        return $CancleLnk;
    }


    function getAutomatischeMenge(){
        $zutaten = $this->getZutaten();
        $ml = 0;
        foreach($zutaten as $zutat){
          if(!$zutat->isManuell() && $zutat->isAngeschlossen()){
            $ml = $ml + $zutat->getMenge();
          }
        }
        return $ml;
    }


    function getGesamtMenge(){
        $zutaten = $this->getZutaten();
        $ml = 0;
        foreach($zutaten as $zutat){
          $ml = $ml + $zutat->getMenge();
        }
        return $ml;
    }




    /**
     * Rezept::starteZubereitung()
     * 
     * Führt den eigentlichen Abfüll-Vorgang durch.
     * 
     * @return
     */
    function starteZubereitung(){
                
        // Vorbereiten
        $tbl = new Table(array("", ""));
        $tbl->setColSizes(array(150));
        $tbl->setAlignments(array("left", "right"));

        // Name
        $ttl = new Title($this->getName()." bestätigt", 0, 5);
        $rowTtl = $tbl->createRow();
        $rowTtl->setSpawnAll(true);
        $rowTtl->setAttribute(0, $ttl);
        $tbl->addRow($rowTtl);        

        // Preis
        $rowPreis = $tbl->createRow();
        $rowPreis->setSpawnAll(true);
        $rowPreis->setAlign("right");
        $rowPreis->setStyle("padding-left","10px");
        $rowPreis->setStyle("padding-right","10px");        
        $rowPreis->setAttribute(0, new Text("[fett]Preis:[/fett] " .$this->getPreis() ." Euro", 4));
        $tbl->addSpacer(1,15);
        $tbl->addRow($rowPreis);
        $tbl->addSpacer(0,15);

        // Nachbereitung
        $rowNachbereitungTtl = $tbl->createRow();
        $rowNachbereitungTtl->setSpawnAll(true);
        $rowNachbereitungTtl->setStyle("padding-left","10px");
        $rowNachbereitungTtl->setStyle("padding-right","10px");        
        $rowNachbereitungTtl->setAttribute(0, new Text("Nachbearbeitung:", 4, true));
        $tbl->addSpacer(1,3);
        $tbl->addRow($rowNachbereitungTtl);
        $tbl->addSpacer(1,3);
        
        $tbl->addSpacer(0,10);

        $msg = "Sobald der Vorgang abgeschlossen ist (Grüne LED), können Sie das Glas von der Wage entnehmen. \r\n ";
        $rowBeschreibung1 = $tbl->createRow();
        $rowBeschreibung1 ->setSpawnAll(true);
        $rowBeschreibung1 ->setStyle("padding-left","10px");
        $rowBeschreibung1 ->setStyle("padding-right","10px");        
        $rowBeschreibung1 ->setAttribute(0, new Text($msg, 3));
        $tbl->addRow($rowBeschreibung1);

        $tbl->addSpacer(0,20);
        
        $rowNachbereitung = $tbl->createRow();
        $rowNachbereitung->setSpawnAll(true);
        $rowNachbereitung->setStyle("padding-left","10px");
        $rowNachbereitung->setStyle("padding-right","10px");        
        $rowNachbereitung->setAttribute(0, new Text($this->getNachbereitung(), 3));
        $tbl->addRow($rowNachbereitung);
        
        $tbl->addSpacer(0,20);
        
        $prepareLnk = $this->getCancleLink("Fertig (Zurück zur Übersicht)");
        $rowPrepareAction = $tbl->createRow();
        $rowPrepareAction ->setSpawnAll(true);
        $rowPrepareAction ->setAttribute(0, $prepareLnk );
        $tbl->addRow($rowPrepareAction );
        
        $tbl->addSpacer(0,10);
        
        $tbl->show();
    }



    /**
     * Rezept::vorbereitungPruefen()
     * 
     * @return
     */
    function vorbereitungPruefen(){
      // Prüfen ob ein Glas auf der Wage steht (Mindestgewicht)
      
      return true;
    }


    /**
     * Rezept::zubereiten()
     * 
     * @return
     */
    function zubereiten() { 
        if(isset($_REQUEST['VorbereitungPruefen']) && $_REQUEST['VorbereitungPruefen']==$this->getId()){
            if($this->vorbereitungPruefen()){
                $this->starteZubereitung();   
                return;
            } else {
                new Message("Fehler bei der Vorbereitung", "Überprüfen Sie alle Vorbereitungs-Maßnahmen und stellen sie sicher, dass das Glas oder der Shaker mittig auf der Wage positioniert ist.<br>"
                           ."Notfalls entfernen Sie das Gefäß noch einmal von der Wage und starten das System neu.");
            }
        }
        
        // Vorbereiten
        $tbl = new Table(array("", ""));
        $tbl->setColSizes(array(150));
        $tbl->setAlignments(array("left", "right"));

        // Name
        $ttl = new Title($this->getName()." zubereiten.", 0, 5);
        $rowTtl = $tbl->createRow();
        $rowTtl->setSpawnAll(true);
        $rowTtl->setAttribute(0, $ttl);
        $tbl->addRow($rowTtl);        

        // Preis
        $rowPreis = $tbl->createRow();
        $rowPreis->setSpawnAll(true);
        $rowPreis->setAlign("right");
        $rowPreis->setStyle("padding-left","10px");
        $rowPreis->setStyle("padding-right","10px");        
        $rowPreis->setAttribute(0, new Text("[fett]Preis:[/fett] " .$this->getPreis() ." Euro", 5));
        $tbl->addSpacer(1,15);
        $tbl->addRow($rowPreis);
        $tbl->addSpacer(0,15);

        // Vorbereitung
        $rowVorbereitungTtl = $tbl->createRow();
        $rowVorbereitungTtl->setSpawnAll(true);
        $rowVorbereitungTtl->setStyle("padding-left","10px");
        $rowVorbereitungTtl->setStyle("padding-right","10px");        
        $rowVorbereitungTtl->setAttribute(0, new Text("Vorbereitung:", 4, true));
        $tbl->addSpacer(1,3);
        $tbl->addRow($rowVorbereitungTtl);
        $tbl->addSpacer(1,3);
        
        $tbl->addSpacer(0,10);
        
        $rowBeschreibung = $tbl->createRow();
        $rowBeschreibung ->setSpawnAll(true);
        $rowBeschreibung ->setStyle("padding-left","10px");
        $rowBeschreibung ->setStyle("padding-right","10px");        
        $rowBeschreibung ->setAttribute(0, new Text($this->getVorbereitung(), 3));
        $tbl->addRow($rowBeschreibung);

      // Meldung: Glas auf Wage stellen
        $rowBeschreibung1 = $tbl->createRow();
        $rowBeschreibung1 ->setSpawnAll(true);
        $rowBeschreibung1 ->setStyle("padding-top","15px");        
        $rowBeschreibung1 ->setStyle("padding-left","10px");
        $rowBeschreibung1 ->setStyle("padding-right","10px");        
        $rowBeschreibung1 ->setAttribute(0, new Text("Stellen Sie anschließend das Glas bzw den Shaker auf die Wage. "
                                                    ."Achten Sie hierbei darauf, dass sich auch genügend Platz darin befindet.\r\n"
                                                    ." Es werden mindestens [fett]" .$this->getAutomatischeMenge() ."ml[/fett] Flüssigkeit automatisch abgefüllt!", 3));
        $tbl->addRow($rowBeschreibung1);

        $tbl->addSpacer(0,20);

        $prepareLnk = $this->getVorbereitungOkLink();
        $rowPrepareAction = $tbl->createRow();
        $rowPrepareAction->setSpawnAll(true);
        $rowBeschreibung1 ->setStyle("padding-left","10px");
        $rowBeschreibung1 ->setStyle("padding-right","10px");        
        $rowPrepareAction->setAttribute(0, $prepareLnk );
        $tbl->addRow($rowPrepareAction);
        
        $tbl->addSpacer(0,10);

        $cancleLnk = $this->getCancleLink();
        $rowPrepareAction = $tbl->createRow();
        $rowPrepareAction->setSpawnAll(true);              
        $rowBeschreibung1->setStyle("padding-left","10px");
        $rowBeschreibung1->setStyle("padding-right","10px");        
        $rowPrepareAction->setAttribute(0, $cancleLnk );
        $tbl->addRow($rowPrepareAction);
        
        $rowMsg = $tbl->createRow();
        $rowMsg->setSpawnAll(true);
        $rowMsg->setStyle("padding-left","10px");
        $rowMsg->setStyle("padding-right","10px");        
        $rowMsg->setAttribute(0, "Sollte RFID aktiviert sein, muss dieser vor dem Bestätigen auf den Leser gelegt werden." );
        $tbl->addRow($rowMsg );
        
        $tbl->addSpacer(0, 20);
                
        $tbl->show();        
    }






    /**
     * Rezept::show()
     * 
     * Rezept Detail-Anzeige
     * 
     * Zeigt das gesamte Rezept im Detail mit:
     * - Name
     * - Bild
     * - Zutatenliste
     * - Preis
     * - Beschreibung
     * - Aktion für die Zubereitung
     * 
     * @return
     */
    function show() {
        if(isset($_REQUEST['starteZubereitung']) && $_REQUEST['starteZubereitung']==$this->getId()){
            $this->zubereiten();
            return;
        }
        
        
        $tbl = new Table(array("", ""));
        $tbl->setColSizes(array(150));
        $tbl->setAlignments(array("left", "right"));

        // Name
        $ttl = new Title($this->getName(), 0, 5);
        $rowTtl = $tbl->createRow();
        $rowTtl->setSpawnAll(true);
        $rowTtl->setAttribute(0, $ttl);
        $tbl->addRow($rowTtl);

        // Bild und Zutaten
        $img = $this->getImage();
        $zutatenListe = $this->getZutatenListe();
        $rowImgZutaten = $tbl->createRow();
        $rowImgZutaten->setAttribute(0, $img);
        $rowImgZutaten->setAttribute(1, $zutatenListe);
        $tbl->addRow($rowImgZutaten);

        $tbl->addSpacer(0,5);
        
        // Mengen Info 
        $automFill = new Text("[fett]".$this->getAutomatischeMenge()."ml[/fett] von [fett]".$this->getGesamtMenge()."ml[/fett]  automatisch abfüllbar",3,false,true);
        $rowautomFillTtl = $tbl->createRow();
        $rowautomFillTtl->setSpawnAll(true);
        $rowautomFillTtl->setAlign("right");
        $rowautomFillTtl->setAttribute(0, $automFill);
        $tbl->addRow($rowautomFillTtl);

        // Preis
        $rowPreis = $tbl->createRow();
        $rowPreis->setSpawnAll(true);
        $rowPreis->setAlign("right");
        $rowPreis->setStyle("padding-left","10px");
        $rowPreis->setStyle("padding-right","10px");        
        $rowPreis->setAttribute(0, new Text("[fett]Preis:[/fett] " .$this->getPreis() ." Euro", 5));

        $tbl->addSpacer(1,15);

        $tbl->addRow($rowPreis);

        $tbl->addSpacer(0,15);



        // Beschreibung
        $rowBeschreibungTtl = $tbl->createRow();
        $rowBeschreibungTtl->setSpawnAll(true);
        $rowBeschreibungTtl->setStyle("padding-left","10px");
        $rowBeschreibungTtl->setStyle("padding-right","10px");        
        $rowBeschreibungTtl->setAttribute(0, new Text("Beschreibung:", 4, true));

        $tbl->addSpacer(1,3);
        $tbl->addRow($rowBeschreibungTtl);
        $tbl->addSpacer(1,3);

        $rowBeschreibung = $tbl->createRow();
        $rowBeschreibung ->setSpawnAll(true);
        $rowBeschreibung ->setStyle("padding-left","10px");
        $rowBeschreibung ->setStyle("padding-right","10px");        
        $rowBeschreibung ->setAttribute(0, new Text($this->getBeschreibung(), 3));
        $tbl->addRow($rowBeschreibung);

        $tbl->addSpacer(0,20);

        

  // Buttons (Zubereiten / Zurück)
        $prepareLnk = $this->getZubereitenLink();
        $rowPrepareAction = $tbl->createRow();
        $rowPrepareAction ->setSpawnAll(true);
        $rowPrepareAction ->setAttribute(0, $prepareLnk );
        $tbl->addRow($rowPrepareAction );
        
        $tbl->addSpacer(0,10);
        
        $cancleLnk = $this->getCancleLink();
        $rowCancleAction = $tbl->createRow();
        $rowCancleAction->setSpawnAll(true);
        $rowCancleAction->setAttribute(0, $cancleLnk);
        $tbl->addRow($rowCancleAction);

        $tbl->show();
    }


}

?>