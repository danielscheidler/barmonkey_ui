<?php

// Filename: DbRow.php

class DbRow extends Object {
    var $ROW; // Array welches die Zeile darstellt
    var $COLNAMES; // Array welches die Namen der Spalten enthÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂ¤lt
    var $LABELS;
    var $FONTTYPES; // Array welches die Schriftformatierung fÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂ¼r einzelne Spalten vorgibt
    private $DEFAULTS;
    private $TABLENAME;
    private $FIELDNAMES;

    function DbRow($colNamesArray, $TableName, $fldNames) {
        $this->TABLENAME = $TableName;
        $this->ROW = array();
        $this->setColNames($colNamesArray);
        //Spaltennamen Komma-getrennt verketten
        $COLNAMESTRING = "";
        if (count($this->COLNAMES) > 0) {
            $chk = 0;
            foreach ($this->COLNAMES as $cn) {
                if ($chk > 0) {
                    $COLNAMESTRING .= ", ";
                }
                $COLNAMESTRING .= $cn;

                $chk++;
            }
        } else {
            $COLNAMESTRING = "*";
        }


        $this->FIELDNAMES = $fldNames;
        $this->prepareFonts();
    }


    function prepareFonts() {
        //legt Standard-Fonttypes an
        $fts = array();

        for ($i = 0; $i < count($this->COLNAMES); $i++) {
            $fts[$i] = new Fonttype();
        }

        $this->FONTTYPES = $fts;
    }


    function setColNames($NameArray) {
        $this->COLNAMES = $NameArray;
    }


    function setDefaults($defaults) {
        $this->DEFAULTS = $defaults;
    }


    /**
     * gibt den im DbTable ermittelten Wert zurÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂ¼ck (wenn nicht geÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂ¤ndert)
     *
     * AUSNAHME: Datum -> wird im Standard-Format zurÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂ¼ckgegeben.
     */
    function getAttribute($colIndex) {
        $ret = "";
        $tn1 = explode(',', $this->TABLENAME);
        $preTabAliasx = explode(' ', $tn1[0]);

        //prÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂ¼ft ob aliase verwendet werden
        if (count($preTabAliasx) > 1) {
            $preTabAlias = $preTabAliasx[1] . ".";
        } else {
            $preTabAlias = "";
        }

        //Spaltennamen Komma-getrennt verketten
        $COLNAMESTRING = "";
        if (count($this->COLNAMES) > 0) {
            $chk = 0;
            foreach ($this->COLNAMES as $cn) {
                if ($chk > 0) {
                    $COLNAMESTRING .= ", ";
                }
                $COLNAMESTRING .= $cn;

                $chk++;
            }
        } else {
            $COLNAMESTRING = "*";
        }

        //Leer? dann Abbruch
        if (strlen($COLNAMESTRING) == 0) {
            exit();
        }

        //Gebe Wert aus Row zurÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂ¼ck wenn vorhanden
        // Datum wird hier noch formatiert
        if (isset($this->ROW[$colIndex])) {
            $result = $_SESSION['config']->DBCONNECT->executeQuery("SELECT " . $COLNAMESTRING . ", " .
                $preTabAlias . "id as rowid  FROM " . $this->TABLENAME . " " . " LIMIT 1");
            $ret = $this->ROW[$colIndex];
            if (mysql_field_type($result, $colIndex) == "date") {
                $ret = getFormatedDate($ret, "standard");
            }
        }

        return $ret;
    }

    function setTablename($tn) {
        $this->TABLENAME = $tn;
    }

    function getTablename() {
        return $this->TABLENAME;
    }


    function getColCount() {
        return count($this->COLNAMES);
    }

    function setAttribute($colIndex, $obj) {
        //mÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂ¼sste eigntl. ">" sein aber ist ">=" da rowid sonst hier nicht gesetzt werden kann
        if ($this->getColCount() >= $colIndex) {
            $this->ROW[$colIndex] = $obj;
        }
    }
    function setFonttypes($f) {
        $this->FONTTYPES = $f;
    }


