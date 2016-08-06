<?php echo $header; ?>
  
<section id="detail">
	<div class="container blog_detail">
    	<div class="row">
        <div class="col-md-12">
        <div class="pad20">
        <div class="col-md-4">
        <div class="detail_right contact_left">
        	<h4><?php echo $heading_title;?></h4>
            <ul>
            	<li ><a href="<?php echo $href;?>&information_id=7" title="contact us">contact us</a></li>
                <li ><a href="<?php echo $href;?>&information_id=4" title="about us">about us</a></li>
                <li class="active"><a href="javascript:(void);" title="faq">faq</a></li>
                <li ><a href="<?php echo $href;?>&information_id=9" title="press release">press release</a></li>
                <li > <a href="<?php echo $href;?>&information_id=8" title="career">career</a></li>
                <li ><a href="<?php echo $href;?>&information_id=5" title="terms and conditions">terms and conditions</a></li>
                <li ><a href="<?php echo $href;?>&information_id=3" title="privacy policy">privacy policy</a></li>
            </ul>
        </div>
        <div class="detail_right contact_left mar20">
            <p>customer service</p>
            <i class="fa fa-envelope" aria-hidden="true"></i>
            <h2>need help?</h2>
            <h2>can't reservation restaurant?</h2>
            <h2>got some question?</h2>
            <p class="send_email">please send mail to</p>
            <h5>got some question?</h5>
        </div>
        </div>
        <div class="col-md-8">
            	<div class="detail_left contact_right">
                <div id="content" class="full_cont">
                    
                    <div class="detail_left_cont">
                		<h4><?php echo $heading_title; ?></h4>
                </div>
                    
                        
      <div id="accordion" >
          <?php foreach ($all_faq as $faq) { ?>
  <h3><?php echo $faq['question']; ?></h3>
  <div style="clear:both">
    <p><?php echo $faq['answer']; ?></p>
     
  </div>
  <?php } ?>
  
      </div>
      
      
      
       
	   
	  </div>
            </div>
        	</div>
        </div>
        </div>
    </div>
    </div>
</section>
  <script>
  $(function() {
    $( "#accordion" ).accordion();
  });
  </script>
  <link rel="stylesheet" href="webfront/view/javascript/jquery/jquery-ui.css">
  <script src="webfront/view/javascript/jquery/jquery-ui.js"></script>
<?php echo $footer; ?>