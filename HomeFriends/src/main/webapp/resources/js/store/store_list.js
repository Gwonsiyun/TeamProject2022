$(document).ready( function(){
	/*$("#priceSelected").on('click', function() {
		var start = $("#priceStart").val()*1;
		var end = $("#priceEnd").val()*1;
		if (start < 0) start = 0;
		if (end <= 0) end = Math.pow(10, 9);
		alert(start+" ~ "+end);
	});*/
	
	/*$(".category_link").click(function(){
		var id = $(this).attr('id');
		location.href = 'store_list.do?category='+id;
	});*/
	
	//카테고리 이동처리
	$(".category_link2").click(function(){
		var id = $(this).attr('id');
		location.href = 'store_list.do?detail='+id;
	});


	
	//가격범위 노출
	textchange = false;
	$(".price_btn").click(function(){
	  	if(textchange){
	      textchange = false;
	      $("#pricePopup").hide();
	      $(this).css({"background" : "none", "color" : "black"});
		  price_btn = false;
	    }else{
	      textchange = true;
	      $(this).css({"background" : "#ffb6c1", "color" : "white"});
			$("#pricePopup").show();
			price_btn = true;
	    }
	})
	
	//가격 인풋에 숫자만 입력가능
	$(".numberOnly").on("keyup", function() {
    	$(this).val($(this).val().replace(/[^0-9]/g,""));
    });

	
});

//정렬방식 클릭시 색상변경
var free = false;
var price_btn = false;

function freeFn(e){
	if($(e).css("color")!="rgb(255, 255, 255)"){
		$(e).css({"background" : "#ffb6c1", "color" : "white"});
		free=true;
		lookup();
	}else{
		$(".list_btn").css({"background" : "none", "color" : "black"});
		free=false;
		lookup();
	}
}

//상품 필터
function lookup(){
	var lookupdata = "";
	if($("#priceStart").val()!=""){
		var priceStart= $("#priceStart").val();
	}else{
		var priceStart= 0;
	}
	if($("#priceEnd").val()!=""){
		var priceEnd=$("#priceEnd").val();
	}else{
		var priceEnd= 99999999999999;
	}
	var order=$("#sort option:selected").val();
	if(free==true){
		lookupdata += "free=Y";
	}else{
		lookupdata += "free=N";
	}
	if(price_btn==true){
		lookupdata += "&priceStart="+priceStart+"&priceEnd="+priceEnd;
		
	}else{
		lookupdata += "&price1=0&priceStart=0&priceEnd=99999999999999";
	}
	lookupdata += "&order="+order+"&category"+category+"&detail"+detail;
	console.log(lookupdata);
	$.ajax({
		type : "GET",
		url : "lookup",
		data : lookupdata,
		success : function() {
			
			console.log();

			alert("잘 다녀옴.");

		}
	});
}

let match = {10:"가구", 11:"가구 > 소파", 12:"가구 > 수납장", 13:"가구 > 의자", 14:"가구 > 침대", 15:"가구 > 테이블", 16:"가구 > 화장대",
			20:"조명", 21:"조명 > LED", 22:"조명 > 단스텐드", 23:"조명 > 장스텐드", 24:"조명 > 무드등", 25:"조명 > 천장등",
			30:"침구", 31:"침구 > 베게", 32:"침구 > 이불", 33:"침구 > 커버", 34:"침구 > 커튼", 35:"침구 > 쿠션 & 방석",
			40:"가전", 41:"가전 > 냉장고", 42:"가전 > TV", 43:"가전 > 세탁기", 44:"가전 > 에어컨", 45:"가전 > 청소기",
			50:"주방", 51:"주방 > 그릇 & 접시", 52:"주방 > 냄비 & 팬", 53:"주방 > 보관용기", 54:"주방 > 수저", 55:"주방 > 식기건조대", 56:"주방>컵",
			60:"생활", 61:"생활 > 욕실", 62:"생활 > 수건", 63:"생활 > 청소", 64:"생활 > 세탁", 65:"생활 > 생활잡화",
			"Discount":"오늘의 딜","sell_cnt":"Best","review_cnt":"추천상품"};



