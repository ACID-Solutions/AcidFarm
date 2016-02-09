<?php
	$ph = false; 	//Placeholders or Labels
?>

<section  id="contact_content">
	<header>
		<h1 class="block_content_title"><a href="<?php echo Route::buildUrl('contact'); ?>"><?php echo AcidRouter::getName('contact'); ?></a></h1>
	</header>
<section >
	<div id="contact_left" class="col-md-6">
		<div class="clear"></div>

		<div id="contact_inputs" class="contact_block">

			<h2><?php echo Acid::trad('contact_form_please'); ?></h2>

			<div class="input row" >
				<div class="label"><label for="input_firstname"><?php echo Acid::trad('contact_form_firstname'); ?></label></div>
				<input	id="input_firstname"
					    <?php if ($ph) {?>placeholder="<?php echo Acid::trad('contact_form_firstname'); ?>"<?php }  ?>
			   			type="text" name="firstname" value="<?php echo Contact::getSession('firstname'); ?>" />
			</div>
			<div class="input row" >
				<div class="label"><label for="input_name"><?php echo Acid::trad('contact_form_lastname'); ?></label></div>
				<input id="input_name"
					   <?php if ($ph) {?>placeholder="<?php echo Acid::trad('contact_form_lastname'); ?>"<?php }  ?>
					   type="text" name="lastname" value="<?php echo Contact::getSession('lastname'); ?>" />
			</div>
			<div class="input row" >
				<div class="label"><label for="input_address"><?php echo Acid::trad('contact_form_address'); ?></label></div>
				<input id="input_address"
					   <?php if ($ph) {?>placeholder="<?php echo Acid::trad('contact_form_address'); ?>"<?php }  ?>
					   type="text" name="address" value="<?php echo Contact::getSession('address'); ?>" />
			</div>
			<div class="input row" >
				<div class="label"><label for="input_tel"><?php echo Acid::trad('contact_form_phone'); ?></label></div>
				<input id="input_tel"
					   <?php if ($ph) {?>placeholder="<?php echo Acid::trad('contact_form_phone'); ?>"<?php }  ?>
					   type="text" name="phone" value="<?php echo Contact::getSession('phone'); ?>" />
			</div>
			<div class="input row" >
				<div class="label"><label for="input_mail"><?php echo Acid::trad('contact_form_email'); ?></label></div>
				<input id="input_mail"
					   <?php if ($ph) {?>placeholder="<?php echo Acid::trad('contact_form_email'); ?>"<?php }  ?>
					   type="text" name="email" value="<?php echo Contact::getSession('email'); ?>" />
			</div>
			<div class="input row" >
				<div class="label"><label for="input_mess"><?php echo Acid::trad('contact_form_message'); ?></label></div>
				<textarea id="input_mess"
						  <?php if ($ph) {?>placeholder="<?php echo Acid::trad('contact_form_message'); ?>"<?php }  ?>
						  name="message" cols="30" rows="2" ><?php echo Contact::getSession('message'); ?></textarea>
			</div>

			<div class="clear"></div>

			<div class="row">
				<?php if (Conf::get('contact:shield')) { ?>
				<noscript><div style="color:red;"><?php echo Acid::trad('contact_please_enable_javascript'); ?></div></noscript>
				<?php } ?>
				<input class="btn" id="contact_form_submit" type="submit" value="Envoyer" 	/>
			</div>

		</div>



	</div>

	<div id="contact_right"  class="col-md-6">

		<h2 class="contact_title"><?php echo Acid::trad('contact_page_map'); ?></h2>

		<div class="contact_block">
			<div id="block_gmap">

			</div>
		</div>


		<h2 class="contact_title"><?php echo Acid::trad('contact_page_coords'); ?></h2>
		<div id="contact_coord" class="contact_block" itemscope itemtype="http://schema.org/LocalBusiness">
			<div class="contact_div">

				<meta itemprop="name" content="<?php echo Acid::get('site:name'); ?>">

				<?php /*
				<div class="info_contact">
					<?php echo Acid::get('site:name'); ?>
				</div>
				*/ ?>

				<?php if ($g['site_config']->getConf('contact')) {?>
				<div class="info_contact">
					<div><span class="strong"><?php echo $g['site_config']->hscConf('contact'); ?></span></div>
				</div>
				<?php } ?>

				<?php if ($g['site_config']->getConf('address') || $g['site_config']->getConf('cp') || $g['site_config']->getConf('city')) {?>
				<div class="info_contact" itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
					<div itemprop="streetAddress"><span class="strong"><?php echo $g['site_config']->hscConf('address'); ?></span></div>
					<div itemprop="addressLocality"><span class="strong"><?php echo $g['site_config']->hscConf('cp'); ?> <?php echo $g['site_config']->hscConf('city'); ?></span></div>
				</div>
				<?php } ?>

				<?php if ($g['site_config']->getConf('phone') || $g['site_config']->getConf('fax')) {?>
				<div class="info_contact">

					<?php if ($g['site_config']->getConf('phone')) {?>
					<div itemprop="telephone">Tél. <span class="strong"><?php echo $g['site_config']->hscConf('phone'); ?></span></div>
					<?php } ?>

					<?php if ($g['site_config']->getConf('fax')) {?>
					<div>Fax <span class="strong"><?php echo $g['site_config']->hscConf('fax'); ?></span></div>
					<?php } ?>

				</div>
				<?php } ?>

				<?php if ($g['site_config']->getConf('email') || $g['site_config']->getConf('website')) {?>
				<div class="info_contact">

					<?php if ($g['site_config']->getConf('email')) {?>
					<div>
						<span class="strong">
						Email :
						<a href="mailto:<?php echo $g['site_config']->hscConf('email'); ?>">
						<?php echo $g['site_config']->hscConf('email'); ?>
						</a>
						</span>
					</div>
					<?php } ?>

					<?php if ($g['site_config']->getConf('website')) {?>
					<div>
						<span class="strong">
							Website :
							<a href="<?php echo $g['site_config']->hscConf('website'); ?>">
							<?php echo $g['site_config']->hscConf('website'); ?>
							</a>
						</span>
					</div>
					<?php } ?>

				</div>
				<?php } ?>

			</div>
		</div>

	<div class="clear"></div>