    function setLabels($labels) {
        $this->LABELS = $labels;
    }

    function getNamedAttribute($colName) {
        for ($i = 0; $i < count($this->FIELDNAMES); $i++) {
            if ($this->FIELDNAMES[$i] == $colName) {
                return $this->getAttribute($i);
            }
        }
        if ($colName == "rowid") {
            return $this->getAttribute(count($this->COLNAMES));
        }
    }


    function setNamedAttribute($colName, $text) {
        for ($i = 0; $i < count($this->FIELDNAMES); $i++) {
            if ($this->FIELDNAMES[$i] == $colName) {
                $this->ROW[$i] = $text;
            }
        }
    }


    function insertIntoDB() {
        $COLNAMESTRING = "";

        if (count($this->COLNAMES) > 0) {
            $chk = 0;
            foreach ($this->COLNAMES as $cn) {
                if ($chk > 0) {
                    $COLNAMESTRING .= ", ";
                }
                $COLNAMESTRING .= $cn;

                $chk++;
            }
        }

        if (strlen($COLNAMESTRING) == 0) {
            return;
        }

        $sql = "insert into " . $this->TABLENAME . " (" . $COLNAMESTRING . ") VALUES (";

        for ($i = 0; $i < count($this->COLNAMES); $i++) {
            $sql .= "'" . $this->getAttribute($i) . "' ";
            if ($i + 1 < count($this->COLNAMES)) {
                $sql .= ", ";
            }
        }

        $sql .= ") ";

        $_SESSION['config']->DBCONNECT->executeQuery($sql);
    }


    function deleteFromDb() {
        if (count($this->COLNAMES) == 0) {
            return;
        }

        $sql = "DELETE FROM " . $this->TABLENAME . " ";
        $sql .= "WHERE id = " . $this->getNamedAttribute("rowid");

        if (strlen($this->getNamedAttribute("rowid")) > 0) {
            $_SESSION['config']->DBCONNECT->executeQuery($sql);
        } else {
            new Message("LÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂ¶schen nicht mÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂ¶glich",
                "Keine Id vorhanden. LÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂ¶schen nicht mÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂ¶glich");

            if ($_SESSION['config']->CURRENTUSER->STATUS == "admin") {
                print_r($this);
            }
        }
    }

    function updateDB() {
        if (count($this->COLNAMES) == 0) {
            return;
        }

        $sql = "UPDATE " . $this->TABLENAME . " SET ";

        for ($i = 0; $i < count($this->COLNAMES); $i++) {
            if ($this->COLNAMES[$i] != "id") {
                $sql .= $this->COLNAMES[$i] . " = '" . $this->getAttribute($i) . "' ";

                if ($i + 1 < count($this->COLNAMES)) {
                    $sql .= ", ";
                }
            }
        }

        $sql .= " WHERE id = " . $this->getNamedAttribute("id");

        $_SESSION['config']->DBCONNECT->executeQuery($sql);
    }


