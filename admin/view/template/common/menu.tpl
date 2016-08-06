<ul id="menu">
  <li id="dashboard"><a href="<?php echo $home; ?>"><i class="fa fa-dashboard fa-fw"></i> <span><?php echo $text_dashboard; ?></span></a></li>
  <li id="user"><a class="parent"><i class="fa fa-users fa-fw"></i> <span><?php echo $text_users; ?></span></a>
        <ul>
          <li><a href="<?php echo $user; ?>"><?php echo $text_user; ?></a></li>
          <li><a href="<?php echo $user_group; ?>"><?php echo $text_user_group; ?></a></li>
           <li><a href="<?php echo $api; ?>"><?php echo $text_api; ?></a></li>
        </ul>
  </li>
  <li id="customer"><a class="parent"><i class="fa fa-user fa-fw"></i> <span><?php echo $text_customer; ?></span></a>
    <ul>
      <li><a href="<?php echo $customer; ?>"><?php echo $text_customer; ?></a></li>
      <li><a href="<?php echo $customer_group; ?>"><?php echo $text_customer_group; ?></a></li> 
    </ul>
  </li>
  <li id="catalog"><a class="parent"><i class="fa fa-tags fa-fw"></i> <span><?php echo $text_catalog; ?></span></a>
    <ul>
	  <li><a href="<?php echo $spasalon;?>"><?php echo $text_spasalon; ?></a></li>
      <li><a href="<?php echo $category;?>"><?php echo $text_category; ?></a></li>
      <li><a href="<?php echo $product;?>"><?php echo $text_product; ?></a></li>
      <li><a href="<?php echo $featured_product;?>"><?php echo $text_featured_product; ?></a></li> 
       <li><a href="<?php echo $featured_merchant;?>"><?php echo $text_featured_merchant; ?></a></li> 
      <li><a href="<?php echo $offer;?>"><?php echo $text_offer; ?></a></li> 
      <li><a href="<?php echo $information;?>"><?php echo $text_information; ?></a></li>
       <li><a href="<?php echo $faq;?>"><?php echo $text_faq; ?></a></li>
      <li><a href="<?php echo $atmosphere;?>"><?php echo $text_atmosphere; ?></a></li>
      <li><a href="<?php echo $facilities;?>"><?php echo $text_facilities; ?></a></li> 
      <li><a href="<?php echo $spoken_languages;?>"><?php echo $text_spoken_languages; ?></a></li>  
    </ul>
  </li>
  <li><a class="parent"><i class="fa fa-share-alt fa-fw"></i> <span><?php echo $text_marketing; ?></span></a>
    <ul>
      <li><a href="<?php echo $coupon; ?>"><?php echo $text_coupon; ?></a></li>
      <li><a class="parent"><?php echo $text_voucher; ?></a>
        <ul>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $voucher_theme; ?>"><?php echo $text_voucher_theme; ?></a></li>
        </ul>
      </li>
      <!--<li><a href="#<?php //echo $marketing; ?>"><?php echo $text_marketing; ?></a></li>
      <li><a href="#<?php //echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li> -->
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $blog; ?>"><?php echo $text_blog; ?></a></li>
      
    </ul>
  </li>
 
  <li id="design"><a class="parent"><i class="fa fa-television fa-fw"></i> <span><?php echo $text_design; ?></span></a>
    <ul> 
      <li><a href="<?php echo $banner; ?>"><?php echo $text_banner; ?></a></li>
    </ul>
  </li>
  <li id="sale"><a class="parent"><i class="fa fa-shopping-cart fa-fw"></i> <span><?php echo $text_sale; ?></span></a>
     
  </li>
  
  
  <li id="system"><a class="parent"><i class="fa fa-cog fa-fw"></i> <span><?php echo $text_system; ?></span></a>
    <ul>
      <li><a href="<?php echo $setting; ?>"><?php echo $text_setting; ?></a></li> 
       
          <li><a href="<?php echo $language; ?>"><?php echo $text_language; ?></a></li>
          <li><a href="<?php echo $currency; ?>"><?php echo $text_currency; ?></a></li>
        
          <li><a href="<?php echo $order_status; ?>"><?php echo $text_order_status; ?></a></li>
          <!--<li><a class="parent"><?php echo $text_return; ?></a>
            <ul>
              <li><a href="<?php echo $return_status; ?>"><?php echo $text_return_status; ?></a></li>
              <li><a href="<?php echo $return_action; ?>"><?php echo $text_return_action; ?></a></li>
              <li><a href="<?php echo $return_reason; ?>"><?php echo $text_return_reason; ?></a></li>
            </ul>
          </li>-->
          <li><a href="<?php echo $country; ?>"><?php echo $text_country; ?></a></li>
          <li><a href="<?php echo $zone; ?>"><?php echo $text_zone; ?></a></li>
          <li><a href="<?php echo $city; ?>"><?php echo $text_city; ?></a></li>
          <li><a href="<?php echo $locationcity; ?>"><?php echo $text_location; ?></a></li>
          <li><a href="<?php echo $geo_zone; ?>"><?php echo $text_geo_zone; ?></a></li>
          <li><a class="parent"><?php echo $text_tax; ?></a>
            <ul>
              <li><a href="<?php echo $tax_class; ?>"><?php echo $text_tax_class; ?></a></li>
              <li><a href="<?php echo $tax_rate; ?>"><?php echo $text_tax_rate; ?></a></li>
            </ul>
          </li> 
         
    </ul>
  </li>
  <li id="reports"><a class="parent"><i class="fa fa-bar-chart-o fa-fw"></i> <span><?php echo $text_reports; ?></span></a>
     
  </li>
</ul>
