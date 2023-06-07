<fieldset>
	<legend style="text-align: center;">
		<img src="https://cdn.custom-cursor.com/packs/63/pack2282.png" width="20" height="20" border="0" align="center"> "Wikipedia PokeToxic".
	</legend>



	<div class="helper-tab__container">
		<div class="helper-tab__item js-helper-tab-open">
			<h2>Pokemon Autoloot</h2>
			<div class="helper-tab__content" >
				<h3>Autoloot</h3>
				<h4>Comamands</h4>
				<ul>
					<li> 
						<span>[Information about this command: You can see your item list for the autoloot]</span>
						<p>/aloot check</p>
					</li>
					<li>
						<span>[Example: /aloot add:water stone or /aloot add:11542]</span> 
						<p>/aloot add:item name or item id</p>
					</li>
					<li>
						<span>[Example: /aloot remove:water stone or /aloot remove:11542]</span>
						<p>/aloot remove:item name or item id</p>
					</li>
					<li>
						<span>[Information: Clear ALL items in your autoloot, be careful]</span> 
						<p>/aloot clear</p>	
					</li>
				</ul>
			</div>
		</div>

		<div class="js-helper-tab-open helper-tab__item">
			<h2>Outland</h2>
			<div class="helper-tab__content">
				<h3>Outland Location</h3>
			</div>
		</div>

		<div class="js-helper-tab-open helper-tab__item">
			<h2>Helds Information</h2>
			<div class="helper-tab__content">
				<h3>Helds, Held Machine, Held Fusion, Held Converter </h3>

				<h4>Tokens</h4>
				<p>
					Currently we have 3 types of tokens, all this tokens are required for trade in Helds Machines that give to you a random held.
				</p>
				<ul>
					<li> Mighty Token </li>
					<li> Devoted Token </li>
					<li> Honored </li>
				</ul>

				<h4>Where find tokens?</h4>
				<p>
					All 3 tokens are looted by different monster or task, there's a few monster listed below. Normally you can find this monsters in outland.
				</p>
				<ul>
					<li> 
						<p>Brave Abomasnow</p> 
					</li>
					<li> 
						<p> Brave Tiranytar</p> 
					</li>
					<li> 
						<p></p> 
					</li>
				</ul>

				<h4>Held Machine</h4>
				<h4>Held Fusion</h4>
				<h4>Held Converter</h4>
			</div>
		</div>
		<div class="js-helper-tab-open helper-tab__item">
			<h2>Quest!</h2>
			<div class="helper-tab__content">
				<h3>About quest</h3>

				<h4>Normal quest</h4>
				<h4> Quest with requiremts</h4>
			</div>
		</div>
	</div>

</fieldset>

<script type="text/javascript">

window.onload = function() {
	var openTab = $(".js-helper-tab-open > h2");
	console.log(openTab);
	openTab.click(function(){
		console.log("Di click");
		$(this).closest('.js-helper-tab-open').toggleClass("isActive");

		if($(this).closest('.js-helper-tab-open').hasClass("isActive")){
			$(this).closest('.js-helper-tab-open').find($(".helper-tab__content")).show(250);
		}else{
			$(this).closest('.js-helper-tab-open').find($(".helper-tab__content")).fadeOut();
		}
	});

	
}
</script>