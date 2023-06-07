<?php /* Smarty version 3.0rc1, created on 2018-05-21 00:14:24
         compiled from "templates/default\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:206145b020150526087-49612142%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b9be817a5a300ba6ffac35944909d95e98be7a8e' => 
    array (
      0 => 'templates/default\\index.tpl',
      1 => 1526858063,
    ),
  ),
  'nocache_hash' => '206145b020150526087-49612142',
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
/templates/default/images/Refresh.css" type="text/css" />
      <?php echo $_smarty_tpl->getVariable('head')->value;?>

      <title><?php echo $_smarty_tpl->getVariable('title')->value;?>
</title>
   </head>
   <body>
      <div id="header">
         <div class="branding">
            <img class ="logo" src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/default/images/logo.png"/>
            <div class="menu">
               <ul>
                  <li><a href="$">News</a></li>
                  <li><a href="$">Account</a></li>
                  <li><a href="$">Support</a></li>
                  <li><a href="$">Download</a></li>
                  <li><a href="$">Community</a></li>
                  <li><a href="$">Shop</a></li>
               </ul>
            </div>
            <div class="login">
               <li><a href="$">Login</a></li>
            </div>
            <div class="register">
               <li><a href="$">Register</a></li>
            </div>
         </div>
         </div>
      <div id="header_main">
        <div class="logo">
          <a href="$"><img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/default/images/main_logo.png"/></a>
        </div>
      </div>
      <div id="content">
        <?php echo $_smarty_tpl->getVariable('main')->value;?>

      </div>
   </body>
</html>
