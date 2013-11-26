<?PHP


class RezeptGruppe {
    private $REZEPTGRUPPEROW;
    private $ID;
    private $NAME;
    private $BESCHREIBUNG;
    private $PIC;
    
    function RezeptGruppe($rezeptGruppenRow){
        $this->setRezeptGruppenRow($rezeptGruppenRow);
    }
    
    function setRezeptGruppenRow($rezeptGruppenRow){
        $this->REZEPTGRUPPEROW = $rezeptGruppenRow;
        $this->ID = $rezeptGruppenRow->getNamedAttribute("id");
        $this->NAME = $rezeptGruppenRow->getNamedAttribute("name");
        $this->BESCHREIBUNG = $rezeptGruppenRow->getNamedAttribute("beschreibung");
        $this->PIC = $rezeptGruppenRow->getNamedAttribute("pic");
    }
    
    function getId(){
        return $this->ID;
    }
    
    function getName(){
        return $this->NAME;
    }
    
    function getBeschreibung(){
        return $this->BESCHREIBUNG;
    }
    
    function getPic(){
        return $this->PIC;
    }
    
    
    function getImage(){
       return new Image($this->PIC);
    }    
}

?>