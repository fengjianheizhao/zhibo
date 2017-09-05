<?php
$m = "captcha";
include_once "../common.inc.php";
include_once  S_ROOT . "source/model/" . $MODULE[$m]['model'] . ".mod.php";
include_once  S_ROOT . "source/export/index.inc.php";
$Export = new Export();
$Export->view();
$Export->cache();