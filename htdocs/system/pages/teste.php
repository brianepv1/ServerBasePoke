<?php 
echo "<tr><td width='5%'><b><center>*</center></b></td><td width='40%'><center><b>Name</b></center></td><td width='5%'><center><b>Skill</b></center></td></tr>";
  foreach($players as $player) {
   if(in_array($player['name'], $config['newchar_vocations'][0])) continue;
   echo '<tr><td width="5%" align="center">'.$i.'</center></td><td width="40%" align="center"><a href="'.WEBSITE.'/index.php/character/view/'.$player['name'].'" class="'. ($player['online'] ? 'green' : 'red') .'">'.$player['name'].'</a></td><td width="5%" align="center">'.$player['value'].'</td></tr>';
   $i++;
?>