</div>

</section>

<script type="text/javascript">
<!--

<?php if ($ph) { ?>
	$('body:not(.nav-old) #contact_content .label').hide();
<?php }  ?>

<?php if (Conf::get('contact:shield')) { ?>
$().ready( function() {
	<?php if (Conf::get('contact:shield_time')) { ?>
		setTimeout(function() {
	<?php }  ?>
			$('#contact_form').append('<input type="hidden" name="<?php echo Conf::get('contact:shield_key'); ?>" value="<?php echo Conf::get('contact:shield_val'); ?>"  />');
	<?php if (Conf::get('contact:shield_time')) { ?>
		}, <?php echo Conf::get('contact:shield_time'); ?>  );
	<?php }  ?>
});
<?php }?>
-->
</script>

<?php echo AcidGMap::apiCall(); ?>

<?php

//Configuration de la Google Map
$style = array(	'featureType' => "all", 'stylers'=> array(array('saturation'=>-100),array('gamma'=> 0.50)));
$address = trim($g['site_config']->hscConf('address') .' '.$g['site_config']->hscConf('cp').' '.$g['site_config']->hscConf('city'));
$coords = trim($g['site_config']->hscConf('coords'));
$zoom = intval($g['site_config']->getConf('zoom')) ? intval($g['site_config']->getConf('zoom')) : 8;

$gmap_config = array(
	//'init_address'=>$address,
	'address'=>$address,
	//'center'=>($coords ? $coords : '0,0'),
	'zoom'=>$zoom,
	'no_inner_content'=>false,
	//'icon'=>$g['acid']['url']['img'].'langs/'.$g['acid']['lang']['current'].'_sel.png',
	//'style'=>$style,
);

if ($coords) {
	$gmap_config['coords'] = $coords;
}else{
	$gmap_config['init_address'] = $address;
}

//Affichage de la Google Map
echo AcidGMap::initMap('block_gmap',$gmap_config);
//echo AcidGMap::initDirection('block_gmap','start','stop',	array('coords'=>'0,0','zoom'=>5, 'no_inner_content'=>false));

?>
