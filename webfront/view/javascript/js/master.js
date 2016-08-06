
	
	//
	$(window).load(function() {
    $("#flexiselDemo3").flexisel({
        visibleItems: 5,
        itemsToScroll: 1,         
        autoPlay: {
            enable: true,
            interval: 5000,
            pauseOnHover: true
        }        
    });
});
//
//.active-cuisine
$(document).ready(function(e) {
	var testdataBsSuggest = $("#test_data,#test_data1").bsSuggest({
        indexId: 2,  //data.value 的第几个数据，作为input输入框的内容
        indexKey: 1, //data.value 的第几个数据，作为input输入框的内容
        data: {
            'value':[
                {'id':'0','word':'Mark','description':'http://www.1.com'},
                {'id':'1','word':'Jacob','description':'http://www.2.com'},
                {'id':'2','word':'Larry','description':'http://www.3.com'},
                {'id':'3','word':'Thornton','description':'http://www.4.com'}
            ],
            'defaults':'http://www.1.com'
        }
    }).on('onDataRequestSuccess', function (e, result) {
        console.log('onDataRequestSuccess: ', result);
    }).on('onSetSelectValue', function (e, keyword, data) {
        console.log('onSetSelectValue: ', keyword, data);
    }).on('onUnsetSelectValue', function (e) {
        console.log("onUnsetSelectValue");
    });

    $("form").submit(function(e) {
        return false;
    });
    if($(".btn_first a")){
		$(".tabb").hide();
	   $(".btn_first a").click(function(e) {
	   $(".tabb").hide();
	   $(".taba").show();
       $(this).addClass("active");
	   $(".btn_last a").removeClass("active");
    });
	}
	else{
	   $(this).removeClass("active");
	   $(".taba").hide();
	   $(".tabb").show();
		}
	if($(".btn_last a")){
   		$(".btn_last a").click(function(e) {
		$(".taba").hide();
		$(".tabb").show();
   		$(this).addClass("active");
		$(".btn_first a").removeClass("active");
    });
	}
	else{
	   $(this).removeClass("active");
	   $(".tabb").hide();
	   $(".taba").show();
		}

//
$('.drop_1 select[multiple]').multiselect({
    columns:1,
    placeholder: 'category'
});
$('.drop_2 select[multiple]').multiselect({
    columns:1,
    placeholder: 'any Location'
});
$('.drop_3 select[multiple]').multiselect({
    columns:1,
    placeholder: 'any Location'
});
$('.drop_4 select[multiple]').multiselect({
    columns:1,
    placeholder: 'any Location'
});
$('.drop_5 select[multiple]').multiselect({
    columns:1,
    placeholder: 'any Location'
});
$('.drop_6 select[multiple]').multiselect({
    columns:1,
    placeholder: 'any Location'
});
$(".drop_6").mouseover(function(e) {
  $(".drop_1 .ms-options,.drop_2 .ms-options,.drop_4 .ms-options,.drop_5 .ms-options,.drop_3 .ms-options").css("display", "none");
  $(".active-cuisine2").show();  
  $(".active-cuisine,.active-cuisine1,.active-cuisine3,.active-cuisine4,.active-cuisine5").hide();
});
$(".drop_5").mouseover(function(e) {
  $(".drop_1 .ms-options,.drop_2 .ms-options,.drop_4 .ms-options,.drop_3 .ms-options,.drop_6 .ms-options").css("display", "none");
  $(".active-cuisine2").show();  
  $(".active-cuisine,.active-cuisine1,.active-cuisine3,.active-cuisine4,.active-cuisine5").hide();
});
$(".drop_4").mouseover(function(e) {
  $(".drop_1 .ms-options,.drop_2 .ms-options,.drop_3 .ms-options,.drop_5 .ms-options,.drop_6 .ms-options").css("display", "none");
  $(".active-cuisine2").show();  
  $(".active-cuisine,.active-cuisine1,.active-cuisine3,.active-cuisine4,.active-cuisine5").hide();
});
$(".drop_3").mouseover(function(e) {
  $(".drop_1 .ms-options,.drop_2 .ms-options,.drop_4 .ms-options,.drop_5 .ms-options,.drop_6 .ms-options").css("display", "none");
  $(".active-cuisine2").show();  
  $(".active-cuisine,.active-cuisine1,.active-cuisine3,.active-cuisine4,.active-cuisine5").hide();
});
$(".drop_1").mouseover(function(e) {
  $(".drop_2 .ms-options,.drop_3 .ms-options,.drop_4 .ms-options,.drop_5 .ms-options,.drop_6 .ms-options").css("display", "none");
  $(".active-cuisine").show();  
  $(".active-cuisine1,.active-cuisine2,.active-cuisine3,.active-cuisine4,.active-cuisine5").hide(); 
});
$(".drop_2").mouseover(function(e) {
  $(".drop_1 .ms-options,.drop_3 .ms-options,.drop_4 .ms-options,.drop_5 .ms-options,.drop_6 .ms-options").css("display", "none"); 
  $(".active-cuisine1").show();
  $(".active-cuisine,.active-cuisine2,.active-cuisine3,.active-cuisine4,.active-cuisine5").hide();  
});

$('.anymerchant select[multiple]').multiselect({
    columns:1,
    placeholder: 'any Merchant'
});
//	
	$(".ms-options-wrap button,.active-cuisine5").mouseover(function(){
        $(".ms-options").css("display", "block");
    });
	$(".ms-options-wrap button,.active-cuisine4").mouseover(function(){
        $(".ms-options").css("display", "block");
    });
	$(".ms-options-wrap button,.active-cuisine3").mouseover(function(){
        $(".ms-options").css("display", "block");
    });
	$(".ms-options-wrap button,.active-cuisine2").mouseover(function(){
        $(".ms-options").css("display", "block");
		
    });
	$(".ms-options-wrap button,.active-cuisine").mouseover(function(){
        $(".ms-options").css("display", "block");
    }); 
	
	$(".ms-options-wrap button,.active-cuisine1").mouseover(function(){
        $(".ms-options").css("display", "block");
    }); 
	$(".drop_1").mouseout(function(){
        $(".ms-options").css("display", "none");
		$(".ms-options-wrap button").css("padding", "7px 0px 7px 5px");
		$(".ms-options-wrap button").css("border-radius", "5px");
    }); 
	$(".drop_2").mouseout(function(){
        $(".ms-options").css("display", "none");
		$(".ms-options-wrap button").css("padding", "7px 0px 7px 5px");
		$(".ms-options-wrap button").css("border-radius", "5px");
    }); 
	$(".drop_3").mouseout(function(){
        $(".ms-options").css("display", "none");
		$(".ms-options-wrap button").css("padding", "7px 0px 7px 5px");
		$(".ms-options-wrap button").css("border-radius", "5px");
    }); 
	$(".drop_4").mouseout(function(){
        $(".ms-options").css("display", "none");
		$(".ms-options-wrap button").css("padding", "7px 0px 7px 5px");
		$(".ms-options-wrap button").css("border-radius", "5px");
    }); 
	$(".drop_5").mouseout(function(){
        $(".ms-options").css("display", "none");
		$(".ms-options-wrap button").css("padding", "7px 0px 7px 5px");
		$(".ms-options-wrap button").css("border-radius", "5px");
    }); 
	$(".drop_6").mouseout(function(){
        $(".ms-options").css("display", "none");
		$(".ms-options-wrap button").css("padding", "7px 0px 7px 5px");
		$(".ms-options-wrap button").css("border-radius", "5px");
    }); 
	$(".ms-options").mouseout(function(){
        $(this).css("display", "none");
		$(this).hide();
		$(".active-cuisine,.active-cuisine1,.active-cuisine2,.active-cuisine3,.active-cuisine4,.active-cuisine5").hide();
		$(".ms-options-wrap button").css("border-radius", "0px");
    });
	$(".ms-options").mouseover(function(){
        $(this).css("display", "block");
		$(".active-cuisine,.active-cuisine1,.active-cuisine2,.active-cuisine3,.active-cuisine4,.active-cuisine5").show();
		$(".ms-options-wrap button").css("border-radius", "0px");
    });
//
$('#datetimepicker2').datetimepicker({
	lang:'en',
	timepicker:false,
	format:'d/m/Y',
	formatDate:'Y/m/d',
});
$('#datetimepicker1').datetimepicker({
	lang:'en',
	timepicker:false,
	format:'Y-m-d',
	formatDate:'Y-m-d',
});
//
$(function() {
	if ($(window).scrollTop() > 200) {
		$("#back-top").show();
	} else {
		$("#back-top").hide();
	}
	$(window).scroll(function() {
		if ($(this).scrollTop() > 200) {
			$('#back-top').fadeIn();
		} else {
			$('#back-top').fadeOut();
		}
	});
	$('#back-top a').click(function() {
		$('body,html').animate({
			scrollTop : 0
		}, 800);
		return false;
	});
});


//
	$('#main-nav  ul.drop').dropotron({ offsetY: -10 });
	$('.flexslider').flexslider({
		animation: 'fade',
		controlsContainer: '.flexslider'
	});
});