    function getUpdateMask() {
        $rowId = $this->getNamedAttribute("rowid");
        $tblAll = new Table(array(""));

        $f1 = new FontType();
        $f1->setFontSize(2);
        $f1->setBold(true);

        $f2 = new FontType();

        $fts = array($f1, $f2);

        $title = new Title("Bearbeite Eintrag");
        $title->show();

        $table = new Table(array("", ""));
        $table->setHeadEnabled(false);
        $table->setBorder(0);
        $table->setFontTypes($fts);

        $chk = 0;
        $stmnt = "SELECT ";
        foreach ($this->COLNAMES as $cn) {
            if ($stmnt != "SELECT ") {
                $stmnt .= ", ";
            }
            $stmnt .= $cn;

            $chk++;
        }
        $stmnt .= ", id as rowid ";
        $stmnt .= " FROM " . $this->TABLENAME . "  WHERE id = " . $this->getNamedAttribute("rowid");

        $result = $_SESSION['config']->DBCONNECT->executeQuery($stmnt);
        $rowEdit = mysql_fetch_array($result);

        for ($i = 0; $i < mysql_num_fields($result) - 1; $i++) {
            $fieldName = mysql_field_name($result, $i);


            $r = $table->createRow();

            $o = "";
            $lookups = getLookupWerte($_SESSION['config']->DBCONNECT, $this->TABLENAME, $fieldName);
            // in der Datenbank fÃ¼r dieses Datenbankfeld
            // definierte Combobox laden (wenn vorhanden)
            $dbCombo = getDbComboArray($this->TABLENAME, $fieldName, $rowEdit);

            $val = "";
            if (isset($rowEdit[$fieldName]) && strlen($rowEdit[$fieldName]) > 0) {
                $val = $rowEdit[$fieldName];
            }

            if (mysql_num_rows($lookups) == 0 && !isDbComboSet($this->TABLENAME, $fieldName)) {

                if (strpos(" " . $this->DEFAULTS, $fieldName) > 0) {
                    $tmpval = substr($this->DEFAULTS, strpos($this->DEFAULTS, "=") + 1);
                    $o = new HiddenField($fieldName, $tmpval);

                } else
                    if (strpos(mysql_field_flags($result, $i), "enum") > 0) {
                        $ev = $this->getEnumValues($fieldName);

                        if (count($ev) == 2 && (in_array('J', $ev) && in_array('N', $ev))) {
                            $o = new Checkbox($fieldName . $rowId, "", "J");

                            if ($rowEdit[$fieldName] == "J") {
                                $o->setSelected(true);
                            }

                        } else {
                            $o = new ComboBox($fieldName . $rowId, $this->getComboboxEnumArray($fieldName));
                        }

                    } else
                        if (mysql_field_type($result, $i) == "blob") {
                            $o = new TextArea($fieldName . $rowId, $val, 120, 10);
                            $o->setTextEditor(false);

                        } else
                            if (mysql_field_type($result, $i) == "date") {
                                $o = new DateTextfield($fieldName . $rowId, $val);
                                $o->setToolTip("Bitte im Format:  <b>YYYY-MM-TT</b>  angeben");

                            } else
                                if (mysql_field_type($result, $i) == "int") {
                                    $o = new TextField($fieldName . $rowId, $val);

                                } else
                                    if (mysql_field_type($result, $i) == "timestamp") {
                                        $o = new TextField($fieldName . $rowId, $val);

                                    } else {
                                        $o = new TextField($fieldName . $rowId, $val);
                                    }

            } else {
                if (mysql_num_rows($lookups) > 0) {
                    $o = new LookupCombo($_SESSION['config']->DBCONNECT, $fieldName . $rowId, $this->TABLENAME,
                        $fieldName);
                } else
                    if (count($dbCombo) > 0) {
                       // if (!strpos(" " . $this->DEFAULTS, $fieldName) > 0) {
                            $o = new ComboBox($fieldName . $rowId, $dbCombo, $val);
                        //} else {
                       //     $o = new HiddenField($fieldName . $rowId, $val);
                       // }
                    }
            }

            if ($i < count($this->LABELS) && !strpos(" " . $this->DEFAULTS, $fieldName) > 0) {
                $r->setAttribute(0, $this->LABELS[$i]);
            } else {
                $r->setAttribute(0, "");
            }

            $r->setAttribute(1, $o);

            $table->addRow($r);

        }

        $okButton = new Button("DbTableUpdate" . $this->TABLENAME, "Speichern");
        $r = $table->createRow();
        $r->setAttribute(0, $okButton);
        $table->addRow($r);

        $rowAll1 = $tblAll->createRow();
        $rowAll2 = $tblAll->createRow();

        $rowAll1->setAttribute(0, $table);

        $tblAll->addRow($rowAll1);
        $tblAll->addRow($rowAll2);

        return $tblAll;
    }


    function show() {
        $r = new Row($this->COLNAMES);
        $r->setToolTip($this->getTooltip());
        for ($i = 0; $i < count($this->ROW); $i++) {
            $r->setAttribute($i, $this->ROW[$i]);
        }

        $r->show();
    }

}
