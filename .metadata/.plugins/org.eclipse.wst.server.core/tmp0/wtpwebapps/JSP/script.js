$(function(){
      

        // 메뉴 : 하나씩 나오기
        $(".nav > ul > li").mouseover(function(){
            $(this).find(".submenu").stop().slideDown(200);
        });
        $(".nav > ul > li").mouseout(function(){
            $(this).find(".submenu").stop().slideUp(200);
        });

       function slide(){
		   $(".slide_list ul").animate({top:-300},1000,function(){
			   $(".slide_list ul").append($(".slide_list ul li").first());
			   $(".slide_list ul").css({top:0});
		   });
	   }
	   setInterval(slide,3000);
       
    });
    
 
	