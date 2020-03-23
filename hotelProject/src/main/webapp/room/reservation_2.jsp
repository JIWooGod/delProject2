<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./js/rolling.css" media="screen">
<link rel="stylesheet" href="./css/slide.css" media="screen">
<script src="./js/jquery-1.8.3.min.js"></script>
<script src="./js/jquery.rolling.js"></script>
<script src="./js/jquery.flexslider.js"></script>
<script>
$(window).load(function() {
  $('.flexslider').flexslider({
	animation: "slide",
	controlsContainer: $(".custom-controls-container"),
	customDirectionNav: $(".custom-navigation a"),
	slideshowSpeed :4000
  });
});
</script>
<body>
	<jsp:include page="../includePage/Header.jsp" flush="true" />

	<div id='content_wrapper'>

		<div id='sub_slide'>
			<li class='slide6'>&nbsp;</li>
		</div>

		<div class='sub_menu'>
			

			<div class='tl'>
				<div class='line'></div>
				<div class='title'>RESERVATION</div>
				<div class='line'></div>
			</div>
		</div>

		<div class='content_box'>
			
		<div class='line_height30'></div>

			<div class='sub_reservation'>
				<!-- 객실 정보 시작 -->

				<c:if test="${room.roomGrade eq 'standard' }">
					<div class='tl'>스탠다드</div>
				</c:if>
				<c:if test="${room.roomGrade eq 'deluxe' }">
					<div class='tl'>디럭스</div>
				</c:if>
				<c:if test="${room.roomGrade eq 'deluxeSuite' }">
					<div class='tl'>디럭스 스위트</div>
				</c:if>
				<c:if test="${room.roomGrade eq 'royalSuite' }">
					<div class='tl'>로열 스위트</div>
				</c:if>
				<c:if test="${room.roomGrade eq 'preSuite' }">
					<div class='tl'>프리미어 스위트</div>
				</c:if>



				<div class='con'>
				<div class="hs_reservation">
					<div class="hs_reservation_section hs_reservation_box1">
					<div class="hs_reservation_left">
					<table>
						<tr align="center">
							<td><c:forTokens items="${room.roomPic }" delims="-"
									var="roomPic" varStatus="status">
									<c:if test="${status.index == 0}">
										<img src="room/update/${roomPic }" width = "500px"/>
									</c:if>
								</c:forTokens></td>
					
						</tr>
					</table>
					</div>
						<div class="hs_reservation_left">
							<ul class="hs_reservation_litt">
									<li><strong>체크인</strong> 
										 &nbsp;  <fmt:formatDate value="${ reservation.rmbkChkIn }" type = "date" pattern="yyyy년MM월dd일"/>
									</li>
									<li><strong>체크아웃</strong> 
										 &nbsp;  <fmt:formatDate value="${ reservation.rmbkChkOut }" type = "date" pattern="yyyy년MM월dd일"/>
									</li>
									<li><strong>객실수</strong> 
										 &nbsp; ${reservation.roomCount}
									</li>
									<li><strong>인원 수</strong> 
										 &nbsp; ${reservation.rmbkPeople}
									</li>
										<li><strong>숙박일</strong> 
										 &nbsp; ${reservation.roomDays}
									</li>
									
									
								</ul>
						</div>
				</div>
				</div>
				</div>
				<div class='line_height50'></div>
				<div class='line_box'></div>
				<div class='line_height30'></div>
				<script language="javascript"
					src="/_rootWeb/library/script/common.js"></script>
				<script language="javascript">
    <!--
    var callFlag = 0;
    function callOption(code){
        if(callFlag > 0) return;
        callFlag++;
        var param = "mode=subcall&code=" + code;
        var obj = document.getElementById("optionList");
        for(i = obj.childNodes.length -1; i >= 0 ; i--){
            var child = obj.childNodes[i];
            obj.removeChild(child);
        }
        $.ajax({
            type: "POST",
            url: "./sub_call.php",
            dataType:"xml",
            data:param,
            success:function(data){
                var totCount = data.getElementsByTagName("totCount").item(0).firstChild.nodeValue;
                var xmlObj = data.getElementsByTagName("item");
                for(i = 0; i < totCount; i++){
                    var code = xmlObj[i].getElementsByTagName("code").item(0).firstChild.nodeValue;
                    var name = xmlObj[i].getElementsByTagName("name").item(0).firstChild.nodeValue;
                    var type = xmlObj[i].getElementsByTagName("type").item(0).firstChild.nodeValue;
                    var value = xmlObj[i].getElementsByTagName("value").item(0).firstChild.nodeValue;
                    var price = xmlObj[i].getElementsByTagName("price").item(0).firstChild.nodeValue;

                    var  LI = document.createElement("li");
                    var HTML = "<strong>" + name + "</strong>";

                    if(type == '01'){					// 텍스트
                        HTML = HTML + "<div>";
                        if(price){
                            HTML = HTML + "<div>";
                            HTML = HTML + "<label><input type='hidden' name='opt_code[]' id='opt_code' value='" + code + "'>";
                            HTML = HTML + "<input type='hidden' name='opt_money" + code + "' id='opt_money" + code + "' value='" + price + "'>";
                            HTML = HTML + "<input type='checkbox' name='opt_price" + code + "' id='opt_price" + code + "' value='y' onClick='javascript:calMoneyNew('" + code + "');'>" + value +"(1인" + number_format(price) +"원)</label>";
                            HTML = HTML + "<label><input type='text' name='opt_item" + code + "' id='opt_item" + code + "' class='hs_input' style='width:80px;' onKeyUp=\"javascript:NumCheck(this,this.value);calMoneyNew('" + code +"');\">명</label>";
                            HTML = HTML + "</div>";
                        }else{
                            HTML = HTML + "<label><input type='text' name='opt_item" + code + "' id='opt_item" + code + "' class='hs_input' width='width:120px;'></label>";
                        }
                        HTML = HTML + "</div>";
                        LI.innerHTML = HTML;
                        obj.appendChild(LI);
                    }else if(type == '02'){		// 셀렉트
                        var SEL = document.createElement("select");
                        SEL.name = "opt_item" + code;
                        tmp = value.split(',');
                        HTML = HTML + "<div>";
                        SEL.options[0] = new Option("선택","");
                        for(ii = 0; ii < tmp.length; ii++){
                            SEL.options[ii + 1] = new Option(tmp[ii],tmp[ii]);
                        }
                        HTML = HTML + "<input type='hidden' name='opt_code[]' id='opt_code' value='" + code + "'><label id='selBox'></label>";
                        HTML = HTML + "</div>";
                        LI.innerHTML = HTML;
                        obj.appendChild(LI);
                        var objBox = document.getElementById("selBox");
                        objBox.appendChild(SEL);
                    }else if(type == '03'){		// 라디오
                        tmp = value.split(',');
                        HTML = HTML + "<div><input type='hidden' name='opt_code[]' id='opt_code' value='" + code + "'>";
                        for(ii = 0; ii < tmp.length; ii++){
                            HTML = HTML + "<label><input type='radio' name='opt_item" + code + "' value='" + tmp[ii]+ "'>" + tmp[ii]+ "</label>";
                        }
                        LI.innerHTML = HTML;
                        obj.appendChild(LI);
                    }
                }
                callFlag = 0;
            },
            error:function(xhr){

            }
        });
    }
    function calMoneyNew(code){
        var frm = document.writeF;
        var param = "roomCode=" + code + "&" + $("#writeF").serialize();
        $.ajax({
            type: "POST",
            url: "./process/room_money_list.php",
            dataType:"json",
            data:param,
            success:function(data){
                var totMoneyDiv = document.getElementById("totMoney");
                var totalMoney = data.totalMoney;
                //addPrice = addPrice * days;
                totMoneyDiv.innerHTML = number_format(totalMoney) + "원";
                frm.total.value = totalMoney;
                $("#btnNext").show();
            },
            error:function(xhr){

            }
        });
    }
    function calMoney(){
        var frm = document.writeF;
        var roomCode = "";
        var roomNum = frm.roomNum.value;
        var num = frm.num.value;
        var days = frm.days.value;
        var optCodeList = document.getElementsByName("opt_code[]");
        var btnNext = document.getElementById("btnNext");
        if(frm.room.length == null || frm.room.length == undefined){
            roomCode = frm.room.value;
        }else{
            for(i = 0; i < frm.room.length; i++){
                if(frm.room[i].checked){
                    roomCode = frm.room[i].value;
                }
            }
        }
        var price = document.getElementById("roomPrice" + roomCode);
        var aPrice = document.getElementById("roomaPrice" + roomCode);
        var minNum = document.getElementById("minNum" + roomCode);
        var maxNum = document.getElementById("maxNum" + roomCode);
        var totMoneyDiv = document.getElementById("totMoney");
        var addNumPrice = 0;
        if(days == '') days = 1;
        else days = parseInt(days,10);

        if(minNum.value != ''){
            minNum = parseInt(minNum.value,10);
        }else{
            minNum = 0;
        }
        if(maxNum.value != ''){
            maxNum = parseInt(maxNum.value,10);
        }else{
            maxNum = 0;
        }

        var totalMoney = 0;
        price = parseInt(price.value,10);
        aPrice = parseInt(aPrice.value,10);

        var totalNum = roomNum * minNum;
        num  = parseInt(num,10);
        totalNum = parseInt(totalNum,10);
        overNum = num - totalNum;
        if(overNum < 0) overNum = 0;
        addNumPrice = overNum * aPrice;
        totalMoney = (price * roomNum * days) + addNumPrice;
        addPrice = 0;


        for(i = 0; i < optCodeList.length; i++){
            code = optCodeList[i].value;
            if(code){
                var objPriceChk = document.getElementById("opt_price" + code);
                var objMoney = document.getElementById("opt_money" + code);
                var objNum = document.getElementById("opt_item" + code);
                var money = 0;
                var num = 0;
                if(objPriceChk != null && objPriceChk != undefined){
                    if(objPriceChk.checked){
                        if(objMoney.value != '') money = parseInt(objMoney.value,10);
                        if(objNum.value != '') num = parseInt(objNum.value,10);

                        addPrice = addPrice + (money * num);

                    }
                }
            }
        }
        addPrice = addPrice * days;
        totMoneyDiv.innerHTML = number_format(totalMoney + addPrice) + "원";
        frm.total.value = totalMoney + addPrice;
        btnNext.style.display = "block";
    }

    function goNext(){
        var frm = document.writeF;
        frm.submit();
    }
    //-->
