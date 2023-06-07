<?php include("public/js/keyboard.php");?>
<link rel="stylesheet" type="text/css" href="<?php echo WEBSITE; ?>/public/css/keyboard.css">
<?php
	error(validation_errors());
	echo "<div class='message'>";
	echo "<div class='content'>";
	echo "<div class='title'>Fazer login da conta</div>";
	echo form_open('account/login');
	?>
	<input type="password" placeholder="Conta" value="<?php echo set_value('name'); ?>" class="keyboardInput" name="name"/><br><br>
	<input  type="password" placeholder="Senha" value="<?php echo set_value('pass'); ?>" class="keyboardInput" name="pass"/><br>
	<label>&nbsp;</label><input class='sub' type="submit" value="Login"/>
	<?php
	echo "</form><br/>";
	echo "<div class='bar'><a href='".WEBSITE."/index.php/account/create'>Criar Conta</a></div>";
	echo "<div class='messageAdd'><a href='".WEBSITE."/index.php/account/lost'>Recuperar Conta</a></div>";
	echo "</div>";
	echo "</div>";

?>
