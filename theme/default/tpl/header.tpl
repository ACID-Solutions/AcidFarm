<div id="header_content">
	<a href="<?php echo Acid::get('url:folder'); ?>">
		<img src="<?php echo Acid::get('url:img'); ?>site/logo.png" alt="<?php echo Acid::get('site:name'); ?>" />
	</a>
	<div id="menu_block"><?php echo Func::getMenu(); ?></div>
</div>

<div id="ariane"><?php echo Func::getAriane(Acid::get('ariane')); ?></div>