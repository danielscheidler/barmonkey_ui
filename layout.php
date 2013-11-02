<?php

/**
 * @filename layout.php
 * @author  Daniel Scheidler
 * @copyright Oktober 2012
 */


$_SESSION['mainpanelwidth'] = 660;
$_SESSION['grouppanelwidth'] = 230;

$layoutTable = new Table(array("", ""));
$layoutTable->setAlign("center");
$layoutTable->setBORDER(0);
$layoutTable->setBackgroundColor($_SESSION['config']->COLORS['panel_background']);

$layoutTable->setSpacing(0);
$layoutTable->setPadding(0);


/* ------------------------------------
HEADER
------------------------------------ */
$layoutTable->addSpacer(1, 0);

$headerLayoutRow = $layoutTable->createRow();
$headerLayoutRow->setSpawnAll(true);

$tblHead = new Table(array("", "", ""));
$tblHead->setAlignments(array("left", "center", "right"));
$tblHead->setColSizes(array("250", null, "250"));
$rHead = $tblHead->createRow();
$rHead->setAttribute(0, " ");
$rHead->setAttribute(1, new Title("Barmonkey", 0, 6));
$rHead->setAttribute(2, new EditmodeSwitch());
$tblHead->addRow($rHead);
$headerLayoutRow->setAttribute(0, $tblHead);
$layoutTable->addRow($headerLayoutRow);

$layoutTable->addSpacer(1, 0);


/* ------------------------------------
HAUPTPANEL
------------------------------------ */
$GrpPanel = new DivByInclude(getRunlinkParam($_SESSION['config']->DBCONNECT,
    "rezeptgruppen", "link"), false);
$GrpPanel->setBackgroundColor($_SESSION['config']->COLORS['panel_background']);
$GrpPanel->setBorder(0);
$GrpPanel->setOverflow("suto");
$GrpPanel->setWidth($_SESSION['grouppanelwidth']);


$MainPanel = new DivByInclude($_SESSION['mainpage'], false);
$MainPanel->setBackgroundColor($_SESSION['config']->COLORS['panel_background']);
$MainPanel->setBorder(0);
$MainPanel->setOverflow("visible");


$contentLayoutRow = $layoutTable->createRow();
$contentLayoutRow->setAttribute(0, $GrpPanel);
$contentLayoutRow->setAttribute(1, $MainPanel);
$layoutTable->addRow($contentLayoutRow);
/* --------------------------------- */


/* ------------------------------------
FUSS-MENU 
------------------------------------ */

$footMenuDiv = new Div();
$footMenuDiv->setWidth(800);
$footMenuDiv->setBackgroundColor($_SESSION['config']->COLORS['panel_background']);
$footMenuDiv->setBorder(0);
$footMenuDiv->setAlign("center");

$footMenu = new DbMenu("Fussmenue");
$footMenu->setHeight(14);
$footMenu->setMenuType("horizontal");
$footMenu->setAlign("center");
$footMenu->setFontsize(1);

$footMenuDiv->add($footMenu);

$fussLayoutRow = $layoutTable->createRow();
$fussLayoutRow->setSpawnAll(true);
$fussLayoutRow->setAttribute(0, $footMenuDiv);
$layoutTable->addRow($fussLayoutRow);

/* --------------------------------- */

$layoutTable->show();


/* --------------------------------- */
/* --------------------------------- */
/*                FOOTER             */
/* --------------------------------- */
/* --------------------------------- */

$line = new Line();
$t = new Text("Arduino URL: " . $_SESSION['config']->PUBLICVARS['arduino_url'] .
    "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;", 2, false, true, false, false);
$t2 = new Text("( " . $_SESSION['aktiveRezeptAnzahl'] . " von insgesamt " . $_SESSION['rezeptAnzahl'] .
    " Rezepten. )", 2, false, true, false, false);
$arduinoFrame = new IFrame($_SESSION['config'], "arduinoSwitch", -1, -1, 400, 50,
    2);

$tblFoot = new Table(array("", "", ""));

$footRow = $tblFoot->createRow();
$footRow->ROUNDCOLSIZE = false;
$footRow->setColSizes(array("33%", "33%", "33%"));
$footRow->setAlignments(array("left", "center", "right"));
$footRow->setAttribute(0, $t);
$footRow->setAttribute(1, $t2);
$footRow->setAttribute(2, $arduinoFrame);
$tblFoot->addRow($footRow);


$tblFoot->show();

?>
