<?php /* Smarty version 3.0rc1, created on 2018-08-21 19:49:22
         compiled from "templates/txu\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:277365b7c5eb2a435c3-14488992%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'db94f9cf46da23172a1e1699ff225068b504163a' => 
    array (
      0 => 'templates/txu\\index.tpl',
      1 => 1534868076,
    ),
  ),
  'nocache_hash' => '277365b7c5eb2a435c3-14488992',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php
// Start the session
session_start();
?>
<html>
<head>
<link rel="stylesheet" href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/txu/images/modern.css" type="text/css" />
<?php echo $_smarty_tpl->getVariable('head')->value;?>

<title><?php echo $_smarty_tpl->getVariable('title')->value;?>
</title>
<link rel="icon" type="image/x-icon" href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
templates/pokemon/favicon.ico" />
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Armata" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">


</head>
<body>
	<header id="header">
		<div class="logo">
			<a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
"><img width="50%" src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/txu/images/branding_logo.png"></img></a>
		</div>
		<div class="welcome">
		<?php if ($_smarty_tpl->getVariable('logged')->value==0){?>
		Hello, <a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/account/login">login </a>or <a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/account/create"><span style="color: #d65050;"> register</span></a>
		<?php }else{ ?>
			<div class="dropdown"><button class="dropbtn">Hello, <span style="color: #d65050;"><?php echo "".ucfirst($_SESSION['nickname'])."</a>"; ?> <i class="fa fa-caret-down"></i></button></span>
			<div class="dropdown-content">
      <a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/account">Account <i class="fas fa-user"></i></a>
      <a href="#">Download <i class="fas fa-download"></i></a>
      <a href="#">Support  <i class="fas fa-question"></i></a>
    </div>
		</div>
		<?php }?>
		</div>
		<div class="nav_bar">
		<ul>
		<li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
">Home</a></li>
		<li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/account">Account</a></li>
		<li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/highscores">Highscores</a></li>
		<li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/guilds">Teams</a></li>
		<li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/forum">Forum</a></li>
		<li><a href="vc decide">Community</a></li>
		<li><a href="link do shop">Shop</a></li>
		<li><a href="link suppport">Support</a></li>
		</ul>
	</div>
	</header>
	<main>
	<div id="content">
	<div id="top_news">
	<img width="70%" src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/txu/images/top_news.png">
	<div class="top_container">
	<h1>DUEL HAS ARRIVED</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc aliquet eros eget tempor ultricies. Donec tempus molestie risus, eget varius ante condimentum pellentesque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc vehicula nibh sed leo finibus pharetra vel nec mauris. In vel libero eget leo dignissim viverra at eget dolor. Nunc at lectus sagittis urna malesuada ultrices. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla dignissim eget nibh id pulvinar. Integer tristique odio turpis, ut consectetur nunc elementum id. Donec id enim at tellus eleifend cursus. In ultricies lobortis magna, sed pharetra augue porta ut.</p>
	</div>
	</div>
	<div id="main_buttons">
		<div class="title_news"style="margin-top:-4.1%;margin-left:-15px; color:white; text-transform:uppercase; font-family:Armata; width: 1320px; height: 30px; border-bottom: 3px solid #974244;; text-align: left; margin-bottom: 30px;">
				</div>
<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <p><a href="$"><img class="map"src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/txu/images/but_map.png"></a></p>
    </div>
    <div class="col-sm-4">
      <p><a href="$"><img class="shop" src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/txu/images/but_shop.png"></a></p>
    </div>
	<div class="col-sm-4">
      <p><a href="$"><img class="download" src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/txu/images/but_download.png"></a></p>
    </div>  
  </div>
</div>
	</div>
	<div class="title_news"style="margin-left:-15px; color:white; text-transform:uppercase; font-family:Armata; width: 1320px; height: 30px; border-bottom: 3px solid #974244;; text-align: left; margin-bottom: 30px;">
				  <span style="font-size: 40px; background-color: #243b46; padding: 0 10px; margin-left: 45px;">
				    Latest <span style="color: #d65050;">News</span>
				  </span>
				</div>
<div class="container">
<?php echo $_smarty_tpl->getVariable('main')->value;?>

</div>
<div class="sidebar">
<div class="login">
	<img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/txu/images/login_top.png">
	<div class="login_content">
	          <?php if ($_smarty_tpl->getVariable('logged')->value==0){?>
			  <div class="login_form">
		<form action="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/account/login.ide" method="post">
							<input type="user" name="name" class="form-control" placeholder="Conta" aria-describedby="basic-addon1">
							<input type="password" name="pass" class="form-control inputpoke" placeholder="Senha" aria-describedby="basic-addon1">
							<!--<img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/txu/images/login-pokes.png"> -->
							<button type="submit" name="loginButton" class="send_btn">Entrar</button><br>
							<a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/account/lost"><font color="gray">[Recuperar Senha]</font></a>
						</form>
						</div>
						<?php }else{ ?>
          <ul>
            <li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/account">Account</a></li>
            <li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/character/create_character">Create Character</a></li>
            <li><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/account/logout">Logout</a></li>
          </ul>
          <?php }?>
	</div>
</div>
<div class="comunnity">
	<img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/txu/images/com_top.png">
	<div class="com_content">
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
</div>
</div>
	<div id="footer">
	<p>Community PokeUnion BRAZIL fan site - Contact: contato(a)pokemonroxy.servegame.com - Pokémon Roxy Online 
Pokémon Copyright © 1995 - 2017 Nintendo/Creatures Inc./GAME FREAK Inc. <br>Pokémon And All Respective Names are Trademarks of Nintendo 1996-2016 <br>PokeUnion is not affiliated with Nintendo, Creatures Inc. and GAME FREAK Inc.<br><a href="https://www.xtibia.com/forum/profile/361770-bennyyw/">Check the Designer ♥</a></p>
	<?php echo $_smarty_tpl->getVariable('admin')->value;?>

	</div>
	</main>
<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(e) {
  if (!e.target.matches('.dropbtn')) {
    var myDropdown = document.getElementById("myDropdown");
      if (myDropdown.classList.contains('show')) {
        myDropdown.classList.remove('show');
      }
  }
}
</script>
</body>
</html>
