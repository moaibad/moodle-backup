<?php

require_once('../config.php');

$url_logout = $CFG->wwwroot . '/login/logout.php?sesskey=' . sesskey();

header("Location: $url_logout");
exit; // Penting untuk menghentikan eksekusi script setelah redirect
?>
