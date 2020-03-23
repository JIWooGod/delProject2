$(function(){
//Main visual
	n = 1;

	$("#img1").css("display", "block");
	$("#visual_bn_btn1").addClass("select");

	myid = setInterval(function () { showing() }, 3500);
	function showing() {
		n++;
		if (n == rollingbacount) {
			n = 1;
		}
		$(".visual_bn_img img").css("display", "none");		
		$("#img" + n).fadeIn();
		$(".visual_bn_textli").removeClass("select");
		$("#visual_bn_btn" + n).addClass("select");
	   
	}//end showing
	
	// 이미지 체인지
	$(".visual_bn_textli").mouseover(function(){
		clearInterval(myid);
		$(".visual_bn_img img").css("display", "none");
		n = parseInt($(this).attr("data-n"));
		$("#img" + n).fadeIn();
		$(".visual_bn_textli").removeClass("select");
		$("#visual_bn_btn" + n).addClass("select");
   
	}).mouseout(function () {
		myid = setInterval(function () { showing() }, 3500)
	});
           

})