</script>
				<div class="hs_reservation">
					<div class="hs_reservation_section hs_reservation_box2">
						<form name="writeF" id="writeF" method="POST" action="./reservation_3.html">
							<input type="hidden" name="fromdate" value="2020-03-16">
							<input type="hidden" name="todate" value="2020-03-17"> <input
								type="hidden" name="roomNum" value="1"> <input
								type="hidden" name="num" value="1"> <input type="hidden"
								name="days" value="1"> <input type="hidden" name="total"
								value="">
							
							<!-- 객실전망 선택 -->
							<div class="hs_reservation_left" style="padding: 0 20px 0 50px;">
								<h3 class="hs_reservation_title">객실 전망</h3>
								<ul class="hs_reservation_room_select">
										<li><label><span class="hs_checkbox"> 
												<input type="radio" name="roomView" id="roomView" value="cityView"checked>&nbsp;
										</span> <span class="hs_image disabled"> </span>
									 <span class="hs_room_title">도심 뷰 <span style="padding-top: 3px;"><b class="point"style="font-size: 16px;"></b> <!-- 전화문의 바랍니다. --></span>
										</span> 
									</label></li>
									<li><label><span class="hs_checkbox"> 
												<input type="radio" name="roomView" id="roomView" value="oceanView">&nbsp;
										</span> <span class="hs_image disabled"> </span> <span
											class="hs_room_title"> 오션 뷰  <span
												style="padding-top: 3px;"><b class="point"
													style="font-size: 12px;">+ 50500 KRW</b> </span>
										</span> 
									</label></li>
								
									
								</ul>
							</div>

							<!--침대 옵션 선택-->
							<div class="hs_reservation_left">
								<h3 class="hs_reservation_title">침대 유형</h3>
								<ul class="hs_reservation_room_select">
									
										<li><label><span class="hs_checkbox"> 
												<input type="radio" name="roomBed" id="roomBed" value="double" checked>&nbsp;
										</span> <span class="hs_image disabled"> </span> <span
											class="hs_room_title"> 더블 <span
												style="padding-top: 3px;"><b class="point"
													style="font-size: 16px;"></b></span>
										</span> 
									</label></li>
									<li><label><span class="hs_checkbox"> 
												<input type="radio" name="roomBed" id="roomBed" value="tween">&nbsp;
										</span> <span class="hs_image disabled"> </span> <span
											class="hs_room_title"> 트윈 <span
												style="padding-top: 3px;"><b class="point"
													style="font-size: 12px;">+ 20500 KRW</b></span>
										</span> 
									</label></li>
									<li><label><span class="hs_checkbox"> 
												<input type="radio" name="roomBed" id="roomBed" value="family">&nbsp;
										</span> <span class="hs_image disabled"> </span> <span
											class="hs_room_title"> 패밀리 <span
												style="padding-top: 3px;"><b class="point"
													style="font-size: 12px;">+ 40500 KRW</b></span>
										</span> 
									</label></li>
									
								</ul>
							</div>
							<!--//객실선택-->

							<!--옵션-->
							<div class="hs_reservation_right">
								<h3 class="hs_reservation_title">옵션</h3>
								<ul class="hs_reservation_litt" id="optionList">
									<li><input type = "checkbox" name = "dndMode" value = "on">DoNotDisturb</li>
									<li><input type = "checkbox" name = "noFeader" value = "on">깃털 알레르기</li>
									<li><input type = "checkbox" name = "uncomfort" value = "on">장애인 편의 객실</li>
								</ul>
								<div class="hs_reservation_total"></div>
								
								특별 요청 사항<br/><br/>
								<textarea name="rmbkContent" style="width:350px; height:100px;"></textarea>
									
							
							</div>
							<!--//옵션-->
					</div>
					<div class="hs_reservation_section hs_reservation_bottom">
						<div class="hs_reservation_btn_set" id="btnNext">
						<a href="javascript:writeF.submit();" class="hs_reservation_btn_poin" style="color: #FFFFFF;">다음단계</a>
						</div>
					</div>
					
					</form>
				</div>
			</div>
		</div>
		<div class='line_height50'></div>
	</div>
	</div>

	<jsp:include page="../includePage/Footer.jsp" flush="true" />
</body>
</html>