<div class="clear"></div>
<hr />

<nav id="pagination">
    <ul>
        <?php   if ($v['page'] > 1) {
                    $url = AcidPagination::genUrl(($v['page']-1),$v['link_func']);
        ?>
                    <li><a href="<?php echo $url; ?>" class="nav_prev" rel="prev" >&laquo; Previous</a></li>
        <?php   } ?>
        <?php 
            foreach ($v['page_elts'] as $elt) {
                $url = isset($elt['url']) ? $elt['url'] : null;
                $label = isset($elt['label']) ? $elt['label'] : '';
                $class = isset($elt['class']) ? ' class="'.$elt['class'].'" ' : '';
            ?>
            
             <li><span class="nav_page_elt" >
                <?php                       
                    if ($url) {
                ?>
                        <a href="<?php echo $url; ?>" <?php echo $class; ?>><?php echo $label; ?></a>
                <?php 
                    }else{
                ?>      
                        <span <?php echo $class; ?>><?php echo $label; ?></span>
                <?php 
                    }                             
                ?>                                
             </span></li>
             
            <?php 
                }                             
            ?>  
            <?php   if ($v['page'] < $v['last_page']) {
                        $url = AcidPagination::genUrl(($v['page']+1),$v['link_func']);
            ?>
                        <li><a href="<?php echo $url; ?>"  class="nav_next" rel="next" >Next &raquo;</a></li>
            <?php   } ?>
    </ul>
</nav>
