<?php echo $header; ?>

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
                        	<?php foreach($categories as $category){?>
                            	<option value="<?=$category['category_id']?>" <?php if($category['category_id'] == $category_id){?>selected="selected"<?php } ?> ><?=$category['name']?></option>
                                <?php foreach($category['children'] as $cate){?>
                                	<option value="<?=$category['category_id']?>_<?=$cate['category_id']?>"<?php if($cate['category_id'] == $category_id){?>selected="selected"<?php } ?>  >&nbsp;&nbsp;--<?=$cate['name']?></option>
                            	<?php }?>    
                        	<?php }?>
                        </select>

					</div>
					<div class="detail_banner_group normal-font font-weight-normal">
                           <?=$description?>
                    </div>
					<div class="number_banner_group normal-font font-weight-normal">
                        <?=$total_merchants?> Merchants
                    </div>
				</div>
                </div>
            </div>
        </div>
    </div>
</div>
</section>

<!--<?php if (($categories)) { ?>
<section id="main_container">
  <div class="container">
    <section id="spa">
      <section id="category">
        <div class="row">
          <div class="col-md-12">
            <h1>Sub Categories</h1>
          </div>
        </div>
        <div class="row column" >
          <?php foreach ($categories as $category) { ?>
          <div class="col-md-4"> <a href="<?php echo $category['href'];?>" title="<?php echo ucfirst($category['name']); ?>"> <img src="<?php echo $category['thumb'];?>" alt="" title=""> <span class="bottom">
            <p class="category"><?php echo ucfirst($category['name']); ?></p>
            <p class="total_shop">7 shops</p> 
            </span> </a> </div>
          <?php } ?>
        </div>
      </section>
    </section>
  </div>
</section>
<?php } ?>--> 
<section id="main_container">
  <div class="container">
     <div class="row">
      <h1>Spas & Salons</h1>
    </div>
    <section id="spa">
      <div class="row column" >
      <?php if($merchants){?>
      <?php foreach ($merchants as $merchant) { ?>
        <div class="col-md-4">
          <div class="bot_col"> <a href="<?=$merchant['href'];?>" title="new 97 reservations recently"> <img src="<?php echo $merchant['thumb'];?>" alt="" title=""> <span class="bottom">
            <p class="category1">new <?=$merchant['reserved']?> reservations recently</p>
            </span> </a>
            <div class="box-detail-name"> <a href="<?=$merchant['href'];?>" title="Benihana @ Avani Atrium Bangkok">
              <h2 class="font-weight-bold"><?php echo $merchant['name'];?></h2>
              </a> </div>
            <div class="restro-title-box-left">
              <div class="left_colm">
                <p><?=$merchant['city']?></p>
                <p><?=$merchant['location']?></p>
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
            <div class="swiper-container" id="timeslot-2-0">
              <div class="swiper-wrapper"> 
                    <?php if($merchant['discounts']){ $activeDisc = false; $i=1;?>
                      <?php foreach ($merchant['discounts'] as $discount){  ?>
                        <?php if($discount['merchant_time'] == $merchant['rounded_seconds']){ $activeDisc = true; }?>  
                        <?php if($activeDisc == true && $i <= 3){ ?> 
                            <a href="<?=$merchant['href'];?>" title="offer" class="swiper-slide red-slide">
                                <p><?=$discount['merchant_time']?></p>
                                <b><?=$discount['percentage']?>%</b>
                                <p>off</p>
                            </a> 
                        <?php $i++; }?>	
                    <?php  }?>	
                 <?php }?>
                </div>
            </div>
          </div>
        </div>   
        <?php }?>
        <?php }else{ ?>
            <h1>No Merchant Founds</h1>
        <?php }?>
      </div>
    </section>
  </div>
</section>
<?php echo $footer; ?>
<script type="text/javascript"><!--
$('#drowdown-group-resto').on('change', function() {
	var url = 'index.php?route=product/category&';

	var filter_category = $('select[name=\'drowdown-group-resto\']').val();

	if (filter_category != '*') {
		url += '&path=' + encodeURIComponent(filter_category);
	}

	 

	location = url;
});
//--></script>