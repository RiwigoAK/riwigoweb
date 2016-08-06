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
                <div class="admin_right">
                	<h3>general information</h3>    
                        <div class="edit"><a href="<?php echo $edit;?>"><i class="fa fa-pencil" aria-hidden="true"></i><p><?php echo $text_edit;?></p></a></div>
                    <div class="forminsideadmin">
                    	<label>name:</label>
                        <div class="fieldadmin"><?php echo $firstname;?></div>
                    </div>
                     
                    <div class="forminsideadmin">
                    	<label>gender</label>
                        <div class="fieldadmin"><?php echo $gender;?></div>
                    </div>
                    <div class="forminsideadmin">
                    	<label>email</label>
                        <div class="fieldadmin"><?php echo $email;?></div>
                    </div>
                    <div class="forminsideadmin">
                    	<label>phone:</label>
                        <div class="fieldadmin"><?php echo $mobile;?> </div>
                    </div>
                    <div class="forminsideadmin">
                    	<label>nationality:</label>
                        <div class="fieldadmin"><?php echo $nationality;?> </div>
                    </div>
                    <div class="forminsideadmin">
                    	<label>display language</label>
                        <div class="fieldadmin"><?php echo $displang;?></div>
                    </div>
                </div>
                <div class="admin_right mar20 log">
                	<h3><?php echo $text_fb_connect;?></h3>
                    <a href="#" title="share on facebook" class="facebook"><i class="fa fa-facebook" aria-hidden="true"></i><?php echo $text_login_fb;?></a>
                </div>
                <div class="admin_right check log">
                	<h3><?php echo $text_my_newsletter;?></h3>
                    <div class="squaredThree">
                        <input type="checkbox"   id="squaredThree" name="check" <?php if($newsletters==1){?>checked="checked"<?php }?> />
                        <label for="squaredThree"></label>
                    </div>
                </div>
                    
                </div>
            </div>
        </div>
    </section>
    </div>
</section> 
<?php echo $footer; ?> 