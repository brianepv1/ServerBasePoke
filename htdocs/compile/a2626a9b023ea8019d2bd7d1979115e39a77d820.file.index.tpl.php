<?php /* Smarty version 3.0rc1, created on 2018-08-23 02:46:39
         compiled from "templates/poke\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:119725b7e11ff7a5e59-50920815%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a2626a9b023ea8019d2bd7d1979115e39a77d820' => 
    array (
      0 => 'templates/poke\\index.tpl',
      1 => 1534988796,
    ),
  ),
  'nocache_hash' => '119725b7e11ff7a5e59-50920815',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<html>
<head>
<link rel="stylesheet" href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/poke/css/modern.css" type="text/css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Armata" rel="stylesheet">
<title><?php echo $_smarty_tpl->getVariable('title')->value;?>
</title>
</head>
<body>
  <div id="logo">
    <img src="https://forum.pokexgames.com/images/tf_ideal/misc/logo.png">
  </div>
<header>
<div id="nav">
    <ul>
			<li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
">Home</a></li>
			<?php if ($_smarty_tpl->getVariable('logged')->value==1){?>
				<li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/account">Account</a></li>
			<?php }else{ ?>
				<li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/account/create">Register</a></li>
				<li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/account/login">Login</a></li>
			<?php }?>
			<li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/character/view">Search</a></li>
			<li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/character/online">Online</a></li>
			<li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/guilds">Guilds</a></li>
			<li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/highscores">Highscores</a></li>
			<li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/forum">Forum</a></li>
			<?php if ($_smarty_tpl->getVariable('logged')->value==1){?>
			<li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/bugtracker">Bug Tracker</a></li>
			<?php }?>
    </ul>
</div>
</header>
<main>
<content>
<?php echo $_smarty_tpl->getVariable('main')->value;?>

</content>
<footer>
Page rendered in <b><?php echo $_smarty_tpl->getVariable('renderTime')->value;?>
</b>.<br />
<a href="http://code.google.com/p/modernaac/" target="_blank">Modern AAC</a>, powered by IDE Engine.<br />
Website template by <a href="https://www.xtibia.com/forum/profile/361770-bennyyw/" target="_blank">Benny.</a><br />
<?php echo $_smarty_tpl->getVariable('admin')->value;?>

</footer>
</main>
</body>
</html>
