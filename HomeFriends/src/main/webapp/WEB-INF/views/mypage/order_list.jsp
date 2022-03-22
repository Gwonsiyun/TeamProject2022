<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- 부트스트랩 -->
	<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
      <!-- Bootstrap icon CSS-->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.0/font/bootstrap-icons.css" />
    
	<title>주문배송조회</title>
	
		
	<link href="/controller/css/header.css" rel="stylesheet">
	<link href="/controller/css/nav.css" rel="stylesheet">
	<link href="/controller/css/mypage/order_list.css" rel="stylesheet">
	<link href="/controller/css/footer.css" rel="stylesheet">
	<script src="/controller/js/jquery-3.6.0.min.js"></script>
	<script src="/controller/js/nav.js"></script> 
	<script src="/controller/js/login/join1.js"></script>
</head>
<body>
	<%@ include file="../header.jsp" %>
	<%@ include file="../nav.jsp" %> 
	
	<!-- 본문 영역 -->	
	<section>
	<div class="container">
			<div class="row">
				<div class="col-12 col-md-12 col-lg-12 col-xl-12">
					<form>
					<div class="row">
						<div id="OList1">
							<div class="sbox state col-2" id="payOk">
								<i class="bi bi-credit-card listIcon"></i><br>
								결제완료<br>
								<span class="pinkNum">2</span>
							</div>
							<div class="sbox direction">
								<i class="bi bi-caret-right"></i>
							</div>
							<div class="sbox state col-2">
								<i class="bi bi-box-seam listIcon"></i><br>
								배송준비중<br>
								<span class="pinkNum">2</span>
							</div>
							<div class="sbox direction">
								<i class="bi bi-caret-right"></i>
							</div>
							<div class="sbox state col-2">
								<i class="bi bi-truck listIcon"></i><br>
								배송중<br>
								<span class="pinkNum">0</span>
							</div>
							<div class="sbox direction">
								<i class="bi bi-caret-right"></i>
							</div>
							<div class="sbox state col-2">
								<i class="bi bi-house listIcon"></i><br>
								배송완료<br>
								<span class="pinkNum">0</span>
							</div>
						</div><!-- 주문 상태 박스 -->
					</div>
						<div id="OList2"><!-- 주문 배송 조회 박스 -->
							<div class="filter">
								<select name="day" class="selectgood">
									<option value="month">한달</option>
									<option value="3months">3개월</option>
									<option value="6months">6개월</option>
									<option value="1year">1년</option>
								</select>
								<select name="stateBar" class="selectgood">
									<option value="pay">결제완료</option>
									<option value="ready">배송준비중</option>
									<option value="ing">배송중</option>
									<option value="complete">배송완료</option>
								</select>
							</div>
							<div class="product">
								<div class="row">
									<div class="col-6 buyDate">
										2022.03.21
									</div>
									<div class="col-6 goDatail">
										상세보기
									</div>
									<hr>
								</div>
								<div class="row">
									<div class="col-3 productPic">
										<img src="">
									</div>
									<div class="col-6 productInfo">
										포근한 이불
									</div>
									<div class="col-3 productBtn">
										ㅇㅇㅇ
									</div>
								</div>
								<div class="row">
									<div class="col-12 delState">
										무료배송								
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
	</div>
	</section>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="/controller/js/login/join2.js"></script>

	<%@ include file="../footer.jsp" %>
	<!-- 부트스트랩 -->	

	<!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	-->
	


</body>
</html>