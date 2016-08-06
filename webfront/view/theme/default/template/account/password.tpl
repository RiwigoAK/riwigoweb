<?php echo $header; ?> 
<section id="main_container">
	<div class="container  mar_top65">
    <section id="faq">
        <div class="row user_profile">
        	<div class="col-md-12">
            	<div class="col-md-4">
                <div class="user_left">
                	<div class="profile_img">
                    	<img src="image/user.png">
                        <div class="user_details">
                        <h5>Lorem Ipsum Dolor</h5>
                        <p><b>member&nbsp;:&nbsp;</b>since <?php echo $date_added;?></p>
                        <p><b>last online&nbsp;:&nbsp;</b>on 19 Jun 2016 </p>
                        </div>
                        <div class="nav_left">
                        	<ul>
                                    <li><a href="<?php echo $edit;?>" title="edit profile & settings">edit profile & settings<i class="fa fa-arrow-right" aria-hidden="true"></i></a></li>
                                    <li><a href="<?php echo $password;?>" title="change password">change password<i class="fa fa-arrow-right" aria-hidden="true"></i></a></li>
                                <li><a href="<?php echo $logout;?>" title="log out">log out<i class="fa fa-arrow-right" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                </div>
                <div class="col-md-8 admin_profile">
                <div class="admin_right change_password">
                	<h3>Change Password</h3>
                </div>
                <div class="change" id="success" style="padding-left: 10px;"></div>  
                <div class="change">
                	<i class="fa fa-unlock-alt" aria-hidden="true"></i>
                	<input type="password" name="password" placeholder="password">
                        <span  id="error_password" ng-show="submitted && loginForm.frmUserEmail.$error.required"></span>    
                </div>
                <div class="change">
                	<i class="fa fa-unlock-alt" aria-hidden="true"></i>
                	<input type="password" name="confirm" placeholder="Confirm password">
                        <span  id="error_confirm" ng-show="submitted && loginForm.frmUserEmail.$error.required"></span>    
                </div>
                    
                 <div class="change mar40">
                     <button type="button" id="button-request-password">Done</button>
                 </div>
                </div>
            </div>
        </div>
    </section>
    </div>
</section>
<script type="text/javascript"><!--
$('#button-request-password').on('click', function() { 

    $.ajax({
            url: 'index.php?route=account/password/validate',
            type: 'post',
            data: $('input[type=\'password\']'),
            dataType: 'json',
            crossDomain: true,
            beforeSend: function() {
                $('#faq').prepend('<div id="preloader"><div id="status">&nbsp;</div></div>');

            },
            complete: function() {
                //$('#button-login').button('reset');
                // will first fade out the loading animation
                //.jQuery("#status").fadeOut();
                // will fade out the whole DIV that covers the website.
                jQuery("#preloader").delay(1000).fadeOut("slow");
            },
            success: function(json) {
                $('.alert, .text-danger').remove();

                if (json['error_password']) {
                     
                    $('#error_password').prepend('<div class="text-danger">' + json['error_password'] + '  </div>');

                }else if(json['error_confirm']){
                        
                    $('#error_confirm').prepend('<div class="text-danger">' + json['error_confirm'] + '  </div>');

                }else if (json['success']) { //alert('success');
                     $('#success').prepend('<div class="alert alert-success"><i class="fa fa-check-circle"></i>' + json["success"] + '<button data-dismiss="alert" class="close" type="button">×</button></div>');
                }			
            },
            error: function(xhr, ajaxOptions, thrownError) {
                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
    });
});
//--></script>
<?php echo $footer; ?>