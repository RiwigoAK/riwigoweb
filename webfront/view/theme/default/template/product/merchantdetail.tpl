<?php echo $header; ?>
<?php //echo $content_top; ?>
<section id="detail">
  <div class="container">
    <div class="row mar_top45">
      <div class="col-md-8">
        <div class="detail_left">
          <div class="full_cont">
            <div class="detail_left_cont">
              <h3>
                <?=$name;?>
              </h3>
              <div style="clear:both"></div>
              <p>
                <?=$city;?>   <?=$location;?>
              </p>
              <div class="new-resto-detail-2-line">
                <div class="box-detail-rating-gray">
                  <div class="box-detail-rating-yellow_b" style="width:<?=$price_level;?>%;"></div>
                </div>
                <div class="box-price-gray">
                  <div class="box-detail-price-yellow_b" style="width:<?=$rating;?>%;"></div>
                </div>
              </div>
            </div>
            <div class="detail_right_cont">
              <div class="rating">
                <?=$rating;?>
                <i class="fa fa-star" aria-hidden="true"></i></div>
            </div>
          </div>
          <div class="flex-container">
            <div class="flexslider">
              <ul class="slides">
                <li> <img src="<?=$firstImage?>" class="lazy" alt="" title="" /> </li>
                <?php foreach ($images as $image) { ?>
                <li> <img src="<?=$image['thumb']?>" class="lazy" alt="" title="" /> </li>
                <?php }?>
              </ul>
              <p class="slider_text">246 reservation made recently</p>
            </div>
          </div>
          <div class="tab">
            <ul>
              <li><a href="javascript:(void);" title="detail" class="active tab2a">
                <?=$tab_detail?>
                </a></li>
              <li><a href="javascript:(void);" title="ecommended menu" class="tab2b">
                <?=$tab_recommanded?>
                </a></li>
              <li><a href="javascript:(void);" title="rating (629)" class="tab2c">rating (629)</a></li>
              <li><a href="javascript:(void);" title="map" class="tab2d">map</a></li>
            </ul>
            <div class="tab_contant">
              <div class="tab1"><b>
                <?=$entry_about?>
                </b>
                <p>
                  <?=$description?>
                </p>
                <div class="forminside">
                  <div class="inside_full">
                    <label>
                      <?=$entry_address?>
                      :</label>
                    <div class="field">
                      <?=$address;?>
                    </div>
                  </div>
                  <div class="inside_full">
                    <label>
                      <?=$entry_atmosphere?>
                      :</label>
                    <div class="field">
                      <?php if($atmosphere){?>
                          <?php foreach ($atmosphere as $atmos) { ?>
                          	<?=$atmos['name']?><br>
                          <?php } ?>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="inside_full">
                    <label><?=$entry_facilities?> :</label>
                    <div class="field"> 
                      <?php if($facilities){?>
                          <?php foreach ($facilities as $facilitie) { ?>
                          	<?=$facilitie['name']?><br>
                          <?php } ?>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="inside_full">
                    <label><?=$entry_spoken_language?> :</label>
                    <div class="field">
                    	<?php if($spoken_language){?>
                          <?php foreach ($spoken_language as $spoken_languag) { ?>
                          	<?=$spoken_languag['name']?><br>
                          <?php } ?>
                      <?php } ?>
                    </div>
                    <div class="inside_full">
                      <label><?=$entry_opening_time?> :</label>
                      <div class="field"> <?=$from_opeining_hours?> to <?=$to_opening_hours?></div>
                    </div>
                    <div class="inside_full">
                      <label>share this page :</label>
                      <div class="field"> <a href="#" title="facebook"><img src="images/facebook.jpg" alt="facebook" title="facebook"></a> <a href="#" title="twitter"><img src="images/twitter.jpg" alt="twitter" title="twitter"></a> <a href="#" title="linkedin"><img src="images/linkedin.jpg" alt="linkedin" title="linkedin"></a> </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="tab2">
                <table border="0" class="comman_table">
                  <tr>
                    <td>menu</td>
                    <td>price</td>
                    <td>discount</td>
                    <td align="right"><select>
                        <option>10%</option>
                        <option>20%</option>
                        <option>30%</option>
                        <option>40%</option>
                        <option>50%</option>
                      </select></td>
                  </tr>
                  <tr>
                    <td>adult dinner buffet - friday - sunday</td>
                    <td class="through">799.00</td>
                    <td colspan="2">719.1</td>
                  </tr>
                  <tr>
                    <td>adult dinner buffet - friday - sunday</td>
                    <td class="through">799.00</td>
                    <td colspan="2">719.1</td>
                  </tr>
                  <tr>
                    <td>adult dinner buffet - friday - sunday</td>
                    <td class="through">799.00</td>
                    <td colspan="2">719.1</td>
                  </tr>
                  <tr>
                    <td>adult dinner buffet - friday - sunday</td>
                    <td class="through">799.00</td>
                    <td colspan="2">719.1</td>
                  </tr>
                  <tr>
                    <td>adult dinner buffet - friday - sunday</td>
                    <td class="through">799.00</td>
                    <td colspan="2">719.1</td>
                  </tr>
                </table>
                <div class="btn_more"><a href="#">more...</a></div>
                <div class="forminside">
                  <div class="inside_full">
                    <p>*Menu and pricing subject to change without notice.</p>
                    <p>*All prices in THB and are exclusive of VAT and service charge according to the policy of the restaurants.</p>
                    <label>share this page :</label>
                    <div class="field"> <a href="#" title="facebook"><img src="images/facebook.jpg" alt="facebook" title="facebook"></a> <a href="#" title="twitter"><img src="images/twitter.jpg" alt="twitter" title="twitter"></a> <a href="#" title="linkedin"><img src="images/linkedin.jpg" alt="linkedin" title="linkedin"></a> </div>
                  </div>
                </div>
              </div>
              <div class="tab3">
                <div class="forminside review_section_full"> <b>customer ratings</b> <img src="images/rating.png" class="img-responsive" alt="" title="">
                  <div class="inside_full"> <b>customer feedbacks (140)</b>
                    <div class="review_section"> <b>Siriporn</b>
                      <p>30 May 2016</p>
                      <p>Ok.</p>
                    </div>
                  </div>
                  <div class="inside_full">
                    <div class="review_section"> <b>Siriporn</b>
                      <p>30 May 2016</p>
                      <p>Ok.</p>
                    </div>
                  </div>
                  <div class="inside_full">
                    <div class="review_section"> <b>Siriporn</b>
                      <p>30 May 2016</p>
                      <p>Ok.</p>
                    </div>
                  </div>
                  <div class="inside_full">
                    <div class="review_section"> <b>Siriporn</b>
                      <p>30 May 2016</p>
                      <p>Ok.</p>
                    </div>
                  </div>
                  <div class="inside_full">
                    <div class="review_section"> <b>Siriporn</b>
                      <p>30 May 2016</p>
                      <p>Ok.</p>
                    </div>
                  </div>
                  <div class="inside_full">
                    <div class="btn_more"><a href="#" title="more">more...</a></div>
                    <div class="forminside">
                      <div class="inside_full">
                        <p>*Menu and pricing subject to change without notice.</p>
                        <p>*All prices in THB and are exclusive of VAT and service charge according to the policy of the restaurants.</p>
                        <label>share this page :</label>
                        <div class="field"> <a href="#" title="facebook"><img src="images/facebook.jpg" alt="facebook" title="facebook"></a> <a href="#" title="twitter"><img src="images/twitter.jpg" alt="twitter" title="twitter"></a> <a href="#" title="linkedin"><img src="images/linkedin.jpg" alt="linkedin" title="linkedin"></a> </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="tab4"> nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="detail_right">
          <h4>enter reservation details</h4>
          <div class="detail_right_cont1">
            <div class="row1">
              <div class="row-img1" id="f1"><i class="fa fa-calendar" aria-hidden="true"></i></div>
              <select class="date-select normal-font font-weight-normal" id="date" name="date">
                <option value="2016-05-30" selected="">today</option>
                <option value="2016-05-31">tomorrow</option>
                <option value="2016-06-01">Wednesday, 01 June 2016</option>
                <option value="2016-06-02">Thursday, 02 June 2016</option>
                <option value="2016-06-03">Friday, 03 June 2016</option>
              </select>
            </div>
            <div class="row1">
              <div class="row-img1" id="f1"><i class="fa fa-users" aria-hidden="true"></i></div>
              <select class="date-select normal-font font-weight-normal" id="date" name="date">
                <option value="2016-05-30" selected="">Select Person</option>
                <option value="2016-05-31">1 Person</option>
                <option value="2016-06-01">2 Person</option>
                <option value="2016-06-02">3 Person</option>
                <option value="2016-06-03">4 Person</option>
                <option value="2016-06-03">5 Person</option>
              </select>
            </div>
            <div class="row1">
              <div class="row-img1" id="f1"><i class="fa fa-empire" aria-hidden="true"></i></div>
              <select class="date-select normal-font font-weight-normal" id="date" name="date">
                <option value="2016-05-30" selected="">Select</option>
                <option value="2016-05-31">1 Person</option>
                <option value="2016-06-01">2 Person</option>
                <option value="2016-06-02">3 Person</option>
                <option value="2016-06-03">4 Person</option>
                <option value="2016-06-03">5 Person</option>
              </select>
            </div>
            <div class="row1 row2">
              <div class="row-img1" id="f1"><i class="fa fa-gift" aria-hidden="true"></i></div>
              <div class="date-select normal-font font-weight-normal" id="date" name="date"> </div>
            </div>
            <div class="slot-loading " id="slot-loading" >
              <textarea name="n"></textarea>
            </div>
            <div class="row1">
              <div class="row-img1" id="f1"><i class="fa fa-user" aria-hidden="true"></i></div>
              <div class="group_field">
                <input class="date-select normal-font font-weight-normal" id="name" name="name" placeholder="guest name">
                <a href="#"><i class="fa fa-facebook-square" aria-hidden="true"></i></a> </div>
            </div>
            <div class="row1">
              <div class="row-img1" id="f1"><i class="fa fa-envelope" aria-hidden="true"></i></div>
              <div class="group_field">
                <input class="date-select normal-font font-weight-normal" id="name" name="name" placeholder="email">
              </div>
            </div>
            <div class="row1">
              <div class="row-img1" id="f1"><i class="fa fa-phone" aria-hidden="true"></i></div>
              <div class="group_field">
                <input class="date-select normal-font font-weight-normal" id="name" name="name" placeholder="phone number">
              </div>
            </div>
            <div class="row1">
              <div class="row-img1" id="f1"><i class="fa fa-gift" aria-hidden="true"></i></div>
              <div class="group_field">
                <input class="date-select normal-font font-weight-normal" id="name" name="name" placeholder="promo code">
              </div>
            </div>
            <a href="#"><h4>click to review reservation</h4></a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<?php echo $footer; ?> 
<script>
$(document).ready(function () {
	if($(".tab ul li a")){
	$(".tab ul li a").click(function(e) {
		$(".tab ul li a").removeClass("active");
        $(this).addClass("active");
    });
	}
	
	$(".tab ul li a.tab2a").click(function(e) {
		$(".tab1").show();
		$(".tab2,.tab3,.tab4").hide();
    });
	$(".tab2").hide();
	$(".tab ul li a.tab2b").click(function(e) {
		$(".tab2").show();
		$(".tab1,.tab3,.tab4").hide();
    });
	$(".tab3").hide();
	$(".tab ul li a.tab2c").click(function(e) {
		$(".tab3").show();
		$(".tab2,.tab1,.tab4").hide();
    });
	$(".tab4").hide();
	$(".tab ul li a.tab2d)").click(function(e) {
		$(".tab4").show();
		$(".tab2,.tab3,.tab4").hide();
    });
	$('#main-nav  ul.drop').dropotron({ offsetY: -10 });
});
</script>