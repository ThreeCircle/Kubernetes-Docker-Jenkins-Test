<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<style>
		body {
			background: black;
			height: 6000px;
			font-family: 'nunumsquare';
		}
		div {
			margin-top: 1000px;
			color: white;
			text-align: center;
			opacity: 0;
			transition: all 1s;
			transform: rotate(-720deg);
		}
		ul {
			color: white;
		}
		
	</style>
	
	<div><h1>갤럭시링 출시</h1></div>
	<div><h1>심박수나 다양한 건강 및 수면체크 기능이 있습니다!</h1></div>
	<div><h1>배터리도 오래갑니다!!</h1></div>
	<div><h1>근데 그게 왜 필요한데?</h1></div>
	<div><img src="img/sad.gif"></div>
	<div><h6>아니</h6></div>
	
	<script>
		
		let observer = new IntersectionObserver((e)=>{
			e.forEach((박스)=>{
				if (박스.isIntersecting){
					박스.target.style.opacity = 1;
					박스.target.style.transform = 'rotate(0deg)';
				}
				else {
					박스.target.style.opacity = 0;
				}
				// 박스.intersectionRatio
				// 해당 박스가 화면에 몇퍼센트출력되었는지 표시
				// 반쯤 보이면 0.5 출력됨
			})
		})
		
		let div = document.querySelectorAll('div')
		observer.observe(div[0])
		observer.observe(div[1])
		observer.observe(div[2])
		observer.observe(div[3])
		
	</script>
	

</body>
</html>