<?php /* Smarty version 3.0rc1, created on 2018-05-25 23:24:32
         compiled from "templates/chama\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:306685b088d20cce368-05629431%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0b7234840e9891d3bea076e69d3fa218054dc91c' => 
    array (
      0 => 'templates/chama\\index.tpl',
      1 => 1527287071,
    ),
  ),
  'nocache_hash' => '306685b088d20cce368-05629431',
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
/templates/chama/images/Refresh.css" type="text/css" />
      <?php echo $_smarty_tpl->getVariable('head')->value;?>

      <title><?php echo $_smarty_tpl->getVariable('title')->value;?>
</title>
   </head>
   <body>
      <div id="content">
         <div id="branding">
            <div class="logo">
               <img src="<?php echo $_smarty_tpl->getVariable('path')->value;?>
/templates/chama/images/branding_logo.png">
            </div>
            <div class="menu">
               <ul>
                  <li><a href="$">Home</a></li>
                  <li><a href="$">Comunidade</a></li>
                  <li><a href="$">Forum</a></li>
                  <li><a href="$">Shop</a></li>
               </ul>
            </div>
            <div class="login">
               <li><a style="color:#74d7ff"href="$">Login</a>or<a style="color:red"href="$">Register</a></li>
            </div>
         </div>
         <div id="main">
            <?php echo $_smarty_tpl->getVariable('main')->value;?>

         </div>
         <div id="right_menu">
           <div class="login_box">
             Login
           </div>
           <div class="login_content">
             <center>
             <input onfocus="javascript:this.value=''" type="text" class="input" name="account" value="account"><br>
             <input onfocus="javascript:this.value=''" type="text" class="input" name="password" value="password">
             <li><a href="$">forgot password</a></li>
             <li><a href="$">login</a></li>
             <li><a href="$">register</a></li>
           </center>
           </div>
            <div class="community">
               Community
            </div>
            <div class="community_links">
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
      </div>
   </body>
</html>
