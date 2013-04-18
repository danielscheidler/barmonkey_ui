<?php
/**
 * Interface zur Datenabfrage / Verwaltung der GpsGame-Daten 
 * 
 * 
 * Pflicht-Parameter:
 *  -   User
 *  -   Pw 
 *  -   command
 * 
 * 
 * ------------------------------
 *       Gültige COMMANDS 
 *   (Anmeldedaten notwendig)
 * ------------------------------
 *  -   login
 *  -   register
 *  -   PwForgot
 *  -   getRezeptById
 */



include("init.php");

/* ---------------------------------------
        DATENBANK-VERBINDUNG
--------------------------------------- */
$DBCONNECT =  new DbConnect($DBHOST,$DBUSER,$DBPASS,$DBNAME);
  
// Session-Gültigkeit in Minuten
  $sessionTime = 30; 

// Welches Kommando soll ausgeführt werden?
  $command = isset($_REQUEST['command'])?$_REQUEST['command']:"";
 

/*
 * Kommando auswerten
 * (Bei bedarf neu anmelden)
 */  
  switch ( $command ) {

    // @deprecated
    case "login":
        if( strlen($_REQUEST['User'])>0 && strlen($_REQUEST['Pw'])>0 ){
                $_SESSION['config']->CURRENTUSER->login( $_REQUEST['User'], $_REQUEST['Pw'] );
        } else {
            echo "Benutzername und Passwort müssen eingegeben werden";
        }

        break;

    case "register":
        if( strlen($_REQUEST['Vorname'])>0 && strlen($_REQUEST['Nachname'])>0 && strlen($_REQUEST['User'])>0 && strlen($_REQUEST['Email'])>0  && strlen($_REQUEST['Pw'])>0 ){

            register( $_REQUEST['Vorname'], $_REQUEST['Nachname'], $_REQUEST['User'], $_REQUEST['Pw'] , $_REQUEST['Email'] );
            echo "Benutzer wurde erfolgreich angelegt.\r\n Sie erhalten in kürze eine Email mit dem Aktivierungs-Link von unserem System.";
        } else {
            echo "Vor-/Nachname, Benutzername, Passswort und Email müssen eingegeben werden.";
        }

        break;

    case "PwForgot":
        if( strlen($_REQUEST['Email'])>0 ){
            forgotPasswd( $_REQUEST['Email'] );
        } else {
            echo "Email (Email) muss eingegeben werden.";
        }

        break;


    default:
    
      if ( !isset($_REQUEST['User']) || !isset($_REQUEST['Pw']) ||  strlen($_REQUEST['User'])==0 || strlen($_REQUEST['Pw'])==0 ){
            echo "Benutzer(User) und Passwort(Pw) müssen eingegeben werden.";
      } else if ( ! validateLogin( $DBCONNECT, $_REQUEST['User'], $_REQUEST['Pw'] ) ){
            echo "Benutzer oder Passwort fehlerhaft";
      } else {
            
    /**
     * LOGIN ERFOLGREICH
     * ---------------------------------
     * 
     * AB HIER STANDARD-FUNKTIONALITÄT 
     * FÜR REGISTRIERTE BENUTZER  
     * 
     * ---------------------------------
     */        
        $_SESSION['config']->CURRENTUSER->login( $_REQUEST['User'], $_REQUEST['Pw'] );
        $userId = $_SESSION['config']->CURRENTUSER->USERID;
        
        switch ( $command ) {
         
          case "changePassword":
            if( strlen($_REQUEST['newPasswd'])>0 ){
                changePasswd($_REQUEST['User'], $_REQUEST['Pw'], $_REQUEST['newPasswd']);
            } else {
                echo "Neues Passwort (newPasswd) muss eingegeben werden.";
            }
            
            break;


          case "getRezeptById":
            if( strlen($_REQUEST['rezeptId'])>0 ){
                getRezeptById($_REQUEST['rezeptId']);
            } else {
                echo "Rezept-ID (rezeptId) muss eingegeben werden.";
            }

            break;




          default:
            echo "Unknown Command";            
            break;
        }
        
      }  
      
      break;
  } 









