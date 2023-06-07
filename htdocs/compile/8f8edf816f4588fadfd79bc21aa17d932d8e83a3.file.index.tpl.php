<?php /* Smarty version 3.0rc1, created on 2018-06-02 17:12:31
         compiled from "templates/ruby\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:150375b12c1ef340a00-96102059%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8f8edf816f4588fadfd79bc21aa17d932d8e83a3' => 
    array (
      0 => 'templates/ruby\\index.tpl',
      1 => 1527955948,
    ),
  ),
  'nocache_hash' => '150375b12c1ef340a00-96102059',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <meta name="Description" content="Information architecture, Web Design, Web Standards." />
  <meta name="Keywords" content="your, keywords" />
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
  <meta name="Distribution" content="Global" />
  <meta name="author" content="Unknown" />
  <meta name="Robots" content="index,follow" />
  <link rel="stylesheet" href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/ruby/images/Refresh.css" type="text/css" />
  <?php echo $_smarty_tpl->getVariable('head')->value;?>

  <title><?php echo $_smarty_tpl->getVariable('title')->value;?>
</title>
</head>
<body>
  <header id="header">
    <div class="logo">
      <img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/ruby/images/logo.png">
    </div>
    <div class="buttons_main">
      <button class="btn_register"><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/account/create" class="register">register</a></button>
      <button class="btn_download"><a href="$" class="download">download</a></button>
    </div>
  </header>
  <div id="cloud">
  </div>

  <div id="content">

    <div class="rightMenu">
      <div class="login">
        <div class="menu_title">
          <?php if ($_smarty_tpl->getVariable('logged')->value==0){?>
          Login
          <?php }else{ ?>
          Account
          <?php }?>
        </div>
        <div class="menu_content_login">
          <?php if ($_smarty_tpl->getVariable('logged')->value==0){?>
          <form action="http://localhost/index.php/account/login.ide" method="post">
            Account:<br>
            <input type="user" name="name" class="form-control" placeholder="Conta" aria-describedby="basic-addon1">
            <br>
            Password:<br>
            <input type="password" name="pass" class="form-control inputpoke" placeholder="Senha" aria-describedby="basic-addon1">
            <br><br>
            <button type="submit" name="loginButton" class="send_btn">Entrar</button>
          </form>
          <?php }else{ ?>
          <ul>
            <li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/account">Account</a></li>
            <li><a href="http://localhost//index.php/character/create_character">Create Character</a></li>
            <li><a href="http://localhost//index.php/account/logout">Logout</a></li>
          </ul>
          <?php }?>
        </div>
      </div>
      <div class="menu_comm">
        <div class="menu_title">
          Community
        </div>
        <div class="menu_content_comm"
        ul>
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
      </div>
      <div class="menu_comm">
        <div class="menu_title">
          Info
        </div>
        <div class="menu_content_comm"
        <ul>
          <li><a href="$">Home</a></li>
          <li><a href="$">Home</a></li>
          <li><a href="$">Home</a></li>
          <li><a href="$">Home</a></li>
          <li><a href="$">Home</a></li>
          <li><a href="$">Home</a></li>
        </ul>
      </div>
      </div>
    </div>
      <?php echo $_smarty_tpl->getVariable('main')->value;?>

    </div>
  </div>
</body>
</html>
