<?php
// Configuration
$maxGroupValue = 2;		// Maximum group id, players with higher group id than this won't be shown
$playersShowLimit = 5;	// How much positions should be shown
// -------------
include('config.php');

$ci =& get_instance();
$ci->load->database();

$loadPlayers = $ci->db->query("SELECT `name`, `group_id`, `world_id`, `level`, `vocation`, `online` FROM `players` WHERE `group_id` <= ".$maxGroupValue." ORDER BY `level` DESC LIMIT ".$playersShowLimit."");
?>
<div id="vt_modtopserverplayers">
	<table cellspacing="0" cellpadding="1" border="0" width="100%">
 <tr> 
  <th width='3%' class="black" style="text-align: left; font-weight: bold;">#</td> 
  <th width='12%' class="black" style="text-align: center; font-weight: bold;">Nomes</td> 
  <th width='5%' class="black" style="text-align: center; font-weight: bold;">  Nivel</td> 
 </tr> </br>
    	<?php
		$counter = 1;
		foreach($loadPlayers->result() as $player):
		?>
				<tr class="highlight">
            	<td width="19">
                	<div class="number"><?php echo $counter; ?>.</div>
                </td>
                <td>		
                	<font size="1" color="red"><a href="<?php echo WEBSITE; ?>/index.php/character/view/<?php echo $player->name; ?>"><strong><?php echo $player->online ? "<font color=green>" : "<font color=red>"; ?><?php echo $player->name; ?></strong></a></font><br />
                </td>
                <th class="black" style="text-align: center; font-weight: bold;">
					<?php echo $player->level; ?>
                </td>


            </tr>
        <?php
		$counter++;
		endforeach;
		?>
    </table>
</div>