// ----------------------------------------------------
//                 REZEPTE FUNKTIONEN
// ----------------------------------------------------

  /**
   * liefert das Rezept in einen String zurück.
   * 
   * Der Aufbau lautet wie folgt:
   *  Id;RezeptName;Zutat1:Menge1,Zutat2:Menge2,Zutat3:Menge3,...;Preis;
   * 
   *  Der String wird Semikolon-Getrennt und reihen sich wie folgt aneinander:
   *  1: ID des Rezepts
   *  2: Name des Rezepts
   *  3: Zutaten (Zutat und Menge werden mit Doppelpunkt voneinander getrennt. Weitere Zutaten werden mit Komma angehangen.)
   *  4: Preis des Cocktails
   */
  function getRezeptById($rezeptId){
    $rezepteTbl = new DbTable($_SESSION['config']->DBCONNECT, 
                              'rezepte', 
                              array("id", "name","rezept_gruppe", "pic", "vorbereitung", "nachbereitung"),
                              "Id, Name, Kategorie, Bild, Vorbereitung, Nachbereitung",
                              "", 
                              "", 
                              "id = " .$rezeptId );
        
    if(count($rezepteTbl->ROWS)>0 ){
      $rezept = $rezepteTbl->ROWS[0];

    // ID hinzufügen
      $rezeptString = $rezept->getNamedAttribute("id");

    // Name hinzufügen
      $rezeptString = ";".$rezept->getNamedAttribute("name");

    // Zutaten hinzufügen (Zutat:Menge)

    // Preis hinzufügen

    
    // Ausgabe des Strings
      echo $rezeptString;

    } else {
      echo "Fehler: Rezept nicht gefunden!";
    }    
  }







