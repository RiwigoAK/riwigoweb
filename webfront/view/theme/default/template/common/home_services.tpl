<section id="spa">
        <div class="row">
                <h1>Featured Services</h1>
        </div>
        <div class="row column" >
            
            <?php foreach ($products as $product) { ?>
        	<div class="col-md-4">
            <div class="bot_col">
            	<a href="<?php echo $product['href']; ?>" title="Category 1">
                <img src="<?php echo $product['thumb']; ?>" alt="" title="">
                <span class="bottom1">
                	<p class="category1">new <?=$product['booked']?> reservations recently</p>
                </span>
                </a>
                <div class="box-detail-name">
                    <a href="<?php echo $product['href']; ?>" title="Benihana @ Avani Atrium Bangkok"><h2 class="font-weight-bold"><?php echo $product['name']; ?></h2></a>
                </div>
                <div class="restro-title-box-left">
                    <div class="left_colm">
                        <p><a href="<?php echo $product['href']; ?>" alt="<?php echo $product['name']; ?>"><?=$product['merchants']?> Merchants Available </a></p>
                    </div>
                   
                </div>
                <div class="swiper-container" id="timeslot-2-0">
                    <div class="swiper-wrapper">
                    <a href="<?php echo $product['href']; ?>" title="offer" class="swiper-slide red-slide">
                    	<p>up to</p>
                        <b>50%</b>
                        <p>off</p>
                    </a>
                    <a href="<?php echo $product['href']; ?>" title="offer" class="swiper-slide red-slide">
                    	<p>up to</p>
                        <b>50%</b>
                        <p>off</p>
                    </a>
                    <a href="<?php echo $product['href']; ?>" title="offer" class="swiper-slide red-slide">
                    	<p>up to</p>
                        <b>50%</b>
                        <p>off</p>
                    </a>
                     																		
                    </div>
                </div>
            </div>
            </div>
        <?php } ?> 
             
        </div>
        </section>