<?php
session_start();
define('ABSPATH', $_SERVER['DOCUMENT_ROOT'].'/');
require_once(ABSPATH."files/conf/base.php");
if(!$_SESSION["username"] || !($_COOKIE["user"] == $_SESSION["username"])) {
	require_once(ABSPATH."files/library/logout.php");
}

$key = hash("SHA256",time()."as54654sdf54dffg3ad98sd2f");
$msg = "";

if($_POST["key"] == $_SESSION["key"]) {
  $postData = new postData();
  $postData->regUnit();
  $msg = "<span>「".$_POST["code"]." ".$_POST["content"]."」</span>の単価登録が完了しました！";
  unset($_SESSION['key']);
}
if(isset($_POST["key"]) && isset($_SESSION["key"]) && $_POST["key"] !== $_SESSION["key"] ) {
  header('location: cost.php');
}

$_SESSION["key"] = $key;
$load = new loadDB();
$user = $load->getUser($_SESSION["username"]);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ja" lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>単価設定 | 見積りライブラリー</title>
<meta name="robots" content="all" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<link href="files/css/common/base.css" media="all" rel="stylesheet" />
<link href="files/css/page.css" media="all" rel="stylesheet" />
<link href="files/css/common/exvalidation.css" media="all" rel="stylesheet" />
</head>

<?php $id = $_GET["p"]; ?>
<body class="noList isForm isCost" id="page">
<div id="all">
  <?php require_once(ABSPATH."files/display/common/header.php"); ?>
  
  <div id="contents">
    <?php require_once(ABSPATH."files/display/common/search.php"); ?>
    <div class="box">
      <div class="title">
        <h1>単価設定</h1>
        <div class="radbtn trigger" id="reg"><a href="#">新規登録</a></div>
      </div>
      <?php if($msg): ?>
      <p class="msg"><?=$msg?></p>
      <?php endif; ?>
      <div class="formBox regUnit">
        <form action="" method="post" class="accBox" id="regist">
          <div class="form"><input type="text" value="" name="code" class="chkrequired" id="code" placeholder="単価コード"></div>
          <div class="form"><input type="text" value="" name="content" class="chkrequired" id="content" placeholder="作業名"></div>
          <div class="form"><input type="number" value="" name="cost" class="chkrequired" id="cost" placeholder="原価"></div>
          <div class="form"><input type="number" value="" name="sales" class="chkrequired" id="sales" placeholder="売価"></div>
          <div class="radbtn"><input type="submit" class="submit" value="登録"></div>
          <input type="hidden" name="key" value="<?php echo $key ?>">
        </form>
      </div>

      <div class="listname" id="names">
        <ul>
          <li class="edit"></li>
          <li class="client">単価コード</li>
          <li class="works">作業名</li>
          <li class="cost">原価</li>
          <li class="sales">売価</li>
        </ul>
      </div>
      <?php
        $load   = new loadDB();
        // $client = $load->getClient();
        $num = 10;
        for($i = $num - 1; $i >= 0; $i--) {
      ?>
      <div class="list">
        <div class="names">
          <p class="radbtn editbtn"><a href="/edit_client.php">編集</a></p>
          <p class="client">C-A</p>
          <p class="content">コーディングLV.A</p>
          <p class="cost">22,500</p>
          <p class="sales">30,000</p>
        </div>
      </div>
      <?php } ?>
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