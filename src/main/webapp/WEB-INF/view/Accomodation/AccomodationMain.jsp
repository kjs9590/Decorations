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
<div id="mainHeaderMent"><h2><strong>��� ���Ұ� �Ѱ���!</strong></h2> �ƴ��� ����Ʈ ���� ȭ���� ȣ�ڱ���!</div>
<div id="mainHeaderBox">

<div class="mainHeaderSerach"><div class="top">����<div class="bottom">����Ʈ</div></div></div>

<div class="mainHeaderSerach"><div class="top">����<div class="bottom">����Ʈ</div></div></div>

<div class="mainHeaderSerach"><div class="top">üũ��<div class="bottom"><input type="date"></div></div></div>

<div class="mainHeaderSerach"><div class="top">üũ�ƿ�<div class="bottom"><input type="date"></div></div></div>

<div class="mainHeaderSerach"><div id="serach">�˻�</div></div>

</div>
</div>
</div>
<div id="mainContent">
<div id="listMention">4���� ������ ���Ҹ� ��󺸼���!</div>
<div id="accomodationList">
<div class="accmodation"> <img src="../images/hotel.jpg">ȣ��<p>5�� ȣ��</p></div>
<div class="accmodation"> <img src="../images/motel.jpg">����<p>5�� ����</p></div>
<div class="accmodation"> <img src="../images/pension.jpg">�Ҽ�<p>5�� �Ҽ�</p></div>
<div class="accmodation"> <img src="../images/resort.jpg">����Ʈ<p>5�� ����Ʈ</p></div>
</div>
<div id="accomodationList1">
        <div id="listMention">��� ������ �Ѵ���!</div>
<div id="list">
       
        <ul id="slideShow">

              
            <li><div class="listContent">
                    <img src=".\img\resorts.png" />
                    <div class="mention" style="line-height:2em">
                        
                        <h2>���� ����Ʈ</h2>
                      
                        <h3>�ٸ�ĭ���� Ʈ����(Tenmonkandori Tram Station)���� ������ �� 2�� �Ÿ��� ��ġ�� Remm Kagoshima�� ������ ���ڸ� ���� �������� ���� �ü��Դϴ�. �� �������� ���� WiFi�� �����Ǹ� �ٵ� �ɾ� ���񽺸� �̿��ؼ� �Ƿθ� Ǯ �� �ֽ��ϴ�. </h3>
                    </div>

                </div></li>
           
            <li><div class="listContent">
                    <img src=".\img\hotels.png" />
                    <div class="mention">
                            <h2>���� ����Ʈ</h2>
                        <h3>�ٸ�ĭ���� Ʈ����(Tenmonkandori Tram Station)���� ������ �� 2�� �Ÿ��� ��ġ�� Remm Kagoshima�� ������ ���ڸ� ���� �������� ���� �ü��Դϴ�. �� �������� ���� WiFi�� �����Ǹ� �ٵ� �ɾ� ���񽺸� �̿��ؼ� �Ƿθ� Ǯ �� �ֽ��ϴ�. </h3>
                    </div>
                   
                </div></li>
            
                <li><div class="listContent">
                        <img src=".\img\motelss.jpg" />
                        <div class="mention">
                                <h2>���� ����Ʈ</h2>
                            <h3>�ٸ�ĭ���� Ʈ����(Tenmonkandori Tram Station)���� ������ �� 2�� �Ÿ��� ��ġ�� Remm Kagoshima�� ������ ���ڸ� ���� �������� ���� �ü��Դϴ�. �� �������� ���� WiFi�� �����Ǹ� �ٵ� �ɾ� ���񽺸� �̿��ؼ� �Ƿθ� Ǯ �� �ֽ��ϴ�. </h3>
                        </div>
                       
                    </div></li>

                    <li><div class="listContent">
                            <img src=".\img\pensionss.jpg" />
                            <div class="mention">
                                    <h2>���� ����Ʈ</h2>
                                <h3>�ٸ�ĭ���� Ʈ����(Tenmonkandori Tram Station)���� ������ �� 2�� �Ÿ��� ��ġ�� Remm Kagoshima�� ������ ���ڸ� ���� �������� ���� �ü��Դϴ�. �� �������� ���� WiFi�� �����Ǹ� �ٵ� �ɾ� ���񽺸� �̿��ؼ� �Ƿθ� Ǯ �� �ֽ��ϴ�. </h3>
                            </div>
                           
                        </div></li>    
        </ul>
    </div>
    <div id="controll">
			<a href="javascript:slide('slideShow', 'left', 2)">��</a> <a
				href="javascript:slide('slideShow', 'right', 2)">��</a>
		</div>
</div>

</div>
</div>
</body>

</html>