<section id="spa">
  <section id="category">
    <div class="row">
      <h1>Categories</h1>
    </div>
    <?php if (($categories)) { ?>
    <div class="row column" >
      <div class="row column" >
        <?php foreach ($categories as $category) { ?>
        <div class="col-md-4"> <a href="<?php echo $category['href'];?>" title="<?php echo ucfirst($category['name']); ?>"> <img src="<?php echo $category['thumb'];?>" alt="" title=""> <span class="bottom">
          <p class="category"><?php echo ucfirst($category['name']); ?></p>
          <?php if($category['total_merchants'] > 0){?>
        <p class="total_shop">
          <?=$category['total_merchants']?>
          merchants</p>
        <?php } ?>
          </span> </a> </div>
        <?php } ?>
      </div>
    </div>
    <?php } ?>
  </section>
</section>
<section id="spa">
  <section id="category">
    <?php if (($categories)) { ?>
    <?php foreach ($categories as $category) { ?>
    <?php if($category['total_sub_categories'] > 0) { ?>
    <div class="row">
      <h1><?php echo ucfirst($category['name']); ?></h1>
    </div>
    <div class="row column" >
      <?php if ($category['children']) { ?>
      <?php foreach ($category['children'] as $child) { ?>
      <div class="col-md-4"> <a href="<?php echo $child['href'];?>" title="<?php echo ucfirst($child['name']); ?>"> <img src="<?php echo $child['thumb'];?>" alt="" title=""> <span class="bottom">
        <p class="category"><?php echo ucfirst($child['name']); ?></p>
        <?php if($child['total_merchants'] > 0){?>
        <p class="total_shop">
          <?=$child['total_merchants']?>
          merchants</p>
        <?php } ?>
        </span> </a> </div>
      <?php } ?>
      <?php } ?>
    </div>
    <?php } ?>
    <?php } ?>
    <?php } ?>
    <div class="row">
      <div class="col-md-12">
        <div class="home-box-loadmore" id="loadmore-group-resto"> <a href="javascript:void(0);" title="more"  class="btn-home-more">+more</a> </div>
      </div>
    </div>
  </section>
</section>
