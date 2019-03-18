<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>accomodation</title>
 
<script src="../JS/AccomodationMain.js"></script>
<link href="../CSS/AccomodationMain.css" rel="stylesheet" type="text/css">
</head>

<body>
<div id="mainHeader">

<div id="mainHeaderContent">
<div id="mainHeaderMent"><h2><strong>모든 숙소가 한곳에!</strong></h2> 아늑한 리조트 부터 화려한 호텔까지!</div>
<div id="mainHeaderBox">

<div class="mainHeaderSerach"><div class="top">숙소<div class="bottom">리조트</div></div></div>

<div class="mainHeaderSerach"><div class="top">지역<div class="bottom">리조트</div></div></div>

<div class="mainHeaderSerach"><div class="top">체크인<div class="bottom"><input type="date"></div></div></div>

<div class="mainHeaderSerach"><div class="top">체크아웃<div class="bottom"><input type="date"></div></div></div>

<div class="mainHeaderSerach"><div id="serach">검색</div></div>

</div>
</div>
</div>
<div id="mainContent">
<div id="listMention">4가지 종류의 숙소를 골라보세요!</div>
<div id="accomodationList">
<div class="accmodation"> <img src="../images/hotel.jpg">호텔<p>5개 호텔</p></div>
<div class="accmodation"> <img src="../images/motel.jpg">모텔<p>5개 모텔</p></div>
<div class="accmodation"> <img src="../images/pension.jpg">팬션<p>5개 팬션</p></div>
<div class="accmodation"> <img src="../images/resort.jpg">리조트<p>5개 리조트</p></div>
</div>
<div id="accomodationList1">
        <div id="listMention">모든 숙박을 한눈에!</div>
<div id="list">
       
        <ul id="slideShow">

              
            <li><div class="listContent">
                    <img src=".\img\resorts.png" />
                    <div class="mention" style="line-height:2em">
                        
                        <h2>가평 리조트</h2>
                      
                        <h3>텐몬칸도리 트램역(Tenmonkandori Tram Station)에서 도보로 단 2분 거리에 위치한 Remm Kagoshima는 마사지 의자를 갖춘 현대적인 숙박 시설입니다. 전 구역에서 무료 WiFi가 제공되며 바디 케어 서비스를 이용해서 피로를 풀 수 있습니다. </h3>
                    </div>

                </div></li>
           
            <li><div class="listContent">
                    <img src=".\img\hotels.png" />
                    <div class="mention">
                            <h2>가평 리조트</h2>
                        <h3>텐몬칸도리 트램역(Tenmonkandori Tram Station)에서 도보로 단 2분 거리에 위치한 Remm Kagoshima는 마사지 의자를 갖춘 현대적인 숙박 시설입니다. 전 구역에서 무료 WiFi가 제공되며 바디 케어 서비스를 이용해서 피로를 풀 수 있습니다. </h3>
                    </div>
                   
                </div></li>
            
                <li><div class="listContent">
                        <img src=".\img\motelss.jpg" />
                        <div class="mention">
                                <h2>가평 리조트</h2>
                            <h3>텐몬칸도리 트램역(Tenmonkandori Tram Station)에서 도보로 단 2분 거리에 위치한 Remm Kagoshima는 마사지 의자를 갖춘 현대적인 숙박 시설입니다. 전 구역에서 무료 WiFi가 제공되며 바디 케어 서비스를 이용해서 피로를 풀 수 있습니다. </h3>
                        </div>
                       
                    </div></li>

                    <li><div class="listContent">
                            <img src=".\img\pensionss.jpg" />
                            <div class="mention">
                                    <h2>가평 리조트</h2>
                                <h3>텐몬칸도리 트램역(Tenmonkandori Tram Station)에서 도보로 단 2분 거리에 위치한 Remm Kagoshima는 마사지 의자를 갖춘 현대적인 숙박 시설입니다. 전 구역에서 무료 WiFi가 제공되며 바디 케어 서비스를 이용해서 피로를 풀 수 있습니다. </h3>
                            </div>
                           
                        </div></li>    
        </ul>
    </div>
    <div id="controll">
			<a href="javascript:slide('slideShow', 'left', 2)">◀</a> <a
				href="javascript:slide('slideShow', 'right', 2)">▶</a>
		</div>
</div>

</div>
</div>
</body>

</html>