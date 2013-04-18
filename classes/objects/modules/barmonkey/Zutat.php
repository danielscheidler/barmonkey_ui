<?PHP

class Zutat extends Object {
  private $ZUTAT_ROW;  
  private $ANSCHLUSS;
  
  
  /**
   * Zutat::Zutat()
   * 
   * @param mixed $ZutatRow
   * @return
   */
  function Zutat($ZutatRow){
    $this->ZUTAT_ROW = $ZutatRow;
    $this->refreshAnschluss();
  }


  /**
   * Zutat::getId()
   * 
   * @return
   */
  function getId(){
    return $this->ZUTAT_ROW->getNamedAttribute('id');
  }
  
  
  /**
   * Zutat::getAnschluss()
   * 
   * @return
   */
   function getAnschluss(){
    return $this->ANSCHLUSS;
  }

  /**
   * Zutat::getName()
   * 
   * @return
   */
  function getName(){
    return $this->ZUTAT_ROW->getNamedAttribute('name');
  }

  /**
   * Zutat::getProzent()
   * 
   * @return
   */
  function getProzent(){
    return $this->ZUTAT_ROW->getNamedAttribute('prozent');
  }

  /**
   * Zutat::getMenge()
   * 
   * @return
   */
  function getMenge(){
    return $this->ZUTAT_ROW->getNamedAttribute('menge');
  }



  /**
   * Zutat::getClPreis()
   * 
   * @return int
   */
  function getClPreis(){
    return $this->ZUTAT_ROW->getNamedAttribute('cl_preis');
  }

  

  /**
   * Zutat::getPreis()
   * 
   * Liefert den Preis der Zutat des Rezeptes.
   * (Menge in ml * cl_preis / 10)
   * 
   * @return int
   */
  function getPreis(){
    $prs = $this->getMenge() / 10;
    $prs = $prs * $this->getClPreis();
    
    return $prs;
  }
  

  /**
   * Zutat::getBeschreibung()
   * 
   * @return int
   */
  function getBeschreibung(){
    return $this->ZUTAT_ROW->getNamedAttribute('beschreibung');
  }


  /**
   * Zutat::isManuell()
   * 
   * @return boolean
   */
  function isManuell(){
    return $this->ZUTAT_ROW->getNamedAttribute('manuell') == "J";
  }


  /**
   * Zutat::getImage()
   * 
   * @param integer $width
   * @return
   */
  function getImage($width=70){
    $img = new Image($this->ZUTAT_ROW->getNamedAttribute('pic'),-1,-1,$width);
    return $img;
  }

 

  function isAngeschlossen(){
    return $this->ANSCHLUSS != null;
  }

  function refreshAnschluss(){
    $this->ANSCHLUSS = getDbValue("anschluesse", "id", "zutat_id=" .$this->getId());
  }

  /**
   * Zutat::show()
   * 
   * @return
   */
  function show(){
     $tbl = new Table(array("",""));
     $tbl->setColSizes(500);
 
     $r = $tbl->createRow();
     $r->setAttribute(0, $this->getName());
     $r->setAttribute(1, $this->getMenge());
     $tbl->addRow($r);
     
     return $tbl; 
  }
}

?>