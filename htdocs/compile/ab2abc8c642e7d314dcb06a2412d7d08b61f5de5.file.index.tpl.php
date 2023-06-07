<?php /* Smarty version 3.0rc1, created on 2018-08-07 19:30:37
         compiled from "templates/pokemon\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:107585b69e54dc2d5b7-94190529%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ab2abc8c642e7d314dcb06a2412d7d08b61f5de5' => 
    array (
      0 => 'templates/pokemon\\index.tpl',
      1 => 1533666636,
    ),
  ),
  'nocache_hash' => '107585b69e54dc2d5b7-94190529',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<html>
<head>
<link rel="stylesheet" href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/pokemon/images/modern.css" type="text/css" />
<?php echo $_smarty_tpl->getVariable('head')->value;?>

<title><?php echo $_smarty_tpl->getVariable('title')->value;?>
</title>
<link rel="icon" type="image/x-icon" href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/pokemon/favicon.ico" />
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
</head>
<body>
	<header id="header">
		<div class="logo">
			<a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
"><img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/pokemon/images/logo.png"></img></a>
		</div>
		<div class="text">
			<p>Join us in our <br>Adventure</p>
		</div>
		<a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/account/create.ide"><button class="header_register">REGISTER</button></a>
		<a href="download_link"><button class="header_download">DOWNLOAD</button>
	</header>
	<main>
	<div id="content">
	<div id="top_icons">
<div class="container">
  <div class="row">
    <div class="col-sm-3">
      <p><a href="$"><img class="face"src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/pokemon/images/face.png"</></p>
    </div>
    <div class="col-sm-3">
      <p><a href="$"><img class="discord" src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/pokemon/images/discord.png"</></p>
    </div>
	<div class="col-sm-3">
      <p><a href="$"><img class="forum" src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/pokemon/images/forum.png"</></p>
    </div>  
	<div class="col-sm-3">
      <p><a href="$"><img class="shop" src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/pokemon/images/shop.png"></a></p>
    </div>
  </div>
</div>
</div>
<div class="container">
	<div id="slide">
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/pokemon/images/slide1.png" alt="Los Angeles">
    </div>

    <div class="item">
      <img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/pokemon/images/slide2.png" alt="Chicago">
    </div>

    <div class="item">
      <img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/pokemon/images/slide3.png" alt="New York">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    </div>
	<?php echo $_smarty_tpl->getVariable('main')->value;?>

</div>
<div class="sidebar">
<div class="login">
	<img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/pokemon/images/login_top.png">
	<div class="login_content">
	          <?php if ($_smarty_tpl->getVariable('logged')->value==0){?>
			  <div class="login_form">
		<form action="<?php echo $_smarty_tpl->getVariable('path')->value;?>
index.php/account/login.ide" method="post">
							<input type="user" name="name" class="form-control" placeholder="Conta" aria-describedby="basic-addon1">
							<input type="password" name="pass" class="form-control inputpoke" placeholder="Senha" aria-describedby="basic-addon1">
							<!--<img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/pokemon/images/login-pokes.png"> -->
							<button type="submit" name="loginButton" class="send_btn">Entrar</button><br>
							<a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
index.php/account/lost"><font color="gray">[Recuperar Senha]</font></a>
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
/templates/pokemon/images/com_top.png">
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
<div class="status">
	<img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/pokemon/images/status.png">
	
	<div class="status_content">
	<img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/pokemon/images/status_icon.png">
                   <div class="status_status"> <span class="status">
                    <?php  $_smarty_tpl->tpl_vars['world'] = new Smarty_Variable;
 $_smarty_tpl->tpl_vars['id'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('worlds')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if (count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['world']->key => $_smarty_tpl->tpl_vars['world']->value){
 $_smarty_tpl->tpl_vars['id']->value = $_smarty_tpl->tpl_vars['world']->key;
?>
                        &nbsp; <b>World:</b> <?php echo $_smarty_tpl->getVariable('world')->value;?>
 <br />
                        &nbsp; <b>Status:</b>
                            <?php if ($_smarty_tpl->getVariable('serverOnline')->value[$_smarty_tpl->getVariable('id')->value]){?>
                                <font color='green'>Online</font><br />
                                &nbsp; <b>Uptime:</b> <?php echo $_smarty_tpl->getVariable('serverUptime')->value[$_smarty_tpl->getVariable('id')->value];?>
 <br />
                                &nbsp; <b>Players:</b> <?php echo $_smarty_tpl->getVariable('serverPlayers')->value[$_smarty_tpl->getVariable('id')->value];?>
/<?php echo $_smarty_tpl->getVariable('serverMax')->value[$_smarty_tpl->getVariable('id')->value];?>
<br /><br />

                            <?php }else{ ?>
                                <font color='red'>Offline</font><br />
                            <?php }?>
                    <?php }} ?>
                    </span><br/>
					</div>
	</div>
	
</div>
</div>
	<div id="footer">
	<div class="footer1">
	Lorem Ipsum<br>
	<a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/">Lorem</a><br>
	<a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/">Lorem</a><br>
	<a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/">Lorem</a><br>
	</div>
	<div class="footer2">
	Lorem Ipsum<br>
	<a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/">Lorem</a><br>
	<a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/">Lorem</a><br>
	<a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/">Lorem</a><br>
	</div>
	<div class="footer3">
	Lorem Ipsum<br>
	<a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/">Lorem</a><br>
	<a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/">Lorem</a><br>
	<a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/">Lorem</a><br>
	<?php echo $_smarty_tpl->getVariable('admin')->value;?>

	</div>
	<div class="footer4">
		Hospedado por:<br>
	<a href="https://www.lgvhost.com.br/central/aff.php?aff=810"><img src="https://www.lgvhost.com.br/afiliados/horizontal/horizontallogoblack.png"></a>
	</div>
	<a href="https://www.xtibia.com/forum/profile/361770-bennyyw/"><img class="footer_logo" src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/pokemon/images/footer_logo.png"></a>
	</div>
	</main>
</body>
</html>
