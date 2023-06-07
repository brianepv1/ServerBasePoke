<?php /* Smarty version 3.0rc1, created on 2022-10-11 01:28:21
         compiled from "templates/new\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:34986344b8a5b82018-89633914%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1fda8ef362b8e447ac12396aa354bbe80fd289ea' => 
    array (
      0 => 'templates/new\\index.tpl',
      1 => 1665448094,
    ),
  ),
  'nocache_hash' => '34986344b8a5b82018-89633914',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<html>
   <head>
      
      <link rel="stylesheet" href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/css/modern.css" type="text/css"/>
      <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
      <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Armata" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
      <link rel="shortcut icon" href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/favicon.ico" type="image/x-icon">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>

      <title><?php echo $_smarty_tpl->getVariable('title')->value;?>
</title>
   </head>
   <body>
      <div class="mainbody">
      <div class="dex" style="background-image:url('<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/images/dex/oddish.gif')"></div>
      <div id="header">
         <div class="logo">
            <img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/images/new-logo.png">
         </div>
         <div class="navbar" id="navbar">
            <div class="menuNavbar">
               <a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
">
                  <div class="menu1">Principal</div>
               </a>
               <i class="fa fa-adjust" style=" color: #48a6cc; transform: rotate(90deg); "></i>
               <a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/account/create" id="menu2-link">
                  <div class="menu2">Create account</div>
               </a>
               <i class="fa fa-adjust" style=" color: #48a6cc; transform: rotate(90deg); "></i>
               <a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/p/v/downloads">
                  <div class="menu3">Download Game</div>
               </a>
               <hr size="1" class="navbarDivisor">
            </div>
            <div class="navbuttons">
               <a href="https://fb.com/sickerot" target="_blank" alt="Page Facebook">
                  <div class="buttons buttonFacebook">facebook</div>
               </a>
             
            </div>
         </div>
      </div>
      <div class="menu_nav" style="">
         <div id="navigation_button">
            Account
            <div class="icon_menu_title"><img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/images/navigation.png" width="40" height="40" title="Manage Account" alt="Manage Account"></div>
         </div>
         <?php if ($_smarty_tpl->getVariable('logged')->value==1){?>
         <div class="nav_links_logged">
            <a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/account"><img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/images/menuBalliconGreen.png" class="nav_link_icon">Edit password</a>
            <br><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/character/create_character"><img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/images/menuBalliconGreen.png" class="nav_link_icon">Create Character</a>
            <br><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/account/logout" reload="true"><img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new//images/menuBalliconGreen.png" class="nav_link_icon"><i class="fa fa-sign-out"></i>Log Out</a>
            <br>
    </div>
         <?php }else{ ?>
         <div class="nav_links">
         <form action="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/account/login.ide" method="post" class="unlogged submitLoggin">
            <center>
               <input type="hidden" class="backurl" name="backurl" value="">
               <input onfocus="javascript:this.value=''" type="text" class="input loggin_account" name="name" placeholder="account" for="username">
               <input onfocus="javascript:this.value=''" type="password" class="input loggin_account" name="pass" placeholder="password" for="password">
            </center>
            <center>
               <input type="Submit" class="loginbutton" name="Submit" value="Login">
            </center>
         </form>
         <div class="nav_links_green unlogged">
            <a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/account/create"><img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/images/menuBalliconGreen.png" class="nav_link_icon">Crear Cuenta</a>
            <br><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/account/lost"><img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/images/menuBalliconGreen.png" class="nav_link_icon">Recuperar Cuenta</a>
            <br>
         </div>
       </div>
         <?php }?>
         <div id="community_button">
            Comunidad
            <div class="icon_menu_title"><img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/images/community.png" width="40" height="40" title="Community"></div>
         </div>
         <div class="nav_links">
            <div class="nav_links_blue">
               <a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/p/v/learn"><img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/images/menuBalliconBlue.png" class="nav_link_icon">Evoluciones</a>
               <br>
               <a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/p/v/downloads"><img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/images/menuBalliconBlue.png" class="nav_link_icon">Download Game</a>
               <br>
               <a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/p/v/wiki"><img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/images/menuBalliconBlue.png" class="nav_link_icon">Wiki Game</a>
            </div>
            <div class="nav_links_red">
               <br><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/p/v/map"><img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/images/menuBalliconRed.png" class="nav_link_icon">Mapa Pokémon</a>
               <br><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/houses/main"><img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/images/menuBalliconRed.png" class="nav_link_icon">Casas</a>
               <br><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/highscores"><img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/images/menuBalliconRed.png" class="nav_link_icon">Ranking</a>
			   
               <br><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/p/v/deaths"><img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/images/menuBalliconRed.png" class="nav_link_icon">Latest Deaths</a>
               <br><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/character/view"><img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/images/menuBalliconRed.png" class="nav_link_icon">Characters</a>
               <br>
            </div>
            <div class="nav_links_purple">
               <br><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/p/v/rules"><img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/images/menuBalliconPurple.png" class="nav_link_icon">Regras</a>
               <br><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/forum"><img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/images/menuBalliconPurple.png" class="nav_link_icon">Fórum</a>
			   </br><a href="/index.php/p/v/donation"><img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/images/menuBalliconPurple.png" class="nav_link_icon">Como Donar</a>
            <br><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/p/v/pokedonacion"><img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/images/menuBalliconPurple.png" class="nav_link_icon">Pokemon de Donación</a>
               <br><a href="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/p/v/shinys"><img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/images/menuBalliconPurple.png" class="nav_link_icon">Shinys</a>			   
               <br>
            </div>
         </div>
         <div id="search_button">
            Search Player
            <div class="icon_menu_title"><img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/images/search.png" width="40" height="40" title="Search"></div>
         </div>
         <div class="nav_links_search">
            <form action="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/index.php/character/view" method="post">
               <input type="text" id="search" class="keyboardInput searchBar" name="name">
               <input value="Go" style="position: absolute;margin-top: 9px;" type="submit">
            </form>
         </div>
         <div id="toplevel_button">
            Top Level
            <div class="icon_menu_title"><img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/new/images/toplevel.png" width="40" height="40" title="Top Level"></div>
         			&nbsp;&nbsp;<?php include_once ('C:\xampp\htdocs\templates\toplevel.php');?>

		 </div>
      
         <div class="nav_links_highscores">
         </div>           	 

      </div>
      <div class="newscont">
         <center>
            <h1><span style="font-size:40%;">Welcome to <?php echo $_smarty_tpl->getVariable('title')->value;?>
 Online</h1>
         </center>
         </span>
         <?php echo $_smarty_tpl->getVariable('main')->value;?>

         <div class="copyrights">
            Community PokeToxic fan site - Contact: facebook.com/Sickerot - Pokémon Online
            <br><small> Pokémon Copyright © 1995 - 2022 Nintendo/Creatures Inc./GAME FREAK Inc.
            Pokémon And All Respective Names are Trademarks of Nintendo 1996 -2021
            PokeToxic is not affiliated with Nintendo, Creatures Inc. and GAME FREAK Inc.</small>

         </div>
      </div>
   </body>
</html>
