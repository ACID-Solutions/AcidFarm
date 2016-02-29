<div id="footer_flags">
		<?php
			$url_lang = 'img/langs/';
			foreach (Acid::get('lang:available') as $l) {
				$url_sel = $l.'_sel.png';
				$url_unsel = $l.'_unsel.png';
				$sel = ($l==Acid::get('lang:current'));
				$url = $sel ? $url_sel:$url_unsel;
		?>
				<a class="switch_lang switch_lang_to_<?php  echo $l;  ?>" href="<?php echo Lang::langUrl($l); ?>" title="<?php echo Acid::trad('lang_'.$l); ?>">
					<?php
						echo Lang::langFlag($l,'',array('onmouseover'=>"this.src='".Acid::themeUrl($url_lang.$url_sel)."'",'onmouseout'=>"this.src='".Acid::themeUrl($url_lang.$url)."'"),$sel);
					?>

				</a>
		<?php }?>
</div>