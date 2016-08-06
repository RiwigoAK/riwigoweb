<section id="slider">
<div class="flex-container mar_top45">
	<div class="flexslider">
		<ul class="slides">
            <li><img src="image/slider1.png" alt="" title="" /></li>
            <li><img src="image/slider2.png" alt="" title=""  /></li>
        </ul>
    </div>
    <div class="overlay_bg">
    	<div class="container top25">
        	<div class="row">
            	<div class="col-md-12">
                	<img src="image/slider_top_img.png" class="top_img" alt="" title="">
                    <div class="home_search">
                    	<div class="btn_search">
                        	<div class="btn_first"><a href="javascript:(void);" class="active" title="by location"><?php echo $text_bylocation;?></a></div>
                            <div class="btn_last"><a href="javascript:(void);" title="by spa shop"><?php echo $text_byshop;?></a></div>
                        </div>
                        <div class="row">
                        <div class="col-md-12">
                    	<div class="search_area">
                        	<div class="search_first taba" id="firstTab">
                            	<ul>
                                	<li><i class="fa fa-calendar" aria-hidden="true"></i>
                                    	<input type="text" placeholder="select date" id="datetimepicker1" name="locationDate"/>
                                    </li>
                                    <li>
                                       <i class="fa fa-clock-o" aria-hidden="true"></i>
                                       <span data-acts-as-select>
                                          <span class="drop_bottom">
                                            <?php foreach ($text_time_slot as $key => $text_time_slo) { ?>
                                             <input type="radio" name="locationTimeslot[]" value="<?php echo $key;?>" id="timeslot<?php echo $key;?>" checked/>
                                            <label for="timeslot<?php echo $key;?>"><?php echo $text_time_slo;?></label>                                            <?php }?>    
                                          </span>
                                        </span>
                                    </li>
                                    <li>
                                    	<i class="fa fa-user" aria-hidden="true"></i>
                                        <span data-acts-as-select>
                                          <span class="drop_bottom">
                                            <?php foreach ($text_peoples as $key => $text_people) { ?>  
                                            	<input type="radio" name="peoples" value="<?php echo $key;?>" id="peoples_<?php echo $key;?>" checked/>
                                            	<label for="peoples_<?php echo $key;?>"><?php echo $text_people;?></label>
                                            <?php }?>
                                          </span>
                                        </span>
                                    </li>
                                    <li>
                                    <i class="fa fa-bed" aria-hidden="true"></i>
                                    	<div class="container drop_1">
                                        <div class="active-cuisine"></div>
                                            <select name="locationCategory" id="locationCategory" multiple class="form-control ">
                                                <?php foreach ($categories as $category) { ?>
                                                	<option value="<?=$cat['category_id']?>"><?=$category['name']?></option>
                                                    <?php foreach ($category['children'] as $cat) { ?>
                                                        <option value="<?=$cat['category_id']?>"><?=$cat['name']?></option>
                                                    <?php }?>
                                                <?php }?>
                                            </select>
                                        </div>
                                        
                                    </li>
                                    <li>
                                    <i class="fa fa-map-o" aria-hidden="true"></i>
                                    	<div class="container drop_2">
                                        <div class="active-cuisine1"></div>
                                            <select name="location" id="location" multiple class="form-control ">
                                                <?php if(count($locations) >0){?>
                                                    <?php foreach ($locations as $lcoation) { ?>
                                                        <option value="<?=$lcoation['location_id']?>"><?=$lcoation['name']?></option>
                                                    <?php }?>    
                                                <?php }else{?>
       													<option value="0">No Locations</option>
                                                <?php }?>
                                            </select>
                                        </div>
                                    </li>
                                    <li><input type="submit" value="submit" id="byLocation"></li>
                                </ul>
                            </div>
                            
                            <script type="text/javascript"><!--
								$('#byLocation').bind('click', function() {
									url = 'index.php?route=product/category';
								
									var locationDate = $('#firstTab input[name=\'locationDate\']').prop('value');
								
									if (locationDate) {
										url += '&locationDate=' + encodeURIComponent(locationDate);
									}
								
									var locationTimeslot = $('#firstTab input[name=\'locationTimeslot\']').find(":checked").val();
								
									if (locationTimeslot) {
										url += '&locationTimeslot=' + encodeURIComponent(locationTimeslot);
									}
								
									/*var locationCategory = $('#firstTab input[name=\'locationCategory\']:checked').prop('value');
								
									if (locationCategory) {
										url += '&sub_category=true';
									}
								
									var filter_description = $('#content input[name=\'description\']:checked').prop('value');
								
									if (filter_description) {
										url += '&description=true';
									}*/
								
									location = url;
								});
								
								$('#content input[name=\'search\']').bind('keydown', function(e) {
									if (e.keyCode == 13) {
										$('#button-search').trigger('click');
									}
								});
							</script>
                            <div class="search_first tabb">
                            	<ul>
                                	<li><i class="fa fa-calendar" aria-hidden="true"></i>
                                    <input type="text" id="datetimepicker2"/></li>
                                    <li>
                                       <i class="fa fa-clock-o" aria-hidden="true"></i>
                                       <span data-acts-as-select>
                                          <span class="drop_bottom">
                                           <?php foreach ($text_time_slot as $key => $text_time_slo) { ?>
                                             <input type="radio" name="mertimeslot" value="<?php echo $key;?>" id="mertimeslot<?php echo $key;?>" checked/>
                                            <label for="mertimeslot<?php echo $key;?>"><?php echo $text_time_slo;?></label>                                            <?php }?>    
                                          </span>
                                        </span>
                                    </li>
                                    <li>
                                    	<i class="fa fa-user" aria-hidden="true"></i>
                                        <span data-acts-as-select>
                                          <span class="drop_bottom">
                                            <?php foreach ($text_peoples as $key => $text_people) { ?>  
                                            	<input type="radio" name="merpeoples" value="<?php echo $key;?>" id="merpeoples_<?php echo $key;?>" checked/>
                                            	<label for="merpeoples_<?php echo $key;?>"><?php echo $text_people;?></label>
                                            <?php }?>  
                                          </span>
                                        </span>
                                    </li>
                                     <li>
                                    <i class="fa fa-map-o" aria-hidden="true"></i>
                                    	<div class="container anymerchant">
                                        <div class="active-cuisine1"></div>
                                            <select name="anymerchant" id="anymerchant" multiple class="form-control">
                                                <?php foreach ($merchants as $merchant) { ?>
                                                	<option value="<?=$merchant['merchant_id']?>"><?=$merchant['name']?></option>
                                                    
                                                <?php }?>
                                            </select>
                                        </div>
                                    </li>
                                    <li><input type="submit" value="submit"></li>
                                </ul>
                            </div>
                        </div>
                        </div>
                        </div>
                    </div>
                    <div class="bottom_icons">
                    <div class="row">
                    	<div class="col-md-4"><a href="javascript:(void);"><img src="image/search1.png" alt="" title=""></a></div>
                        <div class="col-md-4"><a href="javascript:(void);"><img src="image/search2.png" alt="" title=""></a></div>
                        <div class="col-md-4"><a href="javascript:(void);"><img src="image/search3.png" alt="" title=""></a></div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</section>