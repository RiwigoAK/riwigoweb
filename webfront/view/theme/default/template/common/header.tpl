<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="robots" content="All" />
<meta name="viewport" content="width=device-width, user-scalable=no" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<link href="webfront/view/theme/default/stylesheet/style.css" rel="stylesheet" type="text/css">
<link href="webfront/view/theme/default/stylesheet/responsive.css" rel="stylesheet" type="text/css">
<link href="webfront/view/theme/default/stylesheet/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="webfront/view/theme/default/stylesheet/font-awesome-4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="webfront/view/javascript/js/jquery-2.1.1.js"></script>
<script type="text/javascript" src="webfront/view/javascript/js/jquery.dropotron.min.js"></script>

<!--=====================================================================================================================================-->
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<header>
  <div class="header_inner">
    <nav id="main-nav">
      <ul class="drop">
        <li> <a href="#"><i class="fa fa-bars" aria-hidden="true"></i></a>
          <ul>
            <li><a href="<?php echo $home;?>" title="<?php echo $text_home;?>"><i class="fa fa-home" aria-hidden="true"></i><?php echo $text_home;?></a></li>
            <li><a href="#" title="Search"><i class="fa fa-search" aria-hidden="true"></i><?php echo $text_search;?></a></li>
            <li><a href="#" title="<?php echo $text_blog;?>"><i class="fa fa-pencil" aria-hidden="true"></i><?php echo $text_blog;?></a></li>
            <li><a href="#" title="<?php echo $text_how_spa_works;?>"><i class="fa fa-calculator" aria-hidden="true"></i><?php echo $text_how_spa_works;?></a></li>
            <li class="none_div"><a href="<?php echo $login;?>" title="<?php echo $text_login;?>"><i class="fa fa-sign-out" aria-hidden="true"></i><?php echo $text_login;?></a></li>
            <li class="none_div"><a href="<?php echo $register;?>" title="<?php echo $text_register;?>"><i class="fa fa-sign-out" aria-hidden="true"></i><?php echo $text_register;?></a></li>
          </ul>
        </li>
      </ul>
      <div class="logo"><a href="<?php echo $home;?>" alt="home"><img src="image/logo.png"></a></div>
       <?php if($route != 'common/home'){?>
      <div class="input-group">
        <input type="text" class="form-control" id="test_data" placeholder="search for : enter spa name" autocomplete="off">
        <div class="input-group-btn">
          <button type="button" class="btn btn-default dropdown-toggle" data-toggle=""> <i class="fa fa-search" aria-hidden="true"></i> </button>
          <ul class="dropdown-menu dropdown-menu-right" role="menu" style="padding-top: 0px; max-height: 375px; max-width: 800px; overflow: auto; width: auto; transition: 0.3s;">
          </ul>
        </div>
      </div>
     <?php }?>
      <div class="right_nav">
        <ul>
          <?php if ($logged) { ?>
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
          <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
          <?php } else { ?>
          <li><a href="<?php echo $login;?>" class="bg_color" title="<?php echo $text_login;?>"><?php echo $text_login;?></a></li>
          <li><a href="<?php echo $register;?>" title="<?php echo $text_register;?>"><?php echo $text_register;?></a></li>
          <?php } ?>
          <?php echo $city?>
          <li><a href="javascript:(void);" title="TH" >TH</a></li>
          <p class="slash">|</p>
          <li><a href="javascript:(void);" title="EN" class="bg_color">EN</a></li>
          <p class="slash">|</p>
          <li><a href="javascript:(void);" title="JPN">JPN</a></li>
          <p class="slash">|</p>
          <li><a href="javascript:(void);" title="CN">CN</a></li>
          </li>
        </ul>
      </div>
    </nav>
  </div>
</header>
