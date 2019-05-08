<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script>
	var url="http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=88f288ab65ba38ddd713e3369d2b534b&targetDt=20190507";
			
	$(function(){
		
		$.ajax({
			type:'GET',
			url:url,
			dataType:'json',
			success:jsonParser
		});
		
		function jsonParser(data){
			var showList=data.boxOfficeResult.dailyBoxOfficeList;
			$(showList).each(function(idx,item){
				document.write("<h2>"+item.rank+","+item.movieNm+"</h2>");
			});
		}
	});		
</script>
</head>
<body>
	<div id ="movie-box">
	
	</div>
</body>
</html>