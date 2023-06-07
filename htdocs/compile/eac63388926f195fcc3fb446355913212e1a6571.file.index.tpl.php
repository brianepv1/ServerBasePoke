<?php /* Smarty version 3.0rc1, created on 2018-08-24 05:15:12
         compiled from "templates/pxg\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:78145b7f86509b0101-97395664%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'eac63388926f195fcc3fb446355913212e1a6571' => 
    array (
      0 => 'templates/pxg\\index.tpl',
      1 => 1535084108,
    ),
  ),
  'nocache_hash' => '78145b7f86509b0101-97395664',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<html>
<head>
<link rel="stylesheet" href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/pxg/css/modern.css" type="text/css"/>
<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Armata" rel="stylesheet">
<link rel="shortcut icon" href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/pxg/favicon.ico" type="image/x-icon">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title><?php echo $_smarty_tpl->getVariable('title')->value;?>
</title>
</head>
<body>
<div id="nav">
    <ul>
			<li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
">Home</a></li>
			<?php if ($_smarty_tpl->getVariable('logged')->value==1){?>
			<?php }else{ ?>
				<li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/account/create">Register</a></li>
				<li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/account/login">Login</a></li>
			<?php }?>
			<li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/p/v/downloads"><i class="fas fa-download"></i> Download</a></li>
			<li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/forum">Forum</a></li>
			<li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/p/v/gallery">Galeria</a></li>
			<li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/highscores">Ranking</a></li>
			<li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/p/v/support">Suporte</a></li>
    </ul>
</div>
<?php if ($_smarty_tpl->getVariable('logged')->value==1){?>
<!-- <div class="dropdown">
<button class="dropbtn"><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/suporte"><i class="fas fa-user-circle"></i> Account</a></button>
<div class="dropdown-content">
<a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/account"><i class="fas fa-user"></i> Account</a>
<a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/character/create_character"><i class="fas fa-user-plus"></i> Novo Treinador</a>
<a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/account/logout"><i class="fas fa-sign-out-alt"></i> Sair</a>
</div>
</div>
<?php }?>
-->
<div id="footer">
  Template by <a href="https://www.xtibia.com/forum/profile/361770-bennyyw/">Benny</a>
</div>
</body>
</html>