// ----------------------------------------------------
//                 BENUTZER FUNKTIONEN
// ----------------------------------------------------

 /**
  * Erstellt den angegebenen Benutzer 
  * und sendet eine Mail mit den Login-Daten 
  * an die angegebene Mail-Adresse.
  * 
  * @param $vorname     String      Vorname
  * @param $nachname    String      Nachname
  * @param $User        String      Benutzername
  * @param $Pw      String      Passwort
  * @param $email       String      Email
  */
  function register($vorname, $nachname, $User, $Pw,$email) {
    if (  strlen($vorname)>0 
       && strlen($nachname)>0
       && strlen($User)>0  
       && strlen($Pw)>0 
       && strlen($email)>0
       ) {
        
        if( $_SESSION['config']->CURRENTUSER->existsUsername($_REQUEST['User'])){
            echo "Benutzername existiert bereits";
            return;
        }
    
        if( $_SESSION['config']->CURRENTUSER->existsEmail($_REQUEST['Email'])){
            echo "Diese Email existiert bereits!<br> Fordern Sie einfach ein neues Passwort an, falls Sie ihr altes nicht mehr wissen.";
            return;
        }
                    
        $status = new UserStatus($_SESSION['config']->CURRENTUSER);
        $status->createUserProfile( $vorname, $nachname, $User, $Pw, $email );
    } else {
        echo "Es wurden nicht alle notwendigen Daten angegeben!";
    }
  }

  
 /**
  * setzt ein neues Passwort 
  * und sendet eine Email mit den Login-Daten 
  * an die angegebene Mail-Adresse.
  * 
  * @param $User    String      Benutzername
  * @param $PwOld   String      Altes Passwort
  * @param $PwNew   String      Neues Passwort
  */
  function changePasswd($User, $PwOld, $PwNew) {
    $_SESSION['config']->CURRENTUSER->setPassword($_SESSION['config']->CURRENTUSER->USERID, $PwNew, true, false);
  
    echo "Passwort wurde geändert!";
  }

 /**
  * generiert ein neues Passwort 
  * und sendet eine Email mit den Login-Daten 
  * an die angegebene Mail-Adresse.
  * 
  * @param $email       String      Email-Adresse des Benutzers
  */
  function forgotPasswd($email) {
    $_SESSION['config']->CURRENTUSER->needNewPassword($email, true, false);
    echo "neues Passwort wurde generiert und per Email zugesandt.";
  }

 /**
  * Prüft bei aufruf ob die 
  * Benutzer-Passwort-Kombination gültig ist
  * 
  * @param $dbCon   DbConnect       DbConnect-Objekt
  * @param $User    String          Benutzername
  * @param $Pw  String          Passwort
  * 
  * @return  boolean                true wenn die Kombination Gültig ist
  *                                 sonst falce
  */
  function validateLogin($dbCon, $User, $Pw ){
    
    $sql  = "SELECT Pw FROM user WHERE User = '" .$User ."' ";

    $rslt = $dbCon->executeQuery($sql);
    
    $row  = mysql_fetch_array($rslt);
    
    if( $row['Pw'] == md5($Pw) ){
        return true;
    }
    return false;
  }
  
  /**
   * Ändert alle Werte des aktuellen Users, 
   * die im $_REQUEST angegeben sind, und im 
   * User-Objekt als Änderbare Spalten definiert sind.
   * 
   * zusätzlich wird die eigenschaft Pflichtparameter geprüft.
   * Ist ein Pflicht-Wert nicht angegeben, wird dieser 
   * nicht aktualisiert!
   */
  function updateUserProfile($userId){
    $i = 0;
    
    $changeableColumns = $_SESSION['config']->CURRENTUSER->getAenderbareFelder();
    $UserRow = $_SESSION['config']->CURRENTUSER->getUserRow();
    
    if( $UserRow == null ){
        echo "Es ist ein Problem beim Update des Benutzers aufgetreten!"; 
        
        return false;
    }  
    
    
    foreach ($changeableColumns as $colName) {
        
        if( isset($_REQUEST[$colName]) ){
            if($_SESSION['config']->CURRENTUSER->isColumnMandatory( $colName )){
                // Behandlung Pflichtfelder

                if( strlen($_REQUEST[$colName]) > 0 ){
                   $UserRow->setNamedAttribute($colName, $_REQUEST[$colName]);
                }

                // Sonderbehandlung bei Name
                if ($colName == "Vorname" || $colName == "Nachname"){
                    $name = $UserRow->getNamedAttribute("Vorname")." ".$UserRow->getNamedAttribute("Nachname");
                    $UserRow->setNamedAttribute("Name", $name);
                }

            } else {
                // Behandlung optionale Felder
                $UserRow->setNamedAttribute($colName, $_REQUEST[$colName]);
            }
        }

    } // ENDE FOREACH

    $UserRow->updateDB();
    
    echo "Ihr Profil wurde aktualisiert.";
  }
     
  /**
   * 
   * @param  $usrName String 
   * 
   * @return  boolean
   */
  function validateUsername($usrName){

        if( $_SESSION['config']->CURRENTUSER->existsUsername($usrName)){
            echo "Benutzername existiert bereits";
            return false;
        }
        
        if(strlen($usrName)<4 ){
            echo "Benutzername muss aus mindestens 4 Zeichen bestehen!";
            return false;
        }

        return true;
  }
    
  /**
   * 
   * @param  $passwd String 
   * 
   * @return  boolean
   */
  function validatePassword($usrName){

        if( strlen($passwd)< 5 ){
            echo "Passwort muss aus mindestens 5 Zeichen bestehen!";
            return false;
        }
        


        $existUpper   = preg_match( '#[A-Z]#', $passwd );
        $existLower   = preg_match( '#[a-z]#', $passwd );
        $existNumber  = preg_match( '#[0-9]#', $passwd );
        $existSonder  = preg_match( '#[+-&\$%/\(\)\#=]#', $passwd );
        
        if( !$existUpper || !$existLower || !$existNumber ){
            echo "Passwort muss Kleinbuchstaben, Großbuchstaben und Zahlen enthalten!";
            return false;
        }

        return true;
  }
  
  
?>