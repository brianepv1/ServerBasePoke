<div class='errors'> <?php echo error(validation_errors()); ?> </div>
<?php include("public/js/keyboard.php");
global $config;
?>
<script>
	function createAccount() {
		$('.loader').show();
		var form = $('#createAccount').serialize();
		$.ajax({
			url: '<?php echo WEBSITE; ?>/index.php/account/create/1',
			  type: 'post',
			  data: form,
			  success: function(data) {
			  	$('.errors').html(data);
			  	$('.loader').hide();
			  }
		});
	}
</script>
<link rel="stylesheet" type="text/css" href="<?php echo WEBSITE; ?>/public/css/keyboard.css">
<div class='message'>
	<div class='title'>Create an Account</div>
	<div class='content'> <?php echo form_open('account/create', array('id'=>'createAccount')); ?>
		<fieldset>
			<legend ><img src="https://i.imgur.com/ntXqfLG.png" width="20" height="20"> Account Information</legend>
			<div class="table">
				<ul style="width:30%">
					<li class="even">
						<label for="name"><i class="far fa-id-card"></i> Account Number</label>
					</li>
					<li class="odd">
						<label for="nickname"><i class="fas fa-signature"></i> Nickname</label>
					</li>
					<li class="even">
						<label for="email"><i class="fas fa-envelope"></i> E-mail</label>
					</li>
					<li class="odd">
						<label for="password"><i class="fas fa-key"></i> Password</label>
					</li>
					<li class="even">
						<label for="repeat"><i class="fas fa-key"></i> Repeat Password</label>
					</li>
				</ul>
				<ul style="width:70%">
					<li class="even">
						<input type="text" value="<?php echo set_value('name'); ?>" id="name" class="keyboardInput" name="name"/>
					</li>
					<li class="odd">
						<input type='text' name='nickname' id="nickname" value='<?php echo set_value('nickname'); ?>' />
					</li>
					<li class="even">
						<input  type="text" value="<?php echo set_value('email'); ?>" id="email" name="email"/>
					</li>
					<li class="odd">
						<input type="password" class="keyboardInput" id="password" name="password"/>
					</li>
					<li class="even">
						<input type="password" class="keyboardInput" id="repeat" name="repeat"/>
					</li>
				</ul>
			</div>
		</fieldset>
		<fieldset>
			<legend><img src="https://i.imgur.com/cZvjPZx.gif" height="20" width="20"> Character</legend>
			<div class="table">
				<ul style="width:30%">
					<li class="even">
						<label for="character_name"><i class="fas fa-user-circle"></i> Character Name:</label>
					</li>
					<li class="odd">
						<label for="sex"><i class="fas fa-venus-mars"></i> Genre:</label>
					</li>
					<li class="even">
						<label for="vocation"><i class="fas fa-user-tie"></i> Vocation:</label>
					</li>
					<li class="odd">
						<label for="city"><i class="fas fa-map-marker-alt"></i> City:</label>
					</li>
					<li class="even">
						<label for="world"><i class="fas fa-globe-americas"></i> World:</label>
					</li>
				</ul>
				<ul style="width:70%">
					<li class="even">
						<input  type="text" id="character_name" value="<?php echo set_value('character_name'); ?>" name="character_name"/>
					</li>
					<li class="odd">
						<input name="sex" type="radio" id="sex" value="1" checked="checked" />
						male &nbsp;
						<input type="radio" id="sex" name="sex" value="0" />
						female </li>
					<li class="even">
						<select name="vocation" class="keyboardInput" id="vocation">
							<option value="1">Pokemon Trainer</option>
						</select>
					</li>
					<li class="odd">
						<select name="city" id="city">
							<?php 
	foreach($config['cities'] as $city => $name)  
		echo '<option value="'.$city.'">'.$name.'</option>'; ?>
						</select>
					</li>
					<li class="even">
						<?php 
if(sizeof($config['worlds']) > 1) { ?>
						<select name="world" id="world">
							<?php
	foreach($config['worlds'] as $world => $name)  
		echo '<option value="'.$world.'">'.$name.'</option>'; ?>
						</select>
						<?php }else{ ?>
						<input type="hidden" name="world" value="0" />
						<?php echo $config['worlds'][0]; ?>
						<?php } ?>
					</li>
				</ul>
			</div>
		</fieldset>
		<br/>
		<label>&nbsp;</label>
		<input class='sub' type="submit" value="Register"/>
		<?php echo loader(); ?>
		</form>
	</div>	
</div>

