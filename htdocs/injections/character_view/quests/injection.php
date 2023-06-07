<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
$characterPageQuests = array();
/* A list of quests for character/view page. It will be listed on the page as a table to show acomplished missions.
Array contains array of quests which includes STORAGE ID, STORAGE VALUE (Required to finish quest) and NAME 
To create new quest copy line accross and change values.
*/
$player = $GLOBALS['player'];
/* Eg. $characterPageQuests[] = array('storage'=>5000, 'value'=>1, 'name'=>'Demon Helmet Quest'); */
$characterPageQuests[] = array('storage'=>3600, 'value'=>1, 'name'=>'Shiny Box Quest');
$characterPageQuests[] = array('storage'=>3609, 'value'=>1, 'name'=>'Flame Quest');
$characterPageQuests[] = array('storage'=>17007, 'value'=>1, 'name'=>'Special Stone Quest');
$characterPageQuests[] = array('storage'=>53434, 'value'=>1, 'name'=>'Elemental Quest');
$characterPageQuests[] = array('storage'=>3737, 'value'=>1, 'name'=>'Golden Quest');
$characterPageQuests[] = array('storage'=>53430, 'value'=>1, 'name'=>'Mega Box Quest');
$characterPageQuests[] = array('storage'=>3601, 'value'=>1, 'name'=>'Mag Stone Quest');
$characterPageQuests[] = array('storage'=>3518, 'value'=>1, 'name'=>'Shiny Abra Quest');
$characterPageQuests[] = array('storage'=>53432, 'value'=>1, 'name'=>'Valleys Quest');
$characterPageQuests[] = array('storage'=>53429, 'value'=>1, 'name'=>'Tds Quest');
$characterPageQuests[] = array('storage'=>3511, 'value'=>1, 'name'=>'Tds Quest 2');
$characterPageQuests[] = array('storage'=>3507, 'value'=>1, 'name'=>'Enigma Stones Quest');
$characterPageQuests[] = array('storage'=>54429, 'value'=>1, 'name'=>'Enigma Stones Quest 2');
$characterPageQuests[] = array('storage'=>3527, 'value'=>1, 'name'=>'Bug And Venom Quest');
$characterPageQuests[] = array('storage'=>3538, 'value'=>1, 'name'=>'Cerulean Quest');
$characterPageQuests[] = array('storage'=>53435, 'value'=>1, 'name'=>'Coccon Stone');
$characterPageQuests[] = array('storage'=>7621, 'value'=>1, 'name'=>'Darkness Stone');
$characterPageQuests[] = array('storage'=>3506, 'value'=>1, 'name'=>'Darkness Stone 2');
$characterPageQuests[] = array('storage'=>3527, 'value'=>1, 'name'=>'Fire and Metal stones Quest');
$characterPageQuests[] = array('storage'=>3802, 'value'=>1, 'name'=>'Fire Stone Quest');
$characterPageQuests[] = array('storage'=>3504, 'value'=>1, 'name'=>'Fire Stone Quest 2');
$characterPageQuests[] = array('storage'=>3517, 'value'=>1, 'name'=>'Heart Quest 2');
$characterPageQuests[] = array('storage'=>8231, 'value'=>1, 'name'=>'Ice and Ancient Stone Quest');
$characterPageQuests[] = array('storage'=>3516, 'value'=>1, 'name'=>'Ice Quest');
$characterPageQuests[] = array('storage'=>10920, 'value'=>1, 'name'=>'Master Ball Quest');
$characterPageQuests[] = array('storage'=>3628, 'value'=>1, 'name'=>'Punch Stone Quest');
$characterPageQuests[] = array('storage'=>3512, 'value'=>1, 'name'=>'Rock Stone Quest');
$characterPageQuests[] = array('storage'=>3515, 'value'=>1, 'name'=>'Venom Stone Quest');

$characterPageQuests[] = array('storage'=>3589, 'value'=>1, 'name'=>'Outland Heart Quest');
$characterPageQuests[] = array('storage'=>3540, 'value'=>1, 'name'=>'Outland Ice Quest');
$characterPageQuests[] = array('storage'=>3591, 'value'=>1, 'name'=>'Outland Leaf Quest');
$characterPageQuests[] = array('storage'=>3541, 'value'=>1, 'name'=>'Outland Lutador Quest');
$characterPageQuests[] = array('storage'=>3588, 'value'=>1, 'name'=>'Outland Poison Quest');
$characterPageQuests[] = array('storage'=>3590, 'value'=>1, 'name'=>'Outland Rock Quest');
$characterPageQuests[] = array('storage'=>3592, 'value'=>1, 'name'=>'Outland Thunder Quest');
$characterPageQuests[] = array('storage'=>3593, 'value'=>1, 'name'=>'Outland Water Quest');
$characterPageQuests[] = array('storage'=>3531, 'value'=>1, 'name'=>'Outland Coccon Quest');
$characterPageQuests[] = array('storage'=>3535, 'value'=>1, 'name'=>'Outland Dark Quest');
$characterPageQuests[] = array('storage'=>3539, 'value'=>1, 'name'=>'Outland Earth Quest');
$characterPageQuests[] = array('storage'=>3594, 'value'=>1, 'name'=>'Outland Enigma Quest');
$characterPageQuests[] = array('storage'=>3587, 'value'=>1, 'name'=>'Outland Fire Quest');
$characterPageQuests[] = array('storage'=>55700, 'value'=>1, 'name'=>'Articuno Quest');




 if(count($characterPageQuests) != 0) {
		echo "<div class='bar'>Quests</div>";
		echo "<table width='100%'>";
		echo "<tr><td width='90%'><center><b>Quest Name</b></center></td><td><b><center>Status</center></b></td></tr>";
		$SQL = POT::getInstance()->getDBHandle();
		foreach($characterPageQuests as $value) {
			$quest = $SQL->query("SELECT `value` FROM `player_storage` WHERE `player_id` = ".$player->getId()." AND `key` = '".$value['storage']."' AND `value` = '".$value['value']."'")->fetch();
			$status = ($quest) ? "true" : "false";
			echo "<tr><td width='90%'><center>".$value['name']."</center></td><td><center><img src='../../../public/images/$status.gif'></center></td></tr>";
		}
		echo "</table>";
	}
?>