
//banner特效
$(document).ready(function(e) {
	$(".banner_box").show();
	$(".ul_2 li").first().addClass("hover");
    var pic=new Array();
	pic[0]="images/slider-image1.jpg";
	pic[1]="images/slider-image2.jpg";
	pic[2]="images/slider-image3.jpg";
	pic[3]="images/slider-image4.jpg";
	pic[4]="images/slider-image5.jpg";
	pic[5]="images/slider-image6.jpg";
	pic[6]="images/slider-image7.jpg";
	var picNo=0;
	
	
	var myClock=setInterval(function(){nextPic();},3000);
	function nextPic(){
		picNo=picNo+1;
		if(picNo>6){
			picNo=0;
			}
		move(picNo);

		} 
		$("#banner ul li").mouseover(function(e){
			picNo=$(this).index();
			move(picNo);
			});
   function move(i){
	   
		if(picNo==0){
		  $(".banner_box").show();
		  $(".banner_box2,.banner_box3,.banner_box4,.banner_box5,.banner_box6,.banner_box7").hide();
		}else if(picNo==1){
			$(".banner_box2").show();
		    $(".banner_box,.banner_box3,.banner_box4,.banner_box5,.banner_box6,.banner_box7").hide();	
		}else if(picNo==2){
			$(".banner_box3").show();
		    $(".banner_box,.banner_box2,.banner_box4,.banner_box5,.banner_box6,.banner_box7").hide();	
		}else if(picNo==3){
			$(".banner_box4").show();
		    $(".banner_box,.banner_box2,.banner_box3,.banner_box5,.banner_box6,.banner_box7").hide();	
		}else if(picNo==4){
			$(".banner_box5").show();
		    $(".banner_box,.banner_box2,.banner_box3,.banner_box4,.banner_box6,.banner_box7").hide();	
		}else if(picNo==5){
			$(".banner_box6").show();
		    $(".banner_box,.banner_box2,.banner_box3,.banner_box4,.banner_box5,.banner_box7").hide();	
		}else if(picNo==6){
			$(".banner_box7").show();
		    $(".banner_box,.banner_box2,.banner_box3,.banner_box4,.banner_box5,.banner_box6").hide();	
		}
	  $(".ul_2 li").eq(picNo).addClass("hover").siblings("li").removeClass("hover");

	   $(".banner_img").attr("src",pic[i]);
	   $(".sLi").removeClass("sLi");
	   $("#banner ul li").eq(i).addClass("sLi");
	   }
	   $("#banner ul").mouseover(function(e) {
        clearInterval(myClock);
    });
	  $("#banner ul").mouseout(function(e) {
       myClock=setInterval(function(){nextPic();},3000);
    });
	
	
	$(".gfwx").stop().mouseover(function(e) {
        $(".weixin img").show();
    });	
	$(".gfwx").stop().mouseout(function(e){
		$(".weixin img").hide();
	 });
	 });
