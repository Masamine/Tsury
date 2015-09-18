<?php
session_start();
define('ABSPATH', $_SERVER['DOCUMENT_ROOT'].'/');
require_once(ABSPATH."files/conf/base.php");
if(!$_SESSION["username"] || !($_COOKIE["user"] == $_SESSION["username"])) {
	require_once(ABSPATH."files/library/logout.php");
}

if(isset($_POST["client"])) {
  $postData = new postData();
  $postData->regWorks();
  header('location: reg_works.php');
} else {
  $load = new loadDB();
  $user = $load->getUser($_SESSION["username"]);
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ja" lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>新規案件登録 | Tsury〈ツリー〉</title>
<meta name="robots" content="all" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<link href="files/css/common/base.css" media="all" rel="stylesheet" />
<link href="files/css/page.css" media="all" rel="stylesheet" />
<link href="files/css/reg_works.css" media="all" rel="stylesheet" />
<link href="files/css/common/exvalidation.css" media="all" rel="stylesheet" />
</head>
<body id="page">
<div id="all">
  <?php require_once(ABSPATH."files/display/common/header.php"); ?>
  <div id="contents">
    <?php require_once(ABSPATH."files/display/common/search.php"); ?>
    <div class="box">
      <div class="title">
        <h1>新規案件登録</h1>
      </div>
      <div class="inner">
        <form action="" method="post" class="accBox">
          <div class="form">
          	<div class="select">
              <input type="text" name="client" id="client" placeholder="クライアント名" value="" class="input">
              <span class="input">▼</span>
              <ul>
                <li>Reset</li>
                <li>Web</li>
                <li>Design</li>
                <li>Edit</li>
                <li>DTP</li>
              </ul>
            </div>
          </div>
          <div class="form"><input type="text" value="" name="client_staff" id="client_staff" placeholder="先方担当者"></div>
          <div class="form"><input type="text" value="" name="works" id="works" placeholder="案件名"></div>
          <div class="radbtn"><input type="submit" value="登録"></div>
        </form>
      </div>
    </div>
  </div>
  
  <?php require_once(ABSPATH."files/display/common/side.php"); ?>
  <footer>
    <p><?php echo $_SERVER['SERVER_NAME'].':'.$_SERVER['SERVER_PORT']; ?></p>
  </footer>
</div>
<script type="text/javascript" src="files/js/jquery.js"></script>
<script type="text/javascript" src="files/js/jsSet.js"></script>
</body>
</html>