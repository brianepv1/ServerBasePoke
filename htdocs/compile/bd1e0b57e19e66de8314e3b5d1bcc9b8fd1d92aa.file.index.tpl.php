<?php /* Smarty version 3.0rc1, created on 2018-08-22 22:34:11
         compiled from "templates/base\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:220475b7dd6d32765e0-60274746%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'bd1e0b57e19e66de8314e3b5d1bcc9b8fd1d92aa' => 
    array (
      0 => 'templates/base\\index.tpl',
      1 => 1534973648,
    ),
  ),
  'nocache_hash' => '220475b7dd6d32765e0-60274746',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<html>
<head>
<link rel="stylesheet" href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/base/css/modern.css" type="text/css"/>
<title><?php echo $_smarty_tpl->getVariable('title')->value;?>
</title>
</head>
<body>
<main>
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
