<?PHP

class EditmodeSwitch extends Object {

    function EditmodeSwitch() {
    }


    function showLoggedOff() {
        $lnk = new Link("?run=login", new Text("Login", 5, true));
        $lnk->show();
    }


    function show() {
        $retAdd = "";
        if($_REQUEST['showRezept']){
          $retAdd =  "&editRezept=".$_REQUEST['showRezept'];
        }
        if($_REQUEST['editRezept']){
          $retAdd =  "&showRezept=".$_REQUEST['editRezept'];
        }
        
        if ($_SESSION['config']->CURRENTUSER->STATUS == "admin") {
            $lnkTxt = new Text("Edit-Mode aktivieren", 4, true);
            $lnkUrl = "?run=editCocktails".$retAdd;

            if ($_SESSION['runLink'] == "editCocktails") {
                // Edit-Modus aktiv
                $lnkTxt = new Text("Edit-Mode deaktivieren", 4, true);
                $lnkUrl = "?run=start".$retAdd;
            }

            $lnk = new Link($lnkUrl, $lnkTxt);
            $lnk->show();

            $logoutTxt = new Text("Logout", 3, true);
            echo "<br>";
            $lnk = new Link("?do=logout&run=start", $logoutTxt);
            $lnk->setStyle("color", "red");
            $lnk->show();

        } else {
            $this->showLoggedOff();
        }
    }
}

?>