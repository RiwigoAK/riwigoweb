<?php echo $header; ?>
<?php //echo $content_top; ?>
<section id="slider">
<div class="flex-container mar_top45">
	<div class="flexslider banner">
		<img src="image/slider2.png" class="lazy img-responsive"  alt="" title=""/>
	</div>
    <div class="overlay_bg">
    	<div class="container top_pos25">
        	<div class="row">
            	<div class="col-md-12">
                	<div class="Absolute-Center">
					<div class="title_banner_group">
						<select class="drowdown-group" id="drowdown-group-resto" name="drowdown-group-resto" >
                        	<?php foreach($allService as $allSer){?>
                            	<option value="<?=$allSer['product_id']?>" <?php if($allSer['product_id'] == $product_id){?>selected="selected"<?php } ?> ><?=$allSer['name']?></option>
                                   
                        	<?php }?>
                        </select>

					</div>
					<div class="detail_banner_group normal-font font-weight-normal">
                           <?php //echo $description;?>
                    </div>
					<div class="number_banner_group normal-font font-weight-normal">
                        <?=$total_merchant?> Merchants
                    </div>
				</div>
                </div>
            </div>
        </div>
    </div>
</div>
</section>
<section id="main_container">
	<div class="container mar_top25">
        <section id="spa">
        <div class="row column" >
        	<?php if (($merchants)) { $i=1; ?> 
            	<?php foreach ($merchants as $merchant) { $day =$merchant['day'];  ?>   
                    <div class="col-md-4">
                        <div class="bot_col">
                            <a href="<?=$merchant['href']?>" title="new 97 reservations recently">
                            <img src="<?=$merchant['thumb'];?>" alt="" title="">
                            <span class="bottom">
                                <p class="category1">new <?=$merchant['reserved'];?> reservations recently <?php //echo $merchant['round_time'];?></p>
                            </span>
                            </a>
                            <div class="box-detail-name">
                                <a href="<?=$merchant['href']?>" title="Benihana @ Avani Atrium Bangkok"><h2 class="font-weight-bold"><?=$merchant['name']?> @ <?=$merchant['zone']?> </h2></a>
                            </div>
                            <div class="restro-title-box-left">
                                <div class="left_colm">
                                    <p>japanese</p>
                                    <p>New petchaburi</p>
                                </div>
                                <div class="right_colm">
                                    <div class="box-detail-rating-gray">
                                        <div class="box-detail-rating-yellow_b" style="width:<?=$merchant['rating']?>%;"></div>
                                    </div>
                                    <div class="box-price-gray">
                                        <div class="box-detail-price-yellow_b" style="width:<?=$merchant['price_level']?>%;"></div>
                                    </div>
                                </div>
                            </div>
                             
                        </div>
                    </div>
        		<?php 
                if(($i%3)==0){ ?>
                	<div style="clear:both"></div>
                <?php }
                
                $i++; } ?> 
            <?php } ?> 
        </div>
        </section>
		
    </div>
</section>

<?php echo $footer; ?>
<script type="text/javascript"><!--
$('#drowdown-group-resto').on('change', function() { 
	var url = 'index.php?route=product/merchant';

	var filter_category = $('select[name=\'drowdown-group-resto\']').val();

	if (filter_category != '*') {
		url += '&product_id=' + encodeURIComponent(filter_category);
	}
	
	alert(url);

	location = url;
});
//--></script>