//production特效
	//上装部分
	$(document).ready(function(e) {
	$(".sz img").mouseover(function(e) {
        $(this).stop().animate({width:'257px',margin:'0'});
    });
	$(".sz img").mouseout(function(e) {
        $(this).stop().animate({width:'237px',margin:'10px'});
    });
	$(".sz").mouseover(function(e) {
        $(this).css("border","1px solid orange");
    });
	$(".sz").mouseout(function(e) {
        $(this).css("border","1px solid #EEE");
    });
	$(".s2").click(function(e) {
		$(".s1").css("background-color","#FFF");
		$(".s3").css("background-color","#FFF");
		$(".s4").css("background-color","#FFF");
		$(".s2").css("background-color","#FFC");
		$("#CN").hide();
		$("#HL").hide();
		$("#RS").hide();
		$("#OM").show();
    });
	$(".s1").click(function(e) {
		$(".s2").css("background-color","#FFF");
		$(".s3").css("background-color","#FFF");
		$(".s4").css("background-color","#FFF");
		$(".s1").css("background-color","#FFC");
		$("#OM").hide();
		$("#HL").hide();
		$("#RS").hide();
		$("#CN").show();
    });
	$(".s3").click(function(e) {
		$(".s1").css("background-color","#FFF");
		$(".s2").css("background-color","#FFF");
		$(".s4").css("background-color","#FFF");
		$(".s3").css("background-color","#FFC");
		$("#CN").hide();
		$("#OM").hide();
		$("#RS").hide();
		$("#HL").show();
    });
	$(".s4").click(function(e) {
		$(".s1").css("background-color","#FFF");
		$(".s2").css("background-color","#FFF");
		$(".s3").css("background-color","#FFF");
		$(".s4").css("background-color","#FFC");
		$("#OM").hide();
		$("#HL").hide();
		$("#CN").hide();
		$("#RS").show();
    });
	});
	//下装部分
	$(document).ready(function(e) {
	$(".xz img").mouseover(function(e) {
        $(this).stop().animate({width:'257px',margin:'0'});
    });
	$(".xz img").mouseout(function(e) {
        $(this).stop().animate({width:'237px',margin:'10px'});
    });
	$(".xz").mouseover(function(e) {
        $(this).css("border","1px solid orange");
    });
	$(".xz").mouseout(function(e) {
        $(this).css("border","1px solid #EEE");
    });
	$(".x2").click(function(e) {
		$(".x1").css("background-color","#FFF");
		$(".x3").css("background-color","#FFF");
		$(".x4").css("background-color","#FFF");
		$(".x2").css("background-color","#FFC");
		$("#X_CN").hide();
		$("#X_HL").hide();
		$("#X_RS").hide();
		$("#X_OM").show();
    });
	$(".x1").click(function(e) {
		$(".x2").css("background-color","#FFF");
		$(".x3").css("background-color","#FFF");
		$(".x4").css("background-color","#FFF");
		$(".x1").css("background-color","#FFC");
		$("#X_OM").hide();
		$("#X_HL").hide();
		$("#X_RS").hide();
		$("#X_CN").show();
    });
	$(".x3").click(function(e) {
		$(".x1").css("background-color","#FFF");
		$(".x2").css("background-color","#FFF");
		$(".x4").css("background-color","#FFF");
		$(".x3").css("background-color","#FFC");
		$("#X_CN").hide();
		$("#X_OM").hide();
		$("#X_RS").hide();
		$("#X_HL").show();
    });
	$(".x4").click(function(e) {
		$(".x1").css("background-color","#FFF");
		$(".x2").css("background-color","#FFF");
		$(".x3").css("background-color","#FFF");
		$(".x4").css("background-color","#FFC");
		$("#X_OM").hide();
		$("#X_HL").hide();
		$("#X_CN").hide();
		$("#X_RS").show();
    });
	});
	//鞋子部分
	$(document).ready(function(e) {
	$(".ft img").mouseover(function(e) {
        $(this).stop().animate({width:'257px',margin:'0'});
    });
	$(".ft img").mouseout(function(e) {
        $(this).stop().animate({width:'237px',margin:'10px'});
    });
	$(".ft").mouseover(function(e) {
        $(this).css("border","1px solid orange");
    });
	$(".ft").mouseout(function(e) {
        $(this).css("border","1px solid #EEE");
    });
	$(".f2").click(function(e) {
		$(".f1").css("background-color","#FFF");
		$(".f3").css("background-color","#FFF");
		$(".f4").css("background-color","#FFF");
		$(".f2").css("background-color","#FFC");
		$("#F_CN").hide();
		$("#F_HL").hide();
		$("#F_RS").hide();
		$("#F_OM").show();
    });
	$(".f1").click(function(e) {
		$(".f2").css("background-color","#FFF");
		$(".f3").css("background-color","#FFF");
		$(".f4").css("background-color","#FFF");
		$(".f1").css("background-color","#FFC");
		$("#F_OM").hide();
		$("#F_HL").hide();
		$("#F_RS").hide();
		$("#F_CN").show();
    });
	$(".f3").click(function(e) {
		$(".f1").css("background-color","#FFF");
		$(".f2").css("background-color","#FFF");
		$(".f4").css("background-color","#FFF");
		$(".f3").css("background-color","#FFC");
		$("#F_CN").hide();
		$("#F_OM").hide();
		$("#F_RS").hide();
		$("#F_HL").show();
    });
	$(".f4").click(function(e) {
		$(".f1").css("background-color","#FFF");
		$(".f2").css("background-color","#FFF");
		$(".f3").css("background-color","#FFF");
		$(".f4").css("background-color","#FFC");
		$("#F_OM").hide();
		$("#F_HL").hide();
		$("#F_CN").hide();
		$("#F_RS").show();
    });
	});
	 
	 
	